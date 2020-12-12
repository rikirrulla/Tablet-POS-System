package com.example.restaurant_tablet_ordering_software;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MainActivity extends AppCompatActivity {
    Spinner spinnerNoOfTable;
    ArrayList<String> no_tables = new ArrayList<String>();
    Button button;
    List<RowItem> rowItems;
    List<Table> tableList = new ArrayList<>();
    public static Table tableClass = new Table();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        SharedPreferences preferences = PreferenceManager.getDefaultSharedPreferences(this);
        boolean finish = preferences.getBoolean("finish", false);
        if (finish) {
            startActivity(new Intent(getApplicationContext(), HomeActivity.class));
            finish();
            return;
        }else{

        }

        spinnerNoOfTable = findViewById(R.id.spinnerNoOfTable);
        button = findViewById(R.id.idBtnChoseTable);
        populateTablesFromDB();


        button.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String no_tableS = spinnerNoOfTable.getSelectedItem().toString().trim();

                for (int i = 0; i < tableList.size(); i++) {
                    if(no_tableS.equals(String.valueOf(tableList.get(i).getNo_of_table()))){

                        tableClass.setTableID(tableList.get(i).getTableID());
                        tableClass.setNo_of_table(tableList.get(i).getNo_of_table());
                        tableClass.setStatus(tableList.get(i).getStatus());
                        tableClass.setPin_code(tableList.get(i).getPin_code());
                        methodO(no_tableS);

                    }
                }

            }
        });



    }

    private void methodO(final String nr) {

        StringRequest request = new StringRequest(Request.Method.POST, Connection.url+"updateStatus.php", new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {


            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(MainActivity.this, error.getMessage(), Toast.LENGTH_SHORT).show();
            }
        }) {
            @Override
            protected Map<String, String> getParams() throws AuthFailureError {
                Map<String, String> stringMap = new HashMap<String, String>();
                stringMap.put("no_of_table", nr);
                stringMap.put("status", "online");

                return stringMap;
            }
        };
        RequestQueue requestQueue = Volley.newRequestQueue(MainActivity.this);
        requestQueue.add(request);

        Intent intent = new Intent(MainActivity.this,HomeActivity.class);
        SharedPreferences sharedPreferences = PreferenceManager
                .getDefaultSharedPreferences(MainActivity.this);
        SharedPreferences.Editor editor = sharedPreferences.edit();
        editor.putString("table_ID ", tableClass.getTableID());
        editor.putString("no_of_table", tableClass.getNo_of_table());
        editor.putString("status", tableClass.getStatus());
        editor.putString("pin_code", tableClass.getPin_code());
        editor.putBoolean("finish", true);
        editor.apply();
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        //Toast.makeText(this, tableClass.getTableID(), Toast.LENGTH_SHORT).show();
        startActivity(intent);

    }

    private void populateTablesFromDB() {
        StringRequest request = new StringRequest(Request.Method.POST, Connection.url + "retrievetables.php", new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                try {

                    JSONObject jsonObject = new JSONObject(response);
                    String succes = jsonObject.getString("succes");
                    JSONArray jsonArray = jsonObject.getJSONArray("restaurant");

                    if (succes.equals("1")) {

                        for (int i = 0; i < jsonArray.length(); i++) {

                            JSONObject object = jsonArray.getJSONObject(i);
                            String table_id = object.getString("table_ID ");
                            String no_of_table = object.getString("no_of_table");
                            String status = object.getString("status");
                            String pin_code = object.getString("pin_code");
                            no_tables.add(no_of_table);

                            tableList.add(new Table(table_id,no_of_table,status,pin_code));
                        }

                    }

                    populateSpinner();

                } catch (JSONException e) {
                    Toast.makeText(getApplicationContext(), e.getMessage(), Toast.LENGTH_LONG).show();
                }
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(getApplicationContext(), error.getMessage(), Toast.LENGTH_LONG).show();
            }
        });

        RequestQueue requestQueue = Volley.newRequestQueue(this);
        requestQueue.add(request);
    }

    private void populateSpinner() {
        rowItems = new ArrayList<RowItem>();
        for (int i = 0; i < no_tables.size(); i++) {

            RowItem item = new RowItem(no_tables.get(i), R.drawable.logo3);
            rowItems.add(item);
        }


        CustomAdapter adapter = new CustomAdapter(MainActivity.this,
                R.layout.listitems_layout, R.id.title, rowItems);
        spinnerNoOfTable.setAdapter(adapter);
    }
}
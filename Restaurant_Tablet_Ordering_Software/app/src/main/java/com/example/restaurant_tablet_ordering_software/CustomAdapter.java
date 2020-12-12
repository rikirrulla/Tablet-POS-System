package com.example.restaurant_tablet_ordering_software;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.TextView;

import java.util.List;

public class CustomAdapter extends ArrayAdapter<RowItem> {

    LayoutInflater flater;

    public CustomAdapter(Activity context,int resouceId, int textviewId, List<RowItem> list){

        super(context,resouceId,textviewId, list);
        flater = context.getLayoutInflater();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        RowItem rowItem = getItem(position);

        View rowview = flater.inflate(R.layout.listitems_layout,null,true);

        TextView txtTitle = (TextView) rowview.findViewById(R.id.title);
        txtTitle.setText(rowItem.getTitle());

        ImageView imageView = (ImageView) rowview.findViewById(R.id.icon);
        imageView.setImageResource(rowItem.getImageId());

        return rowview;
    }
}

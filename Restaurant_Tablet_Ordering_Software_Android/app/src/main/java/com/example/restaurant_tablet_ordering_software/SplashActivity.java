package com.example.restaurant_tablet_ordering_software;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.Nullable;

public class SplashActivity extends Activity {
    private static int SPLASH_SCREEN = 3000;

    Animation topAnim,bottomAnim;
    ImageView image;
    TextView logo,slogan1;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_splash);

        topAnim = AnimationUtils.loadAnimation(this,R.anim.top_animation);
        bottomAnim = AnimationUtils.loadAnimation(this,R.anim.bottom_animation);

        image = findViewById(R.id.logoSpash);
        logo = findViewById(R.id.textSplash);
        slogan1 = findViewById(R.id.textSplash2);

        image.setAnimation(topAnim);
        logo.setAnimation(bottomAnim);
        slogan1.setAnimation(bottomAnim);

        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent i = new Intent(SplashActivity.this,MainActivity.class);
                startActivity(i);
                finish();
            }
        },SPLASH_SCREEN);

    }
}

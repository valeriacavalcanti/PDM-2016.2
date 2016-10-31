package br.edu.ifpb.si.pdm.suap;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private static final int AUTENTICAR = 1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Intent it = new Intent("AUTENTICACAO");
        startActivityForResult(it, AUTENTICAR);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (resultCode == RESULT_OK){
            if (requestCode == AUTENTICAR){
                Toast.makeText(this, "OK", Toast.LENGTH_SHORT).show();
            }
        }else{
            finish();
        }
    }
}

package br.edu.ifpb.si.pdm.numeros;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private Button btn1, btn2;

    public MainActivity(){
        Log.i("NUMERO", "Construtor");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Log.i("NUMERO", "OnCreate");

        this.btn1 = (Button)findViewById(R.id.btn1);
        this.btn2 = (Button) findViewById(R.id.btn2);

        this.btn1.setOnClickListener(new OnClickBotao());
        this.btn2.setOnClickListener(new OnClickBotao());

        this.btn1.setOnLongClickListener(new OnLongClickBotao());
        this.btn2.setOnLongClickListener(new OnLongClickBotao());
    }

    @Override
    protected void onStart() {
        super.onStart();

        Log.i("NUMERO", "OnStart");
    }

    @Override
    protected void onResume() {
        super.onResume();

        Log.i("NUMERO", "OnResume");
    }

    @Override
    protected void onPause() {
        super.onPause();

        Log.i("NUMERO", "OnPause");
    }

    @Override
    protected void onStop() {
        super.onStop();

        Log.i("NUMERO", "OnStop");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();

        Log.i("NUMERO", "OnDestroy");
    }

    @Override
    protected void onRestart() {
        super.onRestart();

        Log.i("NUMERO", "OnRestart");
    }

    private class OnClickBotao implements OnClickListener{

        @Override
        public void onClick(View v) {
            if (v.equals(MainActivity.this.btn1)){
                Log.i("NUMERO", "Clicou no botao 1");
            }else if (v.equals(MainActivity.this.btn2)){
                Log.i("NUMERO", "Clicou no botao 2");
            }
        }
    }

    private class OnLongClickBotao implements View.OnLongClickListener{

        @Override
        public boolean onLongClick(View v) {
            Log.i("NUMERO", "IFPB");
            return true;
        }
    }
}

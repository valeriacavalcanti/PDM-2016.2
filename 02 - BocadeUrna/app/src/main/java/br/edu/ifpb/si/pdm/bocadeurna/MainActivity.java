package br.edu.ifpb.si.pdm.bocadeurna;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    private Contador contador;
    private TextView textView;

    public MainActivity(){
        this.contador = new Contador();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.textView = (TextView) findViewById(R.id.tvNumero);
    }

    public void onClickIncrementar(View view){
        this.contador.inc();
        Log.i("BU", "Incrementou - " + this.contador.get());
        this.textView.setText(Integer.toString(this.contador.get()));
    }

    public void onClickDecrementar(View view){
        this.contador.dec();
        Log.i("BU", "Decrementou - " + this.contador.get());
        this.textView.setText(Integer.toString(this.contador.get()));
    }
}

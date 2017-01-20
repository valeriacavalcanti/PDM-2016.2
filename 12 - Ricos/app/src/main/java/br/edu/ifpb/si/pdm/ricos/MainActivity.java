package br.edu.ifpb.si.pdm.ricos;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

public class MainActivity extends AppCompatActivity {
    private TextView tvNumeros;
    private Button btSorteio;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.tvNumeros = (TextView) findViewById(R.id.tvNumeros);
        this.btSorteio = (Button) findViewById(R.id.btSorteio);

        this.btSorteio.setOnClickListener(new OnClick());
    }

    private class OnClick implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            Set<Integer> sorteio = new TreeSet<Integer>();
            Random r = new Random();

            while (sorteio.size() < 6){
                sorteio.add(r.nextInt(60) + 1);
            }
            MainActivity.this.tvNumeros.setText(sorteio.toString());
        }
    }
}

package br.edu.ifpb.si.pdm.jogodoarrocha;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private TextView tvMenor, tvMaior;
    private EditText etChute;
    private Button btJogar;
    private Arrocha arrocha;

    public MainActivity(){
        this.arrocha = new Arrocha();
        Log.i("ARROCHA", Integer.toString(this.arrocha.getNumero()));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.tvMenor = (TextView) findViewById(R.id.tvMenor);
        this.tvMaior = (TextView) findViewById(R.id.tvMaior);
        this.etChute = (EditText) findViewById(R.id.etChute);
        this.btJogar = (Button) findViewById(R.id.btJogar);

        this.btJogar.setOnClickListener(new OnClick());
    }

    private class OnClick implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            int num = Integer.parseInt(MainActivity.this.etChute.getText().toString());
            MainActivity.this.arrocha.jogar(num);

            if (MainActivity.this.arrocha.ativo()) {
                MainActivity.this.tvMenor.setText(Integer.toString(MainActivity.this.arrocha.getMenor()));
                MainActivity.this.tvMaior.setText(Integer.toString(MainActivity.this.arrocha.getMaior()));
            }else {
                MainActivity.this.btJogar.setEnabled(false);
                String msg = MainActivity.this.arrocha.getStatus();
                Toast.makeText(MainActivity.this, msg, Toast.LENGTH_SHORT).show();
            }
        }
    }
}

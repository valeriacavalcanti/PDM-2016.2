package br.edu.ifpb.si.pdm.aparecida;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    private EditText etNome;
    private DatePicker dpAniversario;
    private Button btSalvar;
    private PessoaDAO dao;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.etNome = (EditText) findViewById(R.id.etNome);
        this.dpAniversario = (DatePicker) findViewById(R.id.dpAniversario);
        this.dpAniversario.setCalendarViewShown(false);

        this.btSalvar = (Button) findViewById(R.id.btSalvar);

        this.btSalvar.setOnClickListener(new OnClick());

        this.dao = new PessoaDAO(this);
    }

    private class OnClick implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            String nome = MainActivity.this.etNome.getText().toString();
            int dia = MainActivity.this.dpAniversario.getDayOfMonth();
            int mes = MainActivity.this.dpAniversario.getMonth();
            int ano = MainActivity.this.dpAniversario.getYear();
            Pessoa p = new Pessoa(nome, dia, mes, ano);
            MainActivity.this.dao.insert(p);

            Log.i("IFPB", MainActivity.this.dao.get().toString());
        }
    }
}

package br.edu.ifpb.si.pdm.agenda;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import java.text.Normalizer;

public class FormularioActivity extends AppCompatActivity {
    private EditText etNome, etEmail, etTelefone;
    private Button btnSalvar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_formulario);

        this.btnSalvar = (Button) findViewById(R.id.btnFrmSalvar);
        this.btnSalvar.setOnClickListener(new OnClickBotao());

        this.etNome = (EditText) findViewById(R.id.etFrmNome);
        this.etEmail = (EditText) findViewById(R.id.etFrmEmail);
        this.etTelefone = (EditText) findViewById(R.id.etFrmTelefone);
    }

    private class OnClickBotao implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            String nome = FormularioActivity.this.etNome.getText().toString();
            String email = FormularioActivity.this.etEmail.getText().toString();
            String telefone = FormularioActivity.this.etTelefone.getText().toString();

            Pessoa p = new Pessoa(nome, email,telefone);

            Intent it = new Intent();
            it.putExtra("PESSOA", p);
            setResult(RESULT_OK, it);
            finish();
        }
    }
}

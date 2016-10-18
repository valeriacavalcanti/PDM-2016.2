package br.edu.ifpb.si.pdm.windows;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class PalavraActivity extends AppCompatActivity {
    private EditText etPalavra;
    private Button btnSalvar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_palavra);

        this.btnSalvar = (Button) findViewById(R.id.btnPalavraSalvar);
        this.btnSalvar.setOnClickListener(new OnClickBotao());

        this.etPalavra = (EditText) findViewById(R.id.etPalavraNome);
    }

    private class OnClickBotao implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            String texto = PalavraActivity.this.etPalavra.getText().toString();
            Log.i("WINDOWS", texto);

            Intent it = new Intent();
            it.putExtra("palavra", texto);
            setResult(RESULT_OK, it);
            finish();
        }
    }
}

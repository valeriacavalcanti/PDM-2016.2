package br.edu.ifpb.si.pdm.agenda;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private static final int OBTER = 1;
    private Button btnObter;
    private TextView tvNome, tvEmail, tvTelefone;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.btnObter = (Button) findViewById(R.id.btnMainLer);
        this.btnObter.setOnClickListener(new OnClickBotao());

        this.tvNome = (TextView) findViewById(R.id.tvMainNome);
        this.tvEmail = (TextView) findViewById(R.id.tvMainEmail);
        this.tvTelefone = (TextView) findViewById(R.id.tvMainTelefone);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (resultCode == RESULT_OK){
            if (requestCode == OBTER){
                Pessoa p = (Pessoa) data.getSerializableExtra("PESSOA");
                this.tvNome.setText(p.getNome());
                this.tvEmail.setText(p.getEmail());
                this.tvTelefone.setText(p.getTelefone());
                Toast.makeText(MainActivity.this, "Ok!", Toast.LENGTH_SHORT).show();
            }
        }
    }

    private class OnClickBotao implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            Intent it = new Intent(MainActivity.this, FormularioActivity.class);
            startActivityForResult(it, OBTER);
        }
    }
}

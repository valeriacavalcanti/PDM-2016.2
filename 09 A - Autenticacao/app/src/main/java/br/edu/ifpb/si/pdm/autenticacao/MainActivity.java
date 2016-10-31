package br.edu.ifpb.si.pdm.autenticacao;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private EditText etLogin, etSenha;
    private Button btOk, btCancela;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.etLogin = (EditText) findViewById(R.id.etLogin);
        this.etSenha = (EditText) findViewById(R.id.etSenha);
        this.btOk = (Button) findViewById(R.id.btnOk);
        this.btCancela = (Button) findViewById(R.id.btnCancela);

        this.btOk.setOnClickListener(new OnClickBotao());
        this.btCancela.setOnClickListener(new OnClickBotao());
    }

    private class OnClickBotao implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            if (v.equals(MainActivity.this.btOk)){
                String login = MainActivity.this.etLogin.getText().toString();
                String senha = MainActivity.this.etSenha.getText().toString();

                if (login.equals("ifpb") && senha.equals("ifpb")){
                    setResult(RESULT_OK);
                    finish();
                }else{
                    Toast.makeText(MainActivity.this, "Login/Senha Inválidos", Toast.LENGTH_SHORT).show();
                }
            }else{
                finish();
            }
        }
    }
}

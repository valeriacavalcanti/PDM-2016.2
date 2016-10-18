package br.edu.ifpb.si.pdm.janela;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.support.annotation.MainThread;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private Button btn1, btn2, btn3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.btn1 = (Button)findViewById(R.id.btn1);
        this.btn2 = (Button)findViewById(R.id.btn2);
        this.btn3 = (Button)findViewById(R.id.btn3);

        this.btn1.setOnClickListener(new OnClickBotao());
        this.btn2.setOnClickListener(new OnClickBotao());
        this.btn3.setOnClickListener(new OnClickBotao());
    }

    private class OnClickBotao implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            if (v.equals(MainActivity.this.btn1)){
                Log.i("JANELA", "Botao 1");
                AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                builder.setTitle("Atenção!");
                builder.setMessage("Clicou no botão 1");
                builder.setIcon(R.mipmap.ic_launcher);
                builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Log.i("JANELA", "Clicou em Ok");
                    }
                });
                builder.create().show();
            }else if (v.equals(MainActivity.this.btn2)){
                Log.i("JANELA", "Botao 2");
                final EditText et = new EditText(MainActivity.this);

                AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                builder.setTitle("Atenção!");
                builder.setMessage("Clicou no botão 1");
                builder.setIcon(R.mipmap.ic_launcher);
                builder.setView(et);

                builder.setPositiveButton("Ok", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        Log.i("JANELA", "Clicou em Ok");
                        Toast.makeText(MainActivity.this, et.getText(), Toast.LENGTH_SHORT).show();
                    }
                });
                builder.create().show();
            }else{
                Log.i("JANELA", "Botao 2");
            }

            Toast.makeText(MainActivity.this, "Clicou", Toast.LENGTH_SHORT).show();
        }
    }
}

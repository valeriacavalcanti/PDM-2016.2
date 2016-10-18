package br.edu.ifpb.si.pdm.windows;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private Button btnSobre, btnPalavra;
    private static final int PALAVRA = 1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.btnSobre = (Button) findViewById(R.id.btnMainSobre);
        this.btnPalavra = (Button) findViewById(R.id.btnMainPalavra);

        this.btnSobre.setOnClickListener(new OnClickBotao());
        this.btnPalavra.setOnClickListener(new OnClickBotao());
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (resultCode == RESULT_OK){
            if (requestCode == PALAVRA){
                Log.i("WINDOWS", "Resposta: " + data.getStringExtra("palavra"));
            }
        }
    }

    private class OnClickBotao implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            if (v.equals(MainActivity.this.btnSobre)) {
                Log.i("WINDOWS", "Clicou no botão sobre.");
                Intent it = new Intent(MainActivity.this, SobreActivity.class);
                startActivity(it);
            }else{
                Log.i("WINDOWS", "Clicou no botão palavra.");
                Intent it = new Intent(MainActivity.this, PalavraActivity.class);
                startActivityForResult(it, PALAVRA);
            }
        }
    }
}

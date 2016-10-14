package br.edu.ifpb.si.pdm.tagarela;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    private Button btnSim, btnNao;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.btnSim = (Button) findViewById(R.id.btnSim);
        this.btnNao = (Button) findViewById(R.id.btnNao);

        this.btnSim.setOnClickListener(new OnClickBotao());

        this.btnNao.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }
        });
    }

    private class OnClickBotao implements View.OnClickListener{
        @Override
        public void onClick(View v) {

        }
    }
}

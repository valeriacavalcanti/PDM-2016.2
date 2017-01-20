package br.edu.ifpb.si.pdm.carregador;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private ListView listView;
    private List<String> status;
    private CarregadorReceiver receiver;
    private IntentFilter itf;

    public MainActivity(){
        this.status = new ArrayList<String>();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.listView = (ListView) findViewById(R.id.listView);

        ArrayAdapter<String> adapter = new ArrayAdapter<String>
                (this, android.R.layout.simple_list_item_1, this.status);

        this.listView.setAdapter(adapter);

        this.receiver = new CarregadorReceiver();
        this.itf = new IntentFilter();
        this.itf.addAction(Intent.ACTION_POWER_CONNECTED);
        this.itf.addAction(Intent.ACTION_POWER_DISCONNECTED);
    }

    @Override
    protected void onResume() {
        super.onResume();
        registerReceiver(this.receiver, this.itf);
    }

    @Override
    protected void onPause() {
        super.onPause();
        unregisterReceiver(this.receiver);
    }

    private class CarregadorReceiver extends BroadcastReceiver{
        @Override
        public void onReceive(Context context, Intent intent) {
            switch (intent.getAction()){
                case Intent.ACTION_POWER_CONNECTED:
                    MainActivity.this.status.add("Carregando ...");
                    break;
                case Intent.ACTION_POWER_DISCONNECTED:
                    MainActivity.this.status.add("Desconectou carregador");
                    break;
                default:
                    MainActivity.this.status.add("Não sei!");
            }

            ((ArrayAdapter)MainActivity.this.listView.getAdapter()).notifyDataSetChanged();
        }
    }
}

package br.edu.ifpb.si.pdm.food;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private EditText editText;
    private Button button;
    private ListView listView;
    private List<String> lista;

    public MainActivity(){
        this.lista = new ArrayList<String>();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.editText = (EditText) findViewById(R.id.etLugar);
        this.button = (Button) findViewById(R.id.btnAdd);
        this.listView = (ListView) findViewById(R.id.lista);

        this.button.setOnClickListener(new OnClickBotao());

        ArrayAdapter<String> adapter = new ArrayAdapter<String>(this, android.R.layout.simple_list_item_1, this.lista);
        this.listView.setAdapter(adapter);

        this.listView.setOnItemClickListener(new OnClickLista());
        this.listView.setOnItemLongClickListener(new OnLongClickLista());
    }

    private void atualizaLista(){
        ((ArrayAdapter)this.listView.getAdapter()).notifyDataSetChanged();
    }

    private class OnClickBotao implements View.OnClickListener{
        @Override
        public void onClick(View v) {
            String lugar = MainActivity.this.editText.getText().toString();
            MainActivity.this.lista.add(lugar);
            MainActivity.this.editText.setText("");
            Log.i("AFOOD", MainActivity.this.lista.toString());
            MainActivity.this.atualizaLista();
        }
    }

    private class OnClickLista implements AdapterView.OnItemClickListener{
        @Override
        public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
            String lugar = MainActivity.this.lista.get(position);
            Toast.makeText(MainActivity.this, lugar, Toast.LENGTH_SHORT).show();
        }
    }

    private class OnLongClickLista implements AdapterView.OnItemLongClickListener{
        @Override
        public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
            MainActivity.this.lista.remove(position);
            MainActivity.this.atualizaLista();
            return true;
        }
    }
}

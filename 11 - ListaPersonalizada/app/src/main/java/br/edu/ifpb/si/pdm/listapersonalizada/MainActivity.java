package br.edu.ifpb.si.pdm.listapersonalizada;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private ListView listView;
    private List<String> dias;

    public MainActivity(){
        dias = new ArrayList<String>();
        dias.add("Segunda");
        dias.add("Terça");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        this.listView = (ListView) findViewById(R.id.listViewActivity);
        DiaAdapter adapter = new DiaAdapter(this, this.dias);
        this.listView.setAdapter(adapter);
    }
}

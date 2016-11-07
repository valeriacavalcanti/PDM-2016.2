package br.edu.ifpb.si.pdm.listapersonalizada;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.List;

/**
 * Created by admin on 07/11/16.
 */
public class DiaAdapter extends BaseAdapter
{
    private Context context;
    private List<String> lista;

    public DiaAdapter(Context context, List<String> lista){
        this.context = context;
        this.lista = lista;
    }

    @Override
    public int getCount() {
        return lista.size();
    }

    @Override
    public Object getItem(int position) {
        return lista.get(position);
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        if (convertView == null){
            LayoutInflater li = (LayoutInflater) this.context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = li.inflate(R.layout.celula_layout, null);
        }

        TextView tv = (TextView) convertView.findViewById(R.id.idCelulaTexto);
        tv.setText(this.lista.get(position));

        convertView.setMinimumHeight(100);

        return convertView;
    }
}

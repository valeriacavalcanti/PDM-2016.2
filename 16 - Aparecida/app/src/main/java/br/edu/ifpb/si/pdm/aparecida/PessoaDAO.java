package br.edu.ifpb.si.pdm.aparecida;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by admin on 27/01/17.
 */
public class PessoaDAO {
    private SQLiteDatabase banco;

    public PessoaDAO(Context context){
        this.banco = new BancoHelper(context).getWritableDatabase();
    }

    public void insert(Pessoa p){
        ContentValues cv = new ContentValues();
        cv.put("nome", p.getNome());
        cv.put("aniversario", p.getAniversarioLong());
        this.banco.insert("pessoa", null, cv);
    }

    public List<Pessoa> get(){
        List<Pessoa> lista = new ArrayList<Pessoa>();
        String colunas[] = {"codigo", "nome", "aniversario"};
        Cursor c = this.banco.query("pessoa", colunas, null, null, null, null, "nome");
        if (c.getCount() > 0) {
            c.moveToFirst();
            do {
                int codigo = c.getInt(c.getColumnIndex("codigo"));
                String nome = c.getString(c.getColumnIndex("nome"));
                long aniversario = c.getLong(c.getColumnIndex("aniversario"));
                lista.add(new Pessoa(codigo, nome, aniversario));
            } while (c.moveToNext());
        }
        return lista;
    }
}

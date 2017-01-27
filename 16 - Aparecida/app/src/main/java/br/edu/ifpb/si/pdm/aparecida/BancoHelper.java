package br.edu.ifpb.si.pdm.aparecida;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/**
 * Created by admin on 27/01/17.
 */
public class BancoHelper extends SQLiteOpenHelper
{
    public BancoHelper(Context context) {
        super(context, "aparecidadb", null, 1);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE IF NOT EXISTS pessoa(" +
                        "codigo INTEGER PRIMARY KEY AUTOINCREMENT, " +
                        "nome VARCHAR(100), " +
                        "aniversario DATETIME);");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("drop table pessoa");
        this.onCreate(db);
    }
}

package br.edu.ifpb.si.pdm.aparecida;

import java.util.Calendar;

/**
 * Created by admin on 27/01/17.
 */
public class Pessoa {
    private int codigo;
    private String nome;
    private Calendar aniversario;

    public Pessoa(String nome, int dia, int mes, int ano){
        this.nome = nome;
        this.aniversario = Calendar.getInstance();
        this.aniversario.set(ano, mes, dia);
    }

    public Pessoa(int codigo, String nome, long aniversario){
        this.codigo = codigo;
        this.nome = nome;
        this.aniversario = Calendar.getInstance();
        this.aniversario.setTimeInMillis(aniversario);
    }

    public String getNome() {
        return nome;
    }

    public String getAniversarioSt(){
        return String.format("%d/%d/%d", this.aniversario.get(Calendar.DAY_OF_MONTH),
                                         this.aniversario.get(Calendar.MONTH) + 1,
                                         this.aniversario.get(Calendar.YEAR));
    }

    public long getAniversarioLong(){
        return this.aniversario.getTimeInMillis();
    }

    @Override
    public String toString() {
        return String.format("%s - %s", this.nome, this.getAniversarioSt());
    }
}

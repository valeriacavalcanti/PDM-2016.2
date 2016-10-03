package br.edu.ifpb.si.pdm.bocadeurna;

/**
 * Created by admin on 03/10/16.
 */
public class Contador {
    private int valor;

    public Contador(){
        this.valor = 0;
    }

    public void inc(){
        ++this.valor;
    }

    public void dec(){
        --this.valor;
    }

    public int get(){
        return this.valor;
    }
}

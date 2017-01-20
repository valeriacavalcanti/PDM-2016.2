package br.edu.ifpb.si.pdm.jogodoarrocha;

import java.util.Random;

/**
 * Created by admin on 16/01/17.
 */
public class Arrocha {
    private int menor, maior, numero;
    private Jogo status;

    public Arrocha(){
        this.menor = 1;
        this.maior = 100;
        this.numero = (new Random()).nextInt(98) + 2;
        this.status = Jogo.CONTINUA;
    }

    private boolean arrochado(){
        return this.menor + 2 == this.maior;
    }

    public void jogar(int chute){
        if (chute == this.numero) this.status = Jogo.JOGADOR_VENCEU;
        if (chute <= this.menor || chute >= this.maior)
            this.status = Jogo.NUMERO_INVALIDO;
        if (chute < this.numero) this.menor = chute;
        else this.maior = chute;
        if (this.arrochado())
            this.status = Jogo.NUMERO_ARROCHADO;
    }

    public boolean ativo(){
        return this.status == Jogo.CONTINUA;
    }

    public String getStatus(){
        switch (this.status){
            case JOGADOR_VENCEU: return "Venceu";
            case NUMERO_ARROCHADO: return "Arrochado";
            case NUMERO_INVALIDO: return "Número Inválido";
            case CONTINUA: return "Jogo aberto";
        }
        throw new RuntimeException("Não sei.");
    }

    public int getMenor() {
        return menor;
    }

    public int getMaior() {
        return maior;
    }

    public int getNumero() {
        return numero;
    }
}

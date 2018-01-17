package it.unitn.progettoweb.Objects;

import java.util.ArrayList;

public class Articolo {
    private int idArticolo;
    private String titolo;
    private String descrizione;
    private int idVenditore;
    private float prezzo;
    private String categoria;
    private float voto;
    private ArrayList<ImmagineArticolo> immagini;

    /**
     * Costruttore
     * @param idArticolo
     * @param titolo
     * @param idVenditore
     * @param prezzo
     * @param categoria
     * @param voto
     */

    public Articolo(int idArticolo, String titolo, String descrizione, int idVenditore, float prezzo, String categoria, float voto, ArrayList<ImmagineArticolo> immagini){
        this.idArticolo = idArticolo;
        this.titolo = titolo;
        this.descrizione = descrizione;
        this.idVenditore = idVenditore;
        this.prezzo = prezzo;
        this.categoria = categoria;
        this.voto = voto;
        this.immagini = immagini;
    }
    public String getCategoria() {
        return categoria;
    }

    public float getPrezzo() {
        return prezzo;
    }

    public float getVoto() {
        return voto;
    }

    public int getIdArticolo() {
        return idArticolo;
    }

    public int getIdVenditore() {
        return idVenditore;
    }

    public String getTitolo() {
        return titolo;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public void setIdArticolo(int idArticolo) {
        this.idArticolo = idArticolo;
    }

    public void setIdVenditore(int idVenditore) {
        this.idVenditore = idVenditore;
    }

    public void setPrezzo(float prezzo) {
        this.prezzo = prezzo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
    }

    public void setVoto(float voto) {
        this.voto = voto;
    }

    public ArrayList<ImmagineArticolo> getImmagini() {
        return immagini;
    }

    public void setImmagini(ArrayList<ImmagineArticolo> immagini) {
        this.immagini = immagini;
    }

    public String getDescrizione(){return descrizione;}
    public void setDescrizione(String descrizione){this.descrizione = descrizione;}
}

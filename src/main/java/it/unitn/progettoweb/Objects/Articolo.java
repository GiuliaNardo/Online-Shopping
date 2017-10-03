package it.unitn.progettoweb.Objects;

public class Articolo {
    private int idArticolo;
    private String titolo;
    private int idVenditore;
    private float prezzo;
    private float categoria;
    private float voto;

    /**
     * Costruttore
     * @param idArticolo
     * @param titolo
     * @param idVenditore
     * @param prezzo
     * @param categoria
     * @param voto
     */
    public Articolo(int idArticolo, String titolo, int idVenditore, float prezzo, float categoria, float voto){
        this.idArticolo = idArticolo;
        this.titolo = titolo;
        this.idVenditore = idVenditore;
        this.prezzo = prezzo;
        this.categoria = categoria;
        this.voto = voto;
    }
    //set e get
    public float getCategoria() {
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

    public void setCategoria(float categoria) {
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
}

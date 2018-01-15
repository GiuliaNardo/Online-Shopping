package it.unitn.progettoweb.Objects;

public class RecensioneArticolo {
    private int idRecArt;
    private Utente utente;
    private int voto;
    private String testo;
    private int idArticolo;

    /**
     *
     * @param idRecArt
     * @param utente
     * @param voto
     * @param testo
     * @param idArticolo
     */
    public RecensioneArticolo(int idRecArt, Utente utente, int voto, String testo, int idArticolo) {
        this.idRecArt = idRecArt;
        this.utente = utente;
        this.voto = voto;
        this.testo = testo;
        this.idArticolo = idArticolo;
    }

    public int getIdRecArt() {
        return idRecArt;
    }

    public void setIdRecArt(int idRecArt) {
        this.idRecArt = idRecArt;
    }

    public Utente getUtente() {
        return utente;
    }

    public void setUtente(Utente utente) {
        this.utente = utente;
    }

    public int getVoto() {
        return voto;
    }

    public void setVoto(int voto) {
        this.voto = voto;
    }

    public String getTesto() {
        return testo;
    }

    public void setTesto(String testo) {
        this.testo = testo;
    }

    public int getIdArticolo() {
        return idArticolo;
    }

    public void setIdArticolo(int idArticolo) {
        this.idArticolo = idArticolo;
    }
}

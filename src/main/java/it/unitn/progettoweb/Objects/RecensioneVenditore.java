package it.unitn.progettoweb.Objects;

public class RecensioneVenditore {
    private int idRecVen;
    private Utente utente;
    private int voto;
    private String testo;
    private int idVenditore;

    /**
     *
     * @param idRecVen
     * @param utente
     * @param voto
     * @param testo
     * @param idVenditore
     */
    public RecensioneVenditore(int idRecVen, Utente utente, int voto, String testo, int idVenditore) {
        this.idRecVen = idRecVen;
        this.utente = utente;
        this.voto = voto;
        this.testo = testo;
        this.idVenditore = idVenditore;
    }

    public RecensioneVenditore(Utente utente, int voto, String testo, int idVenditore) {
        this.idRecVen = idRecVen;
        this.utente = utente;
        this.voto = voto;
        this.testo = testo;
        this.idVenditore = idVenditore;
    }

    public int getIdRecVen() {
        return idRecVen;
    }

    public void setIdRecVen(int idRecVen) {
        this.idRecVen = idRecVen;
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

    public int getIdVenditore() {
        return idVenditore;
    }

    public void setIdVenditore(int idVenditore) {
        this.idVenditore = idVenditore;
    }
}

package it.unitn.progettoweb.Objects;

public class RecensioneVenditore {
    private int idRecVen;
    private int idUtente;
    private int voto;
    private String testo;
    private enum visualizzato{
        TRUE, FALSE
    }
    private int idVenditore;

    /**
     *
     * @param idRecVen
     * @param idUtente
     * @param voto
     * @param testo
     * @param idVenditore
     */
    public RecensioneVenditore(int idRecVen, int idUtente, int voto, String testo, int idVenditore) {
        this.idRecVen = idRecVen;
        this.idUtente = idUtente;
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

    public int getIdUtente() {
        return idUtente;
    }

    public void setIdUtente(int idUtente) {
        this.idUtente = idUtente;
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

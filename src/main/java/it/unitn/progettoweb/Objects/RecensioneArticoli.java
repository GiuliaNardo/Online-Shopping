package it.unitn.progettoweb.Objects;

public class RecensioneArticoli {
    private int idRecArt;
    private int idUtente;
    private int voto;
    private String testo;
    private enum visualizzato{
        TRUE, FALSE
    }
    private int idArticolo;

    /**
     *
     * @param idRecArt
     * @param idUtente
     * @param voto
     * @param testo
     * @param idArticolo
     */
    public RecensioneArticoli(int idRecArt, int idUtente, int voto, String testo, int idArticolo) {
        this.idRecArt = idRecArt;
        this.idUtente = idUtente;
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

    public int getIdArticolo() {
        return idArticolo;
    }

    public void setIdArticolo(int idArticolo) {
        this.idArticolo = idArticolo;
    }
}

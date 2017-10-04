package it.unitn.progettoweb.Objects;

public class ImmaginiArticoli {
    private int idImmagine;
    private String percorso;
    private int idArticolo;

    /**
     *
     * @param idImmagine
     * @param percorso
     * @param idArticolo
     */
    public ImmaginiArticoli(int idImmagine, String percorso, int idArticolo) {
        this.idImmagine = idImmagine;
        this.percorso = percorso;
        this.idArticolo = idArticolo;
    }

    public int getIdImmagine() {
        return idImmagine;
    }

    public void setIdImmagine(int idImmagine) {
        this.idImmagine = idImmagine;
    }

    public String getPercorso() {
        return percorso;
    }

    public void setPercorso(String percorso) {
        this.percorso = percorso;
    }

    public int getIdArticolo() {
        return idArticolo;
    }

    public void setIdArticolo(int idArticolo) {
        this.idArticolo = idArticolo;
    }
}

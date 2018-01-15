package it.unitn.progettoweb.Objects;

public class ImmagineUtente {
    private int idImmagine;
    private String percorso;
    private int idUtente;

    /**
     *
     * @param idImmagine
     * @param percorso
     * @param idUtente
     */
    public ImmagineUtente(int idImmagine, String percorso, int idUtente) {
        this.idImmagine = idImmagine;
        this.percorso = percorso;
        this.idUtente = idUtente;
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

    public int getIdUtente() {
        return idUtente;
    }

    public void setIdUtente(int idUtente) {
        this.idUtente = idUtente;
    }
}

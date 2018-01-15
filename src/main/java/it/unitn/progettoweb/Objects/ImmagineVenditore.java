package it.unitn.progettoweb.Objects;

public class ImmagineVenditore {
    private int idImmagine;
    private String percorso;
    private int idVenditore;

    /**
     *
     * @param idImmagine
     * @param percorso
     * @param idVenditore
     */
    public ImmagineVenditore(int idImmagine, String percorso, int idVenditore) {
        this.idImmagine = idImmagine;
        this.percorso = percorso;
        this.idVenditore = idVenditore;
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
        return idVenditore;
    }

    public void setIdUtente(int idVenditore) {
        this.idVenditore = idVenditore;
    }
}

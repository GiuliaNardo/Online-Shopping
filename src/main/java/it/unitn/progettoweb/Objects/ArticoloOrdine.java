package it.unitn.progettoweb.Objects;

public class ArticoloOrdine {
    private int idOrdine;
    private int idArticolo;

    /**
     *
     * @param idOrdine
     * @param idArticolo
     */
    public ArticoloOrdine(int idOrdine, int idArticolo) {
        this.idOrdine = idOrdine;
        this.idArticolo = idArticolo;
    }

    public int getIdOrdine() {
        return idOrdine;
    }

    public void setIdOrdine(int idOrdine) {
        this.idOrdine = idOrdine;
    }

    public int getIdArticolo() {
        return idArticolo;
    }

    public void setIdArticolo(int idArticolo) {
        this.idArticolo = idArticolo;
    }
}

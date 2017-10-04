package it.unitn.progettoweb.Objects;

public class Ticket {
    private int idTicket;
    private String titolo;
    private int idOrdine;
    private int idArticolo;
    private int idVenditore;
    private int idUtente;
    private String testo;
    private enum stato{
        Aperto, In_Lavorazione, Chiuso_con_Successo, Annullato
    }

    /**
     *
     * @param idTicket
     * @param titolo
     * @param idOrdine
     * @param idArticolo
     * @param idVenditore
     * @param idUtente
     * @param testo
     */

    public Ticket(int idTicket, String titolo, int idOrdine, int idArticolo, int idVenditore, int idUtente, String testo) {
        this.idTicket = idTicket;
        this.titolo = titolo;
        this.idOrdine = idOrdine;
        this.idArticolo = idArticolo;
        this.idVenditore = idVenditore;
        this.idUtente = idUtente;
        this.testo = testo;
    }

    public int getIdTicket() {
        return idTicket;
    }

    public void setIdTicket(int idTicket) {
        this.idTicket = idTicket;
    }

    public String getTitolo() {
        return titolo;
    }

    public void setTitolo(String titolo) {
        this.titolo = titolo;
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

    public int getIdVenditore() {
        return idVenditore;
    }

    public void setIdVenditore(int idVenditore) {
        this.idVenditore = idVenditore;
    }

    public int getIdUtente() {
        return idUtente;
    }

    public void setIdUtente(int idUtente) {
        this.idUtente = idUtente;
    }

    public String getTesto() {
        return testo;
    }

    public void setTesto(String testo) {
        this.testo = testo;
    }
}

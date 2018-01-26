package it.unitn.progettoweb.Objects;

public class Ticket {

    private int id;
    private int idOrdine;
    private int idUtente;
    private TipoTicket tipoTicket;
    private String testo;
    private StatoTicket statoTicket;

    public Ticket(int id, int idOrdine, int idUtente, TipoTicket tipoTicket, String testo, StatoTicket statoTicket) {
        this.id = id;
        this.idOrdine = idOrdine;
        this.idUtente = idUtente;
        this.tipoTicket = tipoTicket;
        this.testo = testo;
        this.statoTicket = statoTicket;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdOrdine() {
        return idOrdine;
    }

    public void setIdOrdine(int idOrdine) {
        this.idOrdine = idOrdine;
    }

    public int getIdUtente() {
        return idUtente;
    }

    public void setIdUtente(int idUtente) {
        this.idUtente = idUtente;
    }

    public TipoTicket getTipoTicket() {
        return tipoTicket;
    }

    public void setTipoTicket(TipoTicket tipoTicket) {
        this.tipoTicket = tipoTicket;
    }

    public String getTesto() {
        return testo;
    }

    public void setTesto(String testo) {
        this.testo = testo;
    }

    public StatoTicket getStatoTicket() {
        return statoTicket;
    }

    public void setStatoTicket(StatoTicket statoTicket) {
        this.statoTicket = statoTicket;
    }
}
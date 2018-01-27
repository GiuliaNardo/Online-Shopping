package it.unitn.progettoweb.Objects;

import java.sql.Date;

public class Notifica {
    private int id;
    private int idUtente;
    private String testo;
    private String url;
    private Date date;
    private StatoNotifica stato;

    public Notifica(int id, int idUtente, String testo, String url, Date date, StatoNotifica stato) {
        this.id = id;
        this.idUtente = idUtente;
        this.testo = testo;
        this.url = url;
        this.date = date;
        this.stato = stato;
    }

    public Notifica(int idUtente, String testo, String url, Date date, StatoNotifica stato) {
        this.idUtente = idUtente;
        this.testo = testo;
        this.url = url;
        this.date = date;
        this.stato = stato;
    }

    public int getId() {
        return id;
    }

    public int getIdUtente() {
        return idUtente;
    }

    public String getTesto() {
        return testo;
    }

    public String getUrl() {
        return url;
    }

    public Date getDate() {
        return date;
    }

    public StatoNotifica getStato() {
        return stato;
    }

    public void setStato(StatoNotifica stato) { this.stato = stato;}
}

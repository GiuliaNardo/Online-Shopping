package it.unitn.progettoweb.Objects;

import java.sql.Date;

public class Session {
    private String hash;
    private Date date;
    private int idUtente;

    public Session(int idUtente, Date date, String hash ) {
        this.hash = hash;
        this.date = date;
        this.idUtente = idUtente;
    }

    public String getHash() {
        return hash;
    }

    public Date getDate() {
        return date;
    }

    public int getIdUtente() {
        return idUtente;
    }
}
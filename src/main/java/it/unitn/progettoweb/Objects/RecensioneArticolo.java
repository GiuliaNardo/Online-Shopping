package it.unitn.progettoweb.Objects;

public class RecensioneArticolo {
    private int id;
    private Utente utente;
    private int voto;
    private String testo;
    private int idArticolo;

    public RecensioneArticolo(int id, Utente utente, int voto, String testo, int idArticolo) {
        this.id = id;
        this.utente = utente;
        this.voto = voto;
        this.testo = testo;
        this.idArticolo = idArticolo;
    }

    public RecensioneArticolo(Utente utente, int voto, String testo, int idArticolo) {
        this.utente = utente;
        this.voto = voto;
        this.testo = testo;
        this.idArticolo = idArticolo;
    }

    public int getId() {
        return id;
    }

    public Utente getUtente() {
        return utente;
    }

    public void setUtente(Utente utente) {
        this.utente = utente;
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
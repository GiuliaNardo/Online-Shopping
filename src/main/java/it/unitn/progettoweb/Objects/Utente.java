package it.unitn.progettoweb.Objects;

import java.sql.Date;

public class Utente {
    private int id;
    private String userName;
    private String password;
    private String nome;
    private String cognome;
    private String email;
    private Date dataNascita;
    private TipoUtente tipo;
    private ValidazioneUtente validazioneUtente;
    private String validationhash;

    public Utente(int id, String userName, String password, String nome, String cognome, String email, Date dataNascita, TipoUtente tipo, ValidazioneUtente validazioneUtente, String validationhash) {
        this.id = id;
        this.userName = userName;
        this.password = password;
        this.nome = nome;
        this.cognome = cognome;
        this.email = email;
        this.dataNascita = dataNascita;
        this.tipo = tipo;
        this.validazioneUtente = validazioneUtente;
        this.validationhash = validationhash;
    }

    public Utente(String userName, String password, String nome, String cognome, String email, Date dataNascita, TipoUtente tipo, ValidazioneUtente validazioneUtente, String validationhash) {
        this.userName = userName;
        this.password = password;
        this.nome = nome;
        this.cognome = cognome;
        this.email = email;
        this.dataNascita = dataNascita;
        this.tipo = tipo;
        this.validazioneUtente = validazioneUtente;
        this.validationhash = validationhash;
    }

    public int getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDataNascita() {
        return dataNascita;
    }

    public void setDataNascita(Date dataNascita) {
        this.dataNascita = dataNascita;
    }

    public TipoUtente getTipo() {
        return tipo;
    }

    public ValidazioneUtente getValidazioneUtente() {
        return validazioneUtente;
    }

    public void setValidazioneUtente(ValidazioneUtente validazioneUtente) {
        this.validazioneUtente = validazioneUtente;
    }

    public String getValidationhash() {
        return validationhash;
    }
}

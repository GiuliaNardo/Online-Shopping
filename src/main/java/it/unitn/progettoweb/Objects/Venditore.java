package it.unitn.progettoweb.Objects;

public class Venditore {
    private int idVenditore;
    private int idUtente;
    private String nomeNegozio;
    private String ragioneSociale;
    private String partitaIva;
    private String iban;
    private String indirizzo;
    private double valutazione;

    /**
     *
     * @param idVenditore
     * @param idUtente
     * @param nomeNegozio
     * @param regioneSociale
     * @param partitaIva
     * @param iban
     * @param indirizzo
     * @param valutazione
     */
    public Venditore(int idVenditore, int idUtente, String nomeNegozio, String regioneSociale, String partitaIva, String iban, String indirizzo, double valutazione) {
        this.idVenditore = idVenditore;
        this.idUtente = idUtente;
        this.nomeNegozio = nomeNegozio;
        this.ragioneSociale = regioneSociale;
        this.partitaIva = partitaIva;
        this.iban = iban;
        this.indirizzo = indirizzo;
        this.valutazione = valutazione;
    }

    public int getIdVenditore() {
        return idVenditore;
    }

    public int getIdUtente() {
        return idUtente;
    }

    public String getNomeNegozio() {
        return nomeNegozio;
    }

    public String getRagioneSociale() {
        return ragioneSociale;
    }

    public String getPartitaIva() {
        return partitaIva;
    }

    public String getIban() {
        return iban;
    }

    public String getIndirizzo() {
        return indirizzo;
    }

    public double getValutazione() {
        return valutazione;
    }

    public void setIdVenditore(int idVenditore) {
        this.idVenditore = idVenditore;
    }

    public void setIdUtente(int idUtente) {
        this.idUtente = idUtente;
    }

    public void setNomeNegozio(String nomeNegozio) {
        this.nomeNegozio = nomeNegozio;
    }

    public void setRagioneSociale(String ragioneSociale) {
        this.ragioneSociale = ragioneSociale;
    }

    public void setPartitaIva(String partitaIva) {
        this.partitaIva = partitaIva;
    }

    public void setIban(String iban) {
        this.iban = iban;
    }

    public void setIndirizzo(String indirizzo) {
        this.indirizzo = indirizzo;
    }

    public void setValutazione(double valutazione) {
        this.valutazione = valutazione;
    }
}

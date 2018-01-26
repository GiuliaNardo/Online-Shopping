package it.unitn.progettoweb.Objects;
import java.sql.Date;
import java.util.ArrayList;

public class Ordine {

    private int idOrdine;
    private int idVenditore;
    private int idUtente;
    private float prezzoTot;
    private Date dataOrdine;
    private Date dataSpedizione;
    private TipoOrdine tipoOrdine;
    private boolean pagRicevuto;
    private boolean ricevuto;
    private ArrayList<Articolo> articoli = new ArrayList<>();

    public Ordine(int idOrdine, int idVenditore, int idUtente, float prezzoTot, Date dataOrdine, Date dataSpedizione, TipoOrdine tipoOrdine, boolean pagRicevuto, boolean ricevuto, ArrayList<Articolo> articoli) {
        this.idOrdine = idOrdine;
        this.idVenditore = idVenditore;
        this.idUtente = idUtente;
        this.prezzoTot = prezzoTot;
        this.dataOrdine = dataOrdine;
        this.dataSpedizione = dataSpedizione;
        this.tipoOrdine = tipoOrdine;
        this.pagRicevuto = pagRicevuto;
        this.ricevuto = ricevuto;
        this.articoli = articoli;
    }

    public Ordine(int idVenditore, int idUtente, float prezzoTot, Date dataOrdine, Date dataSpedizione, TipoOrdine tipoOrdine, boolean pagRicevuto, boolean ricevuto, ArrayList<Articolo> articoli) {
        this.idVenditore = idVenditore;
        this.idUtente = idUtente;
        this.prezzoTot = prezzoTot;
        this.dataOrdine = dataOrdine;
        this.dataSpedizione = dataSpedizione;
        this.tipoOrdine = tipoOrdine;
        this.pagRicevuto = pagRicevuto;
        this.ricevuto = ricevuto;
        this.articoli = articoli;
    }

    public int getIdOrdine() {
        return idOrdine;
    }

    public void setIdOrdine(int idOrdine) {
        this.idOrdine = idOrdine;
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

    public float getPrezzoTot() {
        return prezzoTot;
    }

    public void setPrezzoTot(float prezzoTot) {
        this.prezzoTot = prezzoTot;
    }

    public Date getDataOrdine() {
        return dataOrdine;
    }

    public void setDataOrdine(Date dataOrdine) {
        this.dataOrdine = dataOrdine;
    }

    public Date getDataSpedizione() {
        return dataSpedizione;
    }

    public void setDataSpedizione(Date dataSpedizione) {
        this.dataSpedizione = dataSpedizione;
    }

    public TipoOrdine getTipoOrdine() {
        return tipoOrdine;
    }

    public void setTipoOrdine(TipoOrdine tipoOrdine) {
        this.tipoOrdine = tipoOrdine;
    }

    public boolean getPagRicevuto() {
        return pagRicevuto;
    }

    public void setPagRicevuto(boolean pagRicevuto) {
        this.pagRicevuto = pagRicevuto;
    }

    public boolean getRicevuto() {
        return ricevuto;
    }

    public void setRicevuto(boolean ricevuto) {
        this.ricevuto = ricevuto;
    }

    public ArrayList<Articolo> getArticoli() {
        return articoli;
    }

    public void setArticoli(ArrayList<Articolo> articoli) {
        this.articoli = articoli;
    }
}

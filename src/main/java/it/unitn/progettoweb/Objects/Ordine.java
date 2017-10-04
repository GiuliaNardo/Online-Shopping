package it.unitn.progettoweb.Objects;
import java.util.Date;
public class Ordine {
//dichiarazione enum
    private enum tipoOrdine{
        spedizione,
        ritiro
    }

    private enum pagRicevuto{
        TRUE,
        FALSE
    }
    private enum ricevuto{
        TRUE,
        FALSE
    }
    
    //dichiarazione attributi classe
    private int idOrdine;
    private int idVenditore;
    private int idUtente;
    private float prezzoTot;
    private Date dataOrdine;
    private Date dataSpedizione;
    private tipoOrdine tipoOrdine;
    private pagRicevuto pagRicevuto;
    private ricevuto ricevuto;
    public Ordine(int idOrdine, int idVenditore, int idUtente, float prezzoTot, Date dataOrdine, Date dataSpedizione, tipoOrdine tipoOrdine,pagRicevuto pagRicevuto, ricevuto ricevuto){
        this.idOrdine = idOrdine;
        this.idVenditore = idVenditore;
        this.idUtente = idUtente;
        this.prezzoTot = prezzoTot;
        this.dataOrdine = dataOrdine;
        this.dataSpedizione = dataSpedizione;
        this.tipoOrdine = tipoOrdine;
        this.ricevuto = ricevuto;

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

    public Ordine.tipoOrdine getTipoOrdine() {
        return tipoOrdine;
    }

    public void setTipoOrdine(Ordine.tipoOrdine tipoOrdine) {
        this.tipoOrdine = tipoOrdine;
    }

    public Ordine.pagRicevuto getPagRicevuto() {
        return pagRicevuto;
    }

    public void setPagRicevuto(Ordine.pagRicevuto pagRicevuto) {
        this.pagRicevuto = pagRicevuto;
    }

    public Ordine.ricevuto getRicevuto() {
        return ricevuto;
    }

    public void setRicevuto(Ordine.ricevuto ricevuto) {
        this.ricevuto = ricevuto;
    }
}

package it.unitn.progettoweb.Objects;

public class AdvancedSearchParameters {
    private String testo = null;
    private float startPrice = -10;
    private float endPrice = -10;
    private QueryOrder queryOrder = QueryOrder.DESC;
    private int minReview = -10;
    private Categoria categoria = null;

    public AdvancedSearchParameters() {

    }

    public String getTesto() {
        return testo;
    }

    public void setTesto(String testo) {
        this.testo = testo;
    }

    public float getStartPrice() {
        return startPrice;
    }

    public void setStartPrice(float startPrice) {
        this.startPrice = startPrice;
    }

    public float getEndPrice() {
        return endPrice;
    }

    public void setEndPrice(float endPrice) {
        this.endPrice = endPrice;
    }

    public QueryOrder getQueryOrder() {
        return queryOrder;
    }

    public void setQueryOrder(QueryOrder queryOrder) {
        this.queryOrder = queryOrder;
    }

    public int getMinReview() {
        return minReview;
    }

    public void setMinReview(int minReview) {
        this.minReview = minReview;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
}

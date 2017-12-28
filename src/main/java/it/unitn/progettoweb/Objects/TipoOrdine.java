package it.unitn.progettoweb.Objects;

public enum TipoOrdine {
        SPEDIZIONE,RITIRO;
    @Override
    public String toString() {
        String result = "";
        switch (this) {
            case SPEDIZIONE:
                result = "spedizione";
                break;
            case RITIRO:
                result = "ritiro";
        }
        return result;
    }
}

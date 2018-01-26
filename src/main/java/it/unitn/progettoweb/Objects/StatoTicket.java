package it.unitn.progettoweb.Objects;

public enum StatoTicket {
    APERTO,LAVORAZIONE,CHIUSO,ANNULATO;
    @Override
    public String toString() {
        String result = "";
        switch (this) {
            case APERTO:
                result = "Aperto";
                break;
            case LAVORAZIONE:
                result = "Lavorazione";
                break;
            case CHIUSO:
                result = "Chiuso";
                break;
            case ANNULATO:
                result = "Annullato";
                break;
        }
        return result;
    }
}

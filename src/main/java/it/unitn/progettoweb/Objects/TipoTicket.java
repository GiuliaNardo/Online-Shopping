package it.unitn.progettoweb.Objects;

public enum TipoTicket {
    RIMBORSO,RITARDO,DANNEGGIATO,ALTRO;

    @Override
    public String toString() {
        String result = "";
        switch (this) {
            case RIMBORSO:
                result = "Rimborso";
                break;
            case RITARDO:
                result = "Ritardo";
                break;
            case DANNEGGIATO:
                result = "Danneggiato";
                break;
            case ALTRO:
                result = "Altro";
                break;
        }
        return result;
    }
}

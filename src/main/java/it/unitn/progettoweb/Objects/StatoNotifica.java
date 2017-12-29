package it.unitn.progettoweb.Objects;

public enum StatoNotifica {
    NUOVA,LETTA;
    @Override
    public String toString() {
        String result = "";
        switch (this) {
            case NUOVA:
                result = "Nuova";
                break;
            case LETTA:
                result = "Letta";
        }
        return result;
    }
}

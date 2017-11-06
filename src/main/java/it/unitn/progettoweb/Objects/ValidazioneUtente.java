package it.unitn.progettoweb.Objects;

public enum ValidazioneUtente {
    TRUE,FALSE,ERROR;
    @Override
    public String toString() {
        String result = "";
        switch (this) {
            case TRUE:
                result = "true";
                break;
            case FALSE:
                result = "false";
                break;
            case ERROR:
                result = "error";
                break;
        }
        return result;
    }
}

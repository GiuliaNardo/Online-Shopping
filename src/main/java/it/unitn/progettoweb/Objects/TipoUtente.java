package it.unitn.progettoweb.Objects;

public enum TipoUtente {
    USER,SELLER,ADMIN,ERROR;

    @Override
    public String toString() {
        String result = "";
        switch (this) {
            case USER:
                result = "User";
                break;
            case SELLER:
                result = "Seller";
                break;
            case ADMIN:
                result = "Admin";
                break;
            case ERROR:
                result = "Error";
                break;
        }
        return result;
    }
}

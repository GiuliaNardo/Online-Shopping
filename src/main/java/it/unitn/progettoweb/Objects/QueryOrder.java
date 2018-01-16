package it.unitn.progettoweb.Objects;

public enum QueryOrder {
    ASC,DESC;
    @Override
    public String toString() {
        String result = "";
        switch (this) {
            case ASC:
                result = "ASC";
                break;
            case DESC:
                result = "DESC";
        }
        return result;
    }
}

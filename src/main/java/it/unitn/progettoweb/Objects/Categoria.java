package it.unitn.progettoweb.Objects;

public class Categoria {
    private String nome;
    private String descrizione;

    /**
     *
     * @param nome
     * @param descrizione
     */
    public Categoria(String nome, String descrizione) {
        this.nome = nome;
        this.descrizione = descrizione;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescrizione() {
        return descrizione;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }
}

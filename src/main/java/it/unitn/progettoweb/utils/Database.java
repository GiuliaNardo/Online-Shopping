package it.unitn.progettoweb.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import it.unitn.progettoweb.Objects.*;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class Database {
    private Connection connection = null;

    /***
     * Costruttore del database che inizializza il driver JDBC per connettersi al DB
     */
    public Database() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            /*connection = DriverManager
                    .getConnection("jdbc:mysql://databaseweb:3306/progettoweb?"
                            + "user=userSO4&password=kvplmmooeUJyFN3m");*/
            connection = DriverManager
                    .getConnection("jdbc:mysql://localhost/progettoweb?"
                            + "user=root");

        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /***
     * Restituisce l'utente con l'id passato nell'argomento.
     * @param userId Id dell'utente da cercare
     * @return Utente ricercato, null se non viene trovato.
     */

    public Utente getUtente(int userId) {
        Utente utente = null;
        ResultSet resultSet;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM utente WHERE IdUtente = ?;");
            preparedStatement.setInt(1, userId);
            resultSet = preparedStatement.executeQuery();
            String sql2 = "SELECT * FROM ImmaginiUtente WHERE IdUtente = ?";
            PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
            ResultSet resultSet2;

            while (resultSet.next()) {
                int id = resultSet.getInt("IdUtente");
                preparedStatement2.setInt(1, id);
                resultSet2 = preparedStatement2.executeQuery();
                ImmagineUtente immagineUtente = null;
                if(resultSet2.next()) {
                    int idImmagine = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immagineUtente = new ImmagineUtente(idImmagine,path,id);
                }
                String userName = resultSet.getString("UserName");
                String password = resultSet.getString("Password");
                String nome = resultSet.getString("Nome");
                String cognome = resultSet.getString("Cognome");
                String email = resultSet.getString("Email");
                java.sql.Date dataNascita = resultSet.getDate("DataNascita");
                String tipoString = resultSet.getString("Tipo");
                TipoUtente tipo = TipoUtente.ERROR;
                if (tipoString.equals("User")) {
                    tipo = TipoUtente.USER;
                } else if (tipoString.equals("Administrator")) {
                    tipo = TipoUtente.ADMIN;
                } else if (tipoString.equals("Seller")) {
                    tipo = TipoUtente.SELLER;
                }

                String validazioneString = resultSet.getString("Validato");
                ValidazioneUtente validazioneUtente = ValidazioneUtente.ERROR;
                if(validazioneString.equals("true")) {
                    validazioneUtente = ValidazioneUtente.TRUE;
                } else if(validazioneString.equals("false")) {
                    validazioneUtente = ValidazioneUtente.FALSE;
                }

                String validationhash = resultSet.getString("validationhash");

                utente = new Utente(id, userName, password, nome, cognome, email, dataNascita, tipo, validazioneUtente, validationhash, immagineUtente);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utente;
    }

    /**
     * restituisce un articolo in base al suo id
     * @param idArt id dell'articolo da cercate
     * @return Articolo
     */
    public Articolo getArticolo(int idArt){
        Articolo articolo = null;
        ResultSet resultSet;
        try{
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT  * from articolo where idArticolo = ?");
            preparedStatement.setInt(1, idArt);
            resultSet = preparedStatement.executeQuery();
            String sql2 = "SELECT * FROM ImmaginiArticoli WHERE IdArticolo = ?";
            preparedStatement = connection.prepareStatement(sql2);
            ResultSet resultSet2;
            if (resultSet.next()) {
                int idArticolo = resultSet.getInt("IdArticolo");
                preparedStatement.setInt(1, idArticolo);
                resultSet2 = preparedStatement.executeQuery();
                ArrayList<ImmagineArticolo> immaginiArticoli = new ArrayList<>();
                while(resultSet2.next()) {
                    int id = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immaginiArticoli.add(new ImmagineArticolo(id,path,idArticolo));
                }
                String titolo = resultSet.getString("Nome").replaceAll("/(['\"])/g","\\$1");
                String descrizione = resultSet.getString("Descrizione").replaceAll("/(['\"])/g","\\$1");
                int idVenditore = resultSet.getInt("IdVenditore");
                float prezzo = resultSet.getFloat("Prezzo");
                String categoria = resultSet.getString("Categoria");
                float voto = resultSet.getFloat("Voto");
                articolo = new Articolo(idArticolo,titolo, descrizione, idVenditore,prezzo,categoria,voto,immaginiArticoli);
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return articolo;
    }

    /***
     * Restituisce l'utente con lo username passato nell'argomento.
     * @param usernameToSearch Nome dell'utente da cercare
     * @return Utente ricercato, null se non viene trovato.
     */

    public Utente getUtente(String usernameToSearch) {
        Utente utente = null;
        ResultSet resultSet;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM utente WHERE UserName = ?;");
            preparedStatement.setString(1, usernameToSearch);
            resultSet = preparedStatement.executeQuery();
            String sql2 = "SELECT * FROM ImmaginiUtente WHERE IdUtente = ?";
            PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
            ResultSet resultSet2;

            while (resultSet.next()) {
                int id = resultSet.getInt("IdUtente");
                preparedStatement2.setInt(1, id);
                resultSet2 = preparedStatement2.executeQuery();
                ImmagineUtente immagineUtente = null;
                if(resultSet2.next()) {
                    int idImmagine = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immagineUtente = new ImmagineUtente(idImmagine,path,id);
                }
                String userName = resultSet.getString("UserName");
                String password = resultSet.getString("Password");
                String nome = resultSet.getString("Nome");
                String cognome = resultSet.getString("Cognome");
                String email = resultSet.getString("Email");
                java.sql.Date dataNascita = resultSet.getDate("DataNascita");
                String tipoString = resultSet.getString("Tipo");
                TipoUtente tipo = TipoUtente.ERROR;
                if (tipoString.equals("User")) {
                    tipo = TipoUtente.USER;
                } else if (tipoString.equals("Administrator")) {
                    tipo = TipoUtente.ADMIN;
                } else if (tipoString.equals("Seller")) {
                    tipo = TipoUtente.SELLER;
                }
                String validazioneString = resultSet.getString("Validato");
                ValidazioneUtente validazioneUtente = ValidazioneUtente.ERROR;
                if(validazioneString.equals("true")) {
                    validazioneUtente = ValidazioneUtente.TRUE;
                } else if(validazioneString.equals("false")) {
                    validazioneUtente = ValidazioneUtente.FALSE;
                }

                String validationhash = resultSet.getString("validationhash");

                utente = new Utente(id, userName, password, nome, cognome, email, dataNascita, tipo, validazioneUtente, validationhash, immagineUtente);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utente;
    }

    /***
     * Restituisce un venditore conoscendo il suo id
     * @param id l'id del venditore da cercare
     * @return restituisce l'oggetto venditore se è stato trovato un venditore con quell'id, altrimenti restituisce null
     */

    public Venditore getVenditore(int id) {
        Venditore venditore = null;
        ResultSet resultSet;

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM venditore WHERE IdVenditore = ?;");
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            String sql2 = "SELECT * FROM ImmaginiVenditore WHERE IdVenditore = ?";
            PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
            ResultSet resultSet2;

            if(resultSet.next()) {
                preparedStatement2.setInt(1, id);
                resultSet2 = preparedStatement2.executeQuery();
                ImmagineVenditore immagineVenditore = null;

                if(resultSet2.next()) {
                    int idImmagine = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immagineVenditore = new ImmagineVenditore(idImmagine,path,id);
                }

                int idUtente = resultSet.getInt("IdUtente");
                String nomeNegozio = resultSet.getString("NomeNegozio");
                String ragioneSociale = resultSet.getString("RagioneSociale");
                String partitaIva = resultSet.getString("PartitaIva");
                String iban = resultSet.getString("Iban");
                String indirizzo = resultSet.getString("Indirizzo");
                double valutazione = resultSet.getDouble("Valutazione");

                venditore = new Venditore(id,idUtente,nomeNegozio,ragioneSociale,partitaIva,iban,indirizzo,valutazione);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return venditore;
    }

    /***
     * Restituisce un venditore associato ad un utente
     * @param utente l'utente per il quale cercare il venditore associato
     * @return restituisce l'oggetto venditore se è stato trovato un venditore associato all'utente passato, altrimenti restituisce null
     */

    public Venditore getVenditore(Utente utente) {
        Venditore venditore = null;
        ResultSet resultSet;

        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM venditore WHERE IdUtente = ?;");
            preparedStatement.setInt(1, utente.getId());
            resultSet = preparedStatement.executeQuery();
            String sql2 = "SELECT * FROM ImmaginiVenditore WHERE IdVenditore = ?";
            PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
            ResultSet resultSet2;

            if(resultSet.next()) {
                int id = resultSet.getInt("IdVenditore");
                preparedStatement2.setInt(1, id);
                resultSet2 = preparedStatement2.executeQuery();
                ImmagineVenditore immagineVenditore = null;

                if(resultSet2.next()) {
                    int idImmagine = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immagineVenditore = new ImmagineVenditore(idImmagine,path,id);
                }

                int idUtente = resultSet.getInt("IdUtente");
                String nomeNegozio = resultSet.getString("NomeNegozio");
                String ragioneSociale = resultSet.getString("RagioneSociale");
                String partitaIva = resultSet.getString("PartitaIva");
                String iban = resultSet.getString("Iban");
                String indirizzo = resultSet.getString("Indirizzo");
                double valutazione = resultSet.getDouble("Valutazione");

                venditore = new Venditore(id,idUtente,nomeNegozio,ragioneSociale,partitaIva,iban,indirizzo,valutazione);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return venditore;
    }

    /***
     * Restituisce tutti i venditori presenti nel database
     * @return un ArrayList di Venditore. Se non ci sono venditori questo sarà vuoto.
     */

    public ArrayList<Venditore> getVenditori() {
        ArrayList<Venditore> venditori = new ArrayList<>();
        ResultSet resultSet;

        try {
            Statement statement = connection.createStatement();
            String sql  = "SELECT * FROM venditore;";;
            resultSet = statement.executeQuery(sql);
            String sql2 = "SELECT * FROM ImmaginiVenditore WHERE IdVenditore = ?";
            PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
            ResultSet resultSet2;
            if(resultSet.next()) {
                int id = resultSet.getInt("IdVenditore");
                preparedStatement2.setInt(1, id);
                resultSet2 = preparedStatement2.executeQuery();
                ImmagineVenditore immagineVenditore = null;

                if(resultSet2.next()) {
                    int idImmagine = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immagineVenditore = new ImmagineVenditore(idImmagine,path,id);
                }

                int idUtente = resultSet.getInt("IdUtente");
                String nomeNegozio = resultSet.getString("NomeNegozio");
                String ragioneSociale = resultSet.getString("RagioneSociale");
                String partitaIva = resultSet.getString("PartitaIva");
                String iban = resultSet.getString("Iban");
                String indirizzo = resultSet.getString("Indirizzo");
                double valutazione = resultSet.getDouble("Valutazione");

                venditori.add(new Venditore(id,idUtente,nomeNegozio,ragioneSociale,partitaIva,iban,indirizzo,valutazione));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return venditori;
    }

    /***
     * Inserisce un nuovo utente nel database
     * @param user L'utente da inserire nel database
     * @return Restituisce true se l'inserimento è andato a buon fine false se è fallito
     */

    public boolean insertNewUser(Utente user) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO utente (UserName,Password,Nome,Cognome,Email,DataNascita,Tipo,Validato,validationhash) VALUES (?,?,?,?,?,?,?,?,?);");
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getNome());
            preparedStatement.setString(4, user.getCognome());
            preparedStatement.setString(5, user.getEmail());
            preparedStatement.setDate(6, user.getDataNascita());
            preparedStatement.setString(7, user.getTipo().toString());
            preparedStatement.setString(8, user.getValidazioneUtente().toString());
            preparedStatement.setString(9, user.getValidationhash());
            if (preparedStatement.executeUpdate() > 0) {
                insertSuccesful = true;
            } else {
                insertSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;
    }

    /***
     * Aggiorna i dati di un utente già esistente nel database
     * @param user L'utente da aggiornare nel database
     * @return Restituisce true se l'aggiornamento è andato a buon fine false se è fallito
     */

    public boolean editUser(Utente user) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("REPLACE INTO utente VALUES (?,?,?,?,?,?,?,?,?,?);");
            preparedStatement.setInt(1, user.getId());
            preparedStatement.setString(2, user.getUserName());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getNome());
            preparedStatement.setString(5, user.getCognome());
            preparedStatement.setString(6, user.getEmail());
            preparedStatement.setDate(7, user.getDataNascita());
            preparedStatement.setString(8, user.getTipo().toString());
            preparedStatement.setString(9, user.getValidazioneUtente().toString());
            preparedStatement.setString(10, user.getValidationhash());
            if (preparedStatement.executeUpdate() > 0) {
                insertSuccesful = true;
            } else {
                insertSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;
    }

    /***
     * Si occupa di inserire un nuovo articolo in vendita
     * @param nome Nome dell'articolo
     * @param idVenditore Id del venditore
     * @param prezzo Prezzo
     * @param categoria Categoria
     * @return Restituisce true se l'inserimento è andato a buon fine false se è fallito
     */
    public boolean insertItem(String nome, String descrizione, int idVenditore, float prezzo, String categoria) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO articolo (Nome, Descrizione, IdVenditore,Prezzo,Categoria,Voto) VALUES (?,?,?,?,?,?);");
            preparedStatement.setString(1, nome);
            preparedStatement.setString(2, descrizione);
            preparedStatement.setInt(3, idVenditore);
            preparedStatement.setFloat(4, prezzo);
            preparedStatement.setString(5, categoria);
            preparedStatement.setFloat(6, (float) 0.00);
            if (preparedStatement.executeUpdate() > 0) {
                insertSuccesful = true;
            } else {
                insertSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;
    }

    /***
     * Serve a modificare i dati di un articolo già inserito nel DB
     * @param articolo l'articolo da modificare
     * @return Restituisce true se l'inserimento è andato a buon fine false se è fallito
     */
    public boolean editItem(Articolo articolo) {
        boolean updateSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE articolo SET Nome = ?,IdVenditore = ?,Prezzo = ?,Categoria = ?,Voto = ? WHERE IdArticolo = ?;");
            preparedStatement.setString(1, articolo.getTitolo());
            preparedStatement.setInt(2, articolo.getIdVenditore());
            preparedStatement.setFloat(3, articolo.getPrezzo());
            preparedStatement.setString(4, articolo.getCategoria());
            preparedStatement.setFloat(5, articolo.getVoto());
            preparedStatement.setInt(6, articolo.getIdArticolo());
            if (preparedStatement.executeUpdate() > 0) {
                updateSuccesful = true;
            } else {
                updateSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updateSuccesful;
    }

    /***
     * Serve ad eliminare un articolo che è presente nel DB
     * @param id Id dell'articolo da eliminare
     * @return Restituisce true se l'articolo è stato eliminato e false se si è verificato un problema
     */
    public boolean deleteItem(int id) {
        boolean updateSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM articolo WHERE IdArticolo = ? LIMIT 1;");
            preparedStatement.setInt(1, id);
            if (preparedStatement.executeUpdate() > 0) {
                updateSuccesful = true;
            } else {
                updateSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updateSuccesful;
    }

    /***
     * Inserisce un ordine nel db
     * @param ordine l'ordine da inserire nel db
     * @return true se l'inserimento è andato a buon fine false se è fallito
     */

    public boolean insertOrder(Ordine ordine) {
        boolean insertSuccesful = false;
        try {
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.sql.Date sqlDate = java.sql.Date.valueOf(dateFormat.format(ordine.getDataOrdine()).toString());
            String enumPayment = "";
            if (ordine.getPagRicevuto()) {
                enumPayment = "TRUE";
            } else {
                enumPayment = "FALSE";
            }


            String query = "INSERT INTO ordine (IdUtente,PrezzoTot,DataOrdine,TipoOrdine,PagamentoRicevuto,Ricevuto) VALUES (?,?,?,?,?,?);";
            String genKeysToReturn[] = {"IdOrdine"};
            PreparedStatement preparedStatement = connection.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, ordine.getIdUtente());
            preparedStatement.setFloat(2, ordine.getPrezzoTot());
            preparedStatement.setDate(3, sqlDate);
            preparedStatement.setString(4, ordine.getTipoOrdine().toString());
            preparedStatement.setString(5, enumPayment);
            preparedStatement.setString(6, "FALSE");
            if (preparedStatement.executeUpdate() > 0) {
                ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
                if(generatedKeys.next()) {
                    int idOrdine = generatedKeys.getInt(1);
                    String query2 = "INSERT INTO articoloOrdine (IdOrdine,IdArticolo) VALUES(?,?)";
                    PreparedStatement preparedStatement2 = connection.prepareStatement(query2);
                    for (Articolo articolo : ordine.getArticoli()) {
                        preparedStatement2.setInt(1, idOrdine);
                        preparedStatement2.setInt(2, articolo.getIdArticolo());
                        preparedStatement2.addBatch();
                    }
                    int[] batchEdits = preparedStatement2.executeBatch();
                    if (batchEdits.length == ordine.getArticoli().size()) {
                        insertSuccesful = true;
                    } else {
                        insertSuccesful = false;
                    }
                }

            } else {
                insertSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;
    }

    /***
     * Serve a salvare nel DB la data in cui l'ordine viene spedito
     * @param date Data di spedizione in java.util.Date
     * @param idOrdine Ordine che è stato spedito
     * @return Restituisce true se l'inserimento è andato a buon fine false se è fallito
     */
    public boolean setOrderShipmentDate(Date date, int idOrdine) {
        boolean updateSuccesful = false;
        PreparedStatement preparedStatement = null;
        try {
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.sql.Date sqlDate = java.sql.Date.valueOf(dateFormat.format(date).toString());
            String query = "UPDATE ordine SET DataSpedizione = ? WHERE IdOrdine = ?;";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setDate(1, sqlDate);
            preparedStatement.setInt(2, idOrdine);
            if (preparedStatement.executeUpdate(query) > 0) {
                updateSuccesful = true;
            } else {
                updateSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updateSuccesful;
    }

    /***
     * Serve a salvare nel DB se l'ordine è stato ricevuto o ritirato dal cliente
     * @param idOrdine Id dell'ordine
     * @return Restituisce true se l'inserimento è andato a buon fine false se è fallito
     */
    public boolean setOrderDelivered(int idOrdine) {
        boolean updateSuccesful = false;
        Statement statement = null;
        try {
            String query = "UPDATE ordine SET Ricevuto = 'TRUE';";
            statement = connection.createStatement();
            if (statement.executeUpdate(query) > 0) {
                updateSuccesful = true;
            } else {
                updateSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updateSuccesful;
    }

    /***
     * Serve ad ottenere un array JSON per l'autocomplete del cerca
     * @param searchText Il nome dell'articolo da cercare nel DB
     * @return Una array JSON contenente tutti gli articoli che corrispondono alla ricerca
     */

    public String getAutocompleteJson(String searchText) {
        ArrayList articoli = new ArrayList<String>();
        ResultSet resultSet;
        Statement statement = null;
        String sql = "SELECT DISTINCT Nome FROM articolo WHERE Nome LIKE '%"+ searchText + "%' LIMIT 5;";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String item = resultSet.getString("Nome").toLowerCase().replaceAll("/(['\"])/g","\\$1");
               articoli.add(item);
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }

        Gson gson = new GsonBuilder().disableHtmlEscaping().create();;
        return gson.toJson(articoli.toArray());
    }

    /***
     * Restituisce gli ultimi 5 articoli inseriti nel sito. Funzione specifica per la Homepage.
     * @return ArrayList di Articolo
     */

    public ArrayList<Articolo> getHomeLastArticles() {
        ArrayList<Articolo> articoli = new ArrayList<>();
        ResultSet resultSet;
        Statement statement = null;
        String sql = "SELECT * FROM articolo ORDER BY IdArticolo DESC LIMIT 5;";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            String sql2 = "SELECT * FROM ImmaginiArticoli WHERE IdArticolo = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
            ResultSet resultSet2;
            while (resultSet.next()) {
                int idArticolo = resultSet.getInt("IdArticolo");
                preparedStatement.setInt(1, idArticolo);
                resultSet2 = preparedStatement.executeQuery();
                ArrayList<ImmagineArticolo> immaginiArticoli = new ArrayList<>();
                while(resultSet2.next()) {
                    int id = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immaginiArticoli.add(new ImmagineArticolo(id,path,idArticolo));
                }
                String titolo = resultSet.getString("Nome").replaceAll("/(['\"])/g","\\$1");
                String descrizione = resultSet.getString("Descrizione").replaceAll("/(['\"])/g","\\$1");
                int idVenditore = resultSet.getInt("IdVenditore");
                float prezzo = resultSet.getFloat("Prezzo");
                String categoria = resultSet.getString("Categoria");
                float voto = resultSet.getFloat("Voto");
                articoli.add(new Articolo(idArticolo,titolo, descrizione, idVenditore,prezzo,categoria,voto,immaginiArticoli));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return articoli;

    }

    /***
     * Restituisce i 5 articoli più venduti di tutto il sito. Funzione specifica per la Homepage.
     * @return ArrayList di Articolo
     */

    public ArrayList<Articolo> getHomeMostSold() {
        ArrayList<Articolo> articoli = new ArrayList<>();
        ResultSet resultSet;
        Statement statement = null;
        String sql = "SELECT * FROM articolo WHERE IdArticolo IN (SELECT IdArticolo FROM articoloOrdine GROUP BY IdArticolo ORDER BY COUNT(*) DESC) LIMIT 5;";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            String sql2 = "SELECT * FROM ImmaginiArticoli WHERE IdArticolo = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
            ResultSet resultSet2;
            while (resultSet.next()) {
                int idArticolo = resultSet.getInt("IdArticolo");
                preparedStatement.setInt(1, idArticolo);
                resultSet2 = preparedStatement.executeQuery();
                ArrayList<ImmagineArticolo> immaginiArticoli = new ArrayList<>();
                while(resultSet2.next()) {
                    int id = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immaginiArticoli.add(new ImmagineArticolo(id,path,idArticolo));
                }
                String titolo = resultSet.getString("Nome").replaceAll("/(['\"])/g","\\$1");
                String descrizione = resultSet.getString("Descrizione").replaceAll("/(['\"])/g","\\$1");
                int idVenditore = resultSet.getInt("IdVenditore");
                float prezzo = resultSet.getFloat("Prezzo");
                String categoria = resultSet.getString("Categoria");
                float voto = resultSet.getFloat("Voto");
                articoli.add(new Articolo(idArticolo, descrizione, titolo,idVenditore,prezzo,categoria,voto,immaginiArticoli));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return articoli;

    }

    /***
     * Restituisce le categorie presenti nel database
     * @return ArrayList di Categoria
     */
    public ArrayList<Categoria> getCategorie(){
        ArrayList<Categoria> categorie = new ArrayList<>();
        ResultSet resultSet;
        Statement statement = null;
        String sql = "SELECT * from categorie";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                String nome = resultSet.getString("Nome");
                String descrizione = resultSet.getString("Descrizione");
                categorie.add(new Categoria(nome, descrizione));
            }
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return categorie;
    }
    /***
     * Controlla se un utente con lo username passato esiste già
     * @param usernameToSearch Lo username da cercare
     * @return true se l'username è già usato o false se è disponibile
     */

    public boolean isUsernameAlreadyTaken(String usernameToSearch) {
        boolean result = true;
        ResultSet resultSet;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT COUNT(*) as count from utente where UserName = ?;");
            preparedStatement.setString(1, usernameToSearch);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()) {
                if(resultSet.getInt("count") == 0) {
                    result = false;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;
    }

    /***
     * Inserisce una nuova sessione nel database
     * @param session
     * @return true se l'inserimento è andato a buon fine e false se c'è stato un errore
     */

    public boolean insertUserSession(Session session) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO sessionUser (utente,dataSession,hashcode) VALUES (?,?,?);");
            preparedStatement.setInt(1, session.getIdUtente());
            preparedStatement.setDate(2, session.getDate());
            preparedStatement.setString(3, session.getHash());
            if (preparedStatement.executeUpdate() > 0) {
                insertSuccesful = true;
            }
        }  catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;
    }

    /***
     * Cancella la sessione in base all'hash
     * @param hash hashcode nel cookie del client
     * @return true se operazione eseguita con successo altrimenti false
     */
    public boolean deleteUserSession(String hash) {
        boolean updateSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM sessionUser WHERE hashcode = ? LIMIT 1;");
            preparedStatement.setString(1, hash);
            if (preparedStatement.executeUpdate() > 0) {
                updateSuccesful = true;
            } else {
                updateSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updateSuccesful;
    }
    /***
     * Restituisce la sessione richiesta
     * @param hashcode hashcode nel cookie del client
     * @return restituisce la sessione o null se non è stata trovata alcuna sessione con l'hash inviato
     */

    public Session getUserSession(String hashcode) {
        Session session = null;
        ResultSet resultSet;
        Statement statement = null;
        String sql = "SELECT * FROM sessionUser WHERE hashcode = '"+ hashcode + "';";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            if (resultSet.next()) {
                int idUtente = resultSet.getInt("utente");
                Date date = resultSet.getDate("dataSession");
                String hash = resultSet.getString("hashcode");
                session = new Session(idUtente,date,hash);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return session;
    }

    /***
     * Restituisce tutti gli ordini di un utente
     * @param utente utente di cui cercare gli ordini
     * @return un ArrayList di Ordine contenente gli ordini dell'utente
     */

    public ArrayList<Ordine> getUserOrders(Utente utente) {
        ArrayList<Ordine> ordini = new ArrayList<>();
        ResultSet resultSet;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM ordine where IdUtente = ?;");
            preparedStatement.setInt(1, utente.getId());
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idOrdine = resultSet.getInt("IdOrdine");
                int idUtente = resultSet.getInt("IdUtente");
                float prezzoTot = resultSet.getFloat("PrezzoTot");
                Date dataOrdine = resultSet.getDate("DataOrdine");
                Date dataSpedizione = resultSet.getDate("DataSpedizione");
                String tipoOrdineString = resultSet.getString("TipoOrdine");
                TipoOrdine tipoOrdine;
                if(tipoOrdineString.equals("spedizione")) {
                    tipoOrdine = TipoOrdine.SPEDIZIONE;
                } else {
                    tipoOrdine = TipoOrdine.RITIRO;
                }

                boolean pagRicevuto;
                String pagRicevutoString = resultSet.getString("PagamentoRicevuto");
                if(pagRicevutoString.equals("TRUE")) {
                    pagRicevuto = true;
                } else {
                    pagRicevuto = false;
                }

                boolean ricevuto;
                String ricevutoString = resultSet.getString("Ricevuto");
                if(ricevutoString.equals("TRUE")) {
                    ricevuto = true;
                } else {
                    ricevuto = false;
                }

                ArrayList<Articolo> articoli = new ArrayList<>();
                ResultSet resultSet2;
                Statement statement = null;
                String sql = "SELECT * FROM articolo WHERE IdArticolo IN (SELECT IdArticolo FROM articoloOrdine WHERE IdOrdine = "+ idOrdine + ");";
                statement = connection.createStatement();
                resultSet2 = statement.executeQuery(sql);
                String sql2 = "SELECT * FROM ImmaginiArticoli WHERE IdArticolo = ?";
                PreparedStatement preparedStatement2 = connection.prepareStatement(sql2);
                ResultSet resultSet3;
                while (resultSet2.next()) {
                    int idArticolo = resultSet2.getInt("IdArticolo");
                    preparedStatement2.setInt(1, idArticolo);
                    resultSet3 = preparedStatement2.executeQuery();
                    ArrayList<ImmagineArticolo> immaginiArticoli = new ArrayList<>();
                    while(resultSet3.next()) {
                        int id = resultSet3.getInt("IdImmagine");
                        String path = resultSet3.getString("Percorso");
                        immaginiArticoli.add(new ImmagineArticolo(id,path,idArticolo));
                    }
                    String titolo = resultSet2.getString("Nome").replaceAll("/(['\"])/g","\\$1");
                    String descrizione = resultSet2.getString("Descrizione").replaceAll("/(['\"])/g","\\$1");
                    float prezzo = resultSet2.getFloat("Prezzo");
                    String categoria = resultSet2.getString("Categoria");
                    float voto = resultSet2.getFloat("Voto");
                    int idVenditore = resultSet2.getInt("IdVenditore");
                    articoli.add(new Articolo(idArticolo, descrizione, titolo,idVenditore,prezzo,categoria,voto,immaginiArticoli));
                }


                ordini.add(new Ordine(idOrdine,idUtente,prezzoTot,dataOrdine,dataSpedizione,tipoOrdine,pagRicevuto,ricevuto, articoli));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ordini;
    }

    /***
     * Metodo per inserire una nuova notifica nel database
     * @param notifica La notifica da inserire nel DB
     * @return true se l'inserimento è andato a buon fine, false se c'è stato un errore
     */

    public boolean insertNotification(Notifica notifica) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO notification (IdUtente,Testo,Url,DataNotifica,Stato) VALUES (?,?,?,?,?);");
            preparedStatement.setInt(1, notifica.getIdUtente());
            preparedStatement.setString(2, notifica.getTesto());
            preparedStatement.setString(3, notifica.getUrl());
            preparedStatement.setDate(4, notifica.getDate());
            preparedStatement.setString(5, notifica.getStato().toString());
            if (preparedStatement.executeUpdate() > 0) {
                insertSuccesful = true;
            } else {
                insertSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;
    }

    /***
     * Restituisce le notifiche per un determinato utente
     * @param utente L'utente per cui cercare notifiche
     * @return ArrayList di Notifica con all'interno tutte le notifiche dell'utente specificato ordinate dalla più recente alla meno recente.
     */

    public ArrayList<Notifica> getUserNotifications(Utente utente) {
        ArrayList<Notifica> notifiche = new ArrayList<>();
        ResultSet resultSet;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM notification where IdUtente = ? ORDER BY DataNotifica DESC;");
            preparedStatement.setInt(1, utente.getId());
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idNotifica = resultSet.getInt("IdNotifica");
                String testo = resultSet.getString("Testo");
                String url = resultSet.getString("Url");
                Date date = resultSet.getDate("DataNotifica");
                String statoString = resultSet.getString("Stato");
                StatoNotifica statoNotifica = StatoNotifica.NUOVA;
                if(statoString.equals("Letta")) {
                    statoNotifica = StatoNotifica.LETTA;
                }
                notifiche.add(new Notifica(idNotifica,utente.getId(),testo,url,date,statoNotifica));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return notifiche;
    }

    /***
     * Setta lo stato di una notifica come letta
     * @param idNotifica L'id della notifica da settare come letta
     * @return true se l'update è andato a buon fine, false altrimenti
     */

    public boolean setNotificationAsRead(int idNotifica, Utente utente) {
        boolean updateSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE notification SET Stato = 'Letta' WHERE IdNotifica = ? AND IdUtente = ?;");
            preparedStatement.setInt(1, idNotifica);
            preparedStatement.setInt(2, utente.getId());
            if (preparedStatement.executeUpdate() > 0) {
                updateSuccesful = true;
            } else {
                updateSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return updateSuccesful;

    }

    /***
     * Restituisce tutte le recensioni per un determinato articolo
     * @param articolo articolo per cui cercare le recensioni
     * @return ArrayList di RecensioneArticolo. Nel caso in cui non ci siano recensioni l'ArrayList sarà vuoto.
     */

    public ArrayList<RecensioneArticolo> getRecensioniArticolo(Articolo articolo) {
        ArrayList<RecensioneArticolo> recensioniArticolo = new ArrayList<>();
        ResultSet resultSet;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM recensioneArticoli WHERE IdArticolo = ?;");
            preparedStatement.setInt(1, articolo.getIdArticolo());
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("IdRecArt");
                int idUtente = resultSet.getInt("IdUtente");
                Utente utente = getUtente(idUtente);
                int voto = resultSet.getInt("Voto");
                String testo = resultSet.getString("Testo").replaceAll("/(['\"])/g","\\$1");
                recensioniArticolo.add(new RecensioneArticolo(id,utente,voto,testo,articolo.getIdArticolo()));
                }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return recensioniArticolo;
    }

    /***
     * Funzione che inserisce una recensione ad un determinato articolo
     * @param recensioneArticolo la recensione da inserire nel database
     * @return true se l'insert è andato a buon fine false se c'è stato un errore
     */

    public boolean insertRecensioneArticolo(RecensioneArticolo recensioneArticolo) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO recensioneArticoli (IdUtente, Voto, Testo, IdArticolo) VALUES (?,?,?,?);");
            preparedStatement.setInt(1, recensioneArticolo.getUtente().getId());
            preparedStatement.setInt(2, recensioneArticolo.getVoto());
            preparedStatement.setString(3, recensioneArticolo.getTesto());
            preparedStatement.setInt(4, recensioneArticolo.getIdArticolo());
            if (preparedStatement.executeUpdate() > 0) {
                PreparedStatement preparedStatement1 = connection.prepareStatement("SELECT IdUtente FROM venditore WHERE IdVenditore IN (SELECT IdVenditore FROM articolo WHERE IdArticolo = ?);");
                preparedStatement1.setInt(1, recensioneArticolo.getIdArticolo());

                ResultSet resultSet = preparedStatement1.executeQuery();

                while(resultSet.next()) {
                    int idUtente = resultSet.getInt("IdUtente");
                    String testo = "Nuova recensione a tuo articolo da " + recensioneArticolo.getUtente().getUserName();
                    String url = "/item.jsp?id=" + recensioneArticolo.getIdArticolo();
                    Date date = new Date(new java.util.Date().getTime());
                    StatoNotifica statoNotifica = StatoNotifica.NUOVA;
                    Notifica notifica = new Notifica(idUtente,testo,url,date,statoNotifica);
                    insertNotification(notifica);
                    Articolo articolo = getArticolo(recensioneArticolo.getIdArticolo());
                    ArrayList<RecensioneArticolo> recensioni = getRecensioniArticolo(articolo);
                    recensioni.add(recensioneArticolo);
                    int somma = 0;
                    for(RecensioneArticolo recen : recensioni) {
                        somma += recen.getVoto();
                    }
                    articolo.setVoto((somma/recensioni.size()));
                    editItem(articolo);
                }

                insertSuccesful = true;
            } else {
                insertSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;
    }

    /***
     * Restituisce tutte le recensioni per un determinato venditore
     * @param venditore venditore per cui cercare le recensioni
     * @return ArrayList di RecensioneVenditore. Nel caso in cui non ci siano recensioni l'ArrayList sarà vuoto.
     */

    public ArrayList<RecensioneVenditore> getRecensioniVenditore(Venditore venditore) {
        ArrayList<RecensioneVenditore> recensioniVenditori = new ArrayList<>();
        ResultSet resultSet;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM recensioneVenditore WHERE IdVenditore = ?;");
            preparedStatement.setInt(1, venditore.getIdVenditore());
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("IdRecVen");
                int idUtente = resultSet.getInt("IdUtente");
                Utente utente = getUtente(idUtente);
                int voto = resultSet.getInt("Voto");
                String testo = resultSet.getString("Testo").replaceAll("/(['\"])/g","\\$1");

                recensioniVenditori.add(new RecensioneVenditore(id,utente,voto,testo,venditore.getIdVenditore()));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return recensioniVenditori;
    }

    /***
     * Restituisce gli articoli che soddisfano i parametri avanzati della ricerca
     * @param searchParams l'oggetto con tutti i parametri della ricerca avanzata
     * @return ArrayList di Articolo con gli articoli che soddisfano i requisiti. Vuoto se nessun articolo soddisfa i parametri di ricerca.
     */

    public ArrayList<Articolo> getAdvancedSearchResults(AdvancedSearchParameters searchParams) {
        ArrayList<Articolo> articoli = new ArrayList<>();
        ResultSet resultSet;
        try {
            String query = "SELECT * FROM articolo WHERE ";
            boolean firstParam = false;
            if(searchParams.getTesto() != null) {
                query += "(Nome LIKE '%" + escapeSQL(searchParams.getTesto()) + "%')";
                firstParam = true;
            }

            if(searchParams.getStartPrice() != -10) {
                if(firstParam) {
                    query += " AND ";
                }
                firstParam = true;
                if(searchParams.getEndPrice() != -10) {
                    query += "(Prezzo BETWEEN " + escapeSQL( "" + searchParams.getStartPrice()) + " " + escapeSQL("" + searchParams.getEndPrice()) + ")";
                } else {
                    query += "(Prezzo >= " + escapeSQL("" + searchParams.getStartPrice()) + ") ";
                }
            } else if(searchParams.getEndPrice() != -10) {
                if(firstParam) {
                    query += " AND ";
                }
                firstParam = true;
                query += "(Prezzo <= " + escapeSQL("" + searchParams.getEndPrice()) + ")";
            }

            if (searchParams.getMinReview() != -10) {
                if(firstParam) {
                    query += " AND ";
                }
                firstParam = true;
                query += "(Voto >= " + escapeSQL("" + searchParams.getMinReview()) + ")";
            }

            if(searchParams.getCategoria() != null) {
                if(firstParam) {
                    query += " AND ";
                }
                firstParam = true;
                query += "(Categoria = '" + escapeSQL(searchParams.getCategoria().getNome()) + "')";
            }

            if(searchParams.getQueryOrder() == QueryOrder.DESC) {
                query += " ORDER BY Prezzo DESC;";
            } else {
                query += " ORDER BY Prezzo ASC";
            }

            Statement statement = connection.createStatement();

            resultSet = statement.executeQuery(query);

            String sql2 = "SELECT * FROM ImmaginiArticoli WHERE IdArticolo = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
            ResultSet resultSet2;
            while (resultSet.next()) {
                int idArticolo = resultSet.getInt("IdArticolo");
                preparedStatement.setInt(1, idArticolo);
                resultSet2 = preparedStatement.executeQuery();
                ArrayList<ImmagineArticolo> immaginiArticoli = new ArrayList<>();
                while (resultSet2.next()) {
                    int id = resultSet2.getInt("IdImmagine");
                    String path = resultSet2.getString("Percorso");
                    immaginiArticoli.add(new ImmagineArticolo(id, path, idArticolo));
                }
                String titolo = resultSet.getString("Nome").replaceAll("/(['\"])/g","\\$1");
                String descrizione = resultSet.getString("Descrizione").replaceAll("/(['\"])/g","\\$1");
                int idVenditore = resultSet.getInt("IdVenditore");
                float prezzo = resultSet.getFloat("Prezzo");
                String categoria = resultSet.getString("Categoria");
                float voto = resultSet.getFloat("Voto");
                articoli.add(new Articolo(idArticolo, titolo, descrizione ,idVenditore, prezzo, categoria, voto, immaginiArticoli));
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return articoli;
    }

    /***
     * Inserisce un ticket nel database e pusha una notifica a tutti i venditori interessati e all'amministratore
     * @param ticket
     * @return
     */

    public boolean insertTicket(Ticket ticket) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO ticket (IdOrdine,IdUtente,TipoTicket,Testo,Stato) VALUES (?,?,?,?,?);", PreparedStatement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, ticket.getIdOrdine());
            preparedStatement.setInt(2, ticket.getIdUtente());
            preparedStatement.setString(3, ticket.getTipoTicket().toString());
            preparedStatement.setString(4, ticket.getTesto());
            preparedStatement.setString(5, ticket.getStatoTicket().toString());

            if (preparedStatement.executeUpdate() > 0) {

                ResultSet generatedKeys = preparedStatement.getGeneratedKeys();

                int idUtenteA = 1;
                Utente utenteA = getUtente(ticket.getIdUtente());
                String testoA = "Nuovo ticket creato da " + utenteA.getUserName() + " di tipo " + ticket.getTipoTicket().toString();
                generatedKeys.next();
                String urlA = "/ticket.jsp?id=" + generatedKeys.getInt(1);
                Date dateA = new Date(new java.util.Date().getTime());
                StatoNotifica statoNotificaA = StatoNotifica.NUOVA;
                Notifica notificaA = new Notifica(idUtenteA,testoA,urlA,dateA,statoNotificaA);
                insertNotification(notificaA);

                PreparedStatement preparedStatement1 = connection.prepareStatement("SELECT IdUtente FROM venditore WHERE IdVenditore IN (" +
                        "                        SELECT IdVenditore FROM articolo WHERE IdArticolo IN (" +
                        "                        SELECT IdArticolo FROM articoloOrdine WHERE IdOrdine = ?));");
                preparedStatement1.setInt(1, ticket.getIdOrdine());

                ResultSet resultSet = preparedStatement1.executeQuery();

                while(resultSet.next()) {
                    int idUtente = resultSet.getInt("IdUtente");
                    Utente utente = getUtente(ticket.getIdUtente());
                    String testo = "Nuovo ticket creato da " + utente.getUserName() + " di tipo " + ticket.getTipoTicket().toString();
                    String url = "/ticket.jsp?id=" + generatedKeys.getInt(1);
                    Date date = new Date(new java.util.Date().getTime());
                    StatoNotifica statoNotifica = StatoNotifica.NUOVA;
                    Notifica notifica = new Notifica(idUtente,testo,url,date,statoNotifica);
                    insertNotification(notifica);
                }

                insertSuccesful = true;
            } else {
                insertSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;

    }

    /***
     * Restituisce un ticket controllando che l'utente sia autorizzato a visualizzarlo
     * @param idTicket id del ticket da recuperare
     * @param utente utente che sta richiedendo il ticket
     * @return il ticket richiesto se questo esiste e se l'utente può accedervi, in ogni altro caso nul
     */

    public Ticket getTicket(int idTicket, Utente utente) {
        Ticket ticket = null;
        Ticket tempTicket = null;
        try {
            PreparedStatement preparedStatement1 = connection.prepareStatement("SELECT * FROM ticket WHERE IdTicket = ?;");
            preparedStatement1.setInt(1,idTicket);
            ResultSet resultSet1 = preparedStatement1.executeQuery();
            if(resultSet1.next()) {
                int idOrdine = resultSet1.getInt("IdOrdine");
                int idUtente = resultSet1.getInt("IdUtente");
                String tipoTicketString = resultSet1.getString("TipoTicket");
                TipoTicket tipoTicket = null;
                switch (tipoTicketString) {
                    case "Rimborso":
                        tipoTicket = TipoTicket.RIMBORSO;
                        break;
                    case "Ritardo":
                        tipoTicket = TipoTicket.RITARDO;
                        break;
                    case "Danneggiato":
                        tipoTicket = TipoTicket.DANNEGGIATO;
                        break;
                    case "Altro":
                        tipoTicket = TipoTicket.ALTRO;
                        break;
                }
                String testo = resultSet1.getString("Testo");
                String statoTicketString = resultSet1.getString("Stato");
                StatoTicket statoTicket = null;
                switch (statoTicketString) {
                    case "Aperto":
                        statoTicket = StatoTicket.APERTO;
                        break;
                    case "Lavorazione":
                        statoTicket = StatoTicket.LAVORAZIONE;
                        break;
                    case "Chiuso":
                        statoTicket = StatoTicket.CHIUSO;
                        break;
                    case "Annullato":
                        statoTicket = StatoTicket.ANNULATO;
                        break;
                }

                tempTicket = new Ticket(idTicket,idOrdine,idUtente,tipoTicket,testo,statoTicket);
                PreparedStatement preparedStatement = connection.prepareStatement("SELECT IdUtente FROM venditore WHERE IdVenditore IN (" +
                        "                        SELECT IdVenditore FROM articolo WHERE IdArticolo IN (" +
                        "                        SELECT IdArticolo FROM articoloOrdine WHERE IdOrdine = ?));");
                preparedStatement.setInt(1, tempTicket.getIdOrdine());
                ResultSet resultSet = preparedStatement.executeQuery();
                ArrayList<Integer> utentiAbilitati = new ArrayList<>();

                utentiAbilitati.add(tempTicket.getIdUtente());

                while (resultSet.next()) {
                    utentiAbilitati.add(resultSet.getInt("IdUtente"));
                }

                if(utentiAbilitati.contains(utente.getId()) || utente.getId() == 1) {
                    ticket = tempTicket;

                }
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ticket;
    }

    /***
     * Inserisce un ticket nel database e pusha una notifica a tutti i venditori interessati e all'amministratore
     * @param ticket
     * @return
     */

    public boolean updateTicket(Ticket ticket) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("REPLACE INTO ticket (IdTicket,IdOrdine,IdUtente,TipoTicket,Testo,Stato) VALUES (?,?,?,?,?,?);");
            preparedStatement.setInt(1, ticket.getId());
            preparedStatement.setInt(2, ticket.getIdOrdine());
            preparedStatement.setInt(3, ticket.getIdUtente());
            preparedStatement.setString(4, ticket.getTipoTicket().toString());
            preparedStatement.setString(5, ticket.getTesto());
            preparedStatement.setString(6, ticket.getStatoTicket().toString());

            if (preparedStatement.executeUpdate() > 0) {


                String testoA = "L'amministratore ha modificato lo stato di un tuo ticket";
                String urlA = "/ticket.jsp?id=" + ticket.getId();
                Date dateA = new Date(new java.util.Date().getTime());
                StatoNotifica statoNotificaA = StatoNotifica.NUOVA;
                Notifica notificaA = new Notifica(ticket.getIdUtente(),testoA,urlA,dateA,statoNotificaA);
                insertNotification(notificaA);

                PreparedStatement preparedStatement1 = connection.prepareStatement("SELECT IdUtente FROM venditore WHERE IdVenditore IN (" +
                        "                        SELECT IdVenditore FROM articolo WHERE IdArticolo IN (" +
                        "                        SELECT IdArticolo FROM articoloOrdine WHERE IdOrdine = ?));");
                preparedStatement1.setInt(1, ticket.getIdOrdine());

                ResultSet resultSet = preparedStatement1.executeQuery();

                while(resultSet.next()) {
                    int idUtente = resultSet.getInt("IdUtente");
                    String testo = "L'amministratore ha aggiornato lo stato di un ticket di uno dei tuoi clienti";
                    String url = "/ticket.jsp?id=" + ticket.getId();
                    Date date = new Date(new java.util.Date().getTime());
                    StatoNotifica statoNotifica = StatoNotifica.NUOVA;
                    Notifica notifica = new Notifica(idUtente,testo,url,date,statoNotifica);
                    insertNotification(notifica);
                }

                insertSuccesful = true;
            } else {
                insertSuccesful = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return insertSuccesful;

    }

    /***
     * Serve per fare l'escape delle stringhe per le query sql quando non è possibile usare delle query parametrizzate
     * @param s La stringa di cui bisogna fare l'escape
     * @return La stringa con l'escape effettuato
     */

    public static String escapeSQL(String s){
        int length = s.length();
        int newLength = length;
        // first check for characters that might
        // be dangerous and calculate a length
        // of the string that has escapes.
        for (int i=0; i<length; i++){
            char c = s.charAt(i);
            switch(c){
                case '\\':
                case '\"':
                case '\'':
                case '\0':{
                    newLength += 1;
                } break;
            }
        }
        if (length == newLength){
            // nothing to escape in the string
            return s;
        }
        StringBuffer sb = new StringBuffer(newLength);
        for (int i=0; i<length; i++){
            char c = s.charAt(i);
            switch(c){
                case '\\':{
                    sb.append("\\\\");
                } break;
                case '\"':{
                    sb.append("\\\"");
                } break;
                case '\'':{
                    sb.append("\\\'");
                } break;
                case '\0':{
                    sb.append("\\0");
                } break;
                default: {
                    sb.append(c);
                }
            }
        }
        return sb.toString();
    }

    /***
     * Serve per rilasciare la connessione al database una volta che le operazioni sul database sono state effettuate
     */

    public void close() {
        try {
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}

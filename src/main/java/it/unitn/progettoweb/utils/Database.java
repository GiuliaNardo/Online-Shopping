package it.unitn.progettoweb.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import it.unitn.progettoweb.Objects.*;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class Database {
    //TODO: categorie,ImmagineArticolo,ImmaginiUtente,ImmaginiVenditore,recensioneArticoli,recensioneVenditore,ticket,venditore
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
            while (resultSet.next()) {

                int id = resultSet.getInt("IdUtente");
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

                utente = new Utente(id, userName, password, nome, cognome, email, dataNascita, tipo, validazioneUtente, validationhash);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utente;
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
            while (resultSet.next()) {

                int id = resultSet.getInt("IdUtente");
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

                utente = new Utente(id, userName, password, nome, cognome, email, dataNascita, tipo, validazioneUtente, validationhash);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return utente;
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
    public boolean insertItem(String nome, int idVenditore, float prezzo, String categoria) {
        boolean insertSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO articolo (Nome,IdVenditore,Prezzo,Categoria,Voto) VALUES (?,?,?,?,?);");
            preparedStatement.setString(1, nome);
            preparedStatement.setInt(2, idVenditore);
            preparedStatement.setFloat(3, prezzo);
            preparedStatement.setString(4, categoria);
            preparedStatement.setFloat(5, (float) 0.00);
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
     * @param id Id
     * @param nome Nome dell'articolo
     * @param idVenditore Id del venditore
     * @param prezzo Prezzo
     * @param categoria Categoria
     * @param voto Voto dell'articolo
     * @return Restituisce true se l'inserimento è andato a buon fine false se è fallito
     */
    public boolean editItem(int id, String nome, int idVenditore, float prezzo, String categoria, float voto) {
        boolean updateSuccesful = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE articolo SET Nome = ?,IdVenditore = ?,Prezzo = ?,Categoria = ?,Voto = ? WHERE IdArticolo = ?;");
            preparedStatement.setString(1, nome);
            preparedStatement.setInt(2, idVenditore);
            preparedStatement.setFloat(3, prezzo);
            preparedStatement.setString(4, categoria);
            preparedStatement.setFloat(5, voto);
            preparedStatement.setInt(6, id);
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
     * Serve ad inserire un nuovo ordine
     * @param idVenditore Id del venditore che ha effettuato la vendita
     * @param idUtente  Id dell'utente che ha effettuato l'acquisto
     * @param prezzoTot Prezzo totale dell'ordine
     * @param date Data in cui viene effettuato l'ordine (java.util.Date)
     * @param instapayed True se l'utente ha pagato con carta di credito o PayPal, false se paga con bonifico
     * @param isShipment True se l'ordine dev'essere spedito, false se viene ritirato in negozio
     * @param items ArrayList di Integer che contiene gli id degli articoli che sono stati acquistati
     * @return Restituisce true se l'inserimento è andato a buon fine false se è fallito
     */
    public boolean insertOrder(int idVenditore, int idUtente, float prezzoTot, Date date, boolean instapayed, boolean isShipment, ArrayList<Integer> items) {
        boolean insertSuccesful = false;
        try {
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            java.sql.Date sqlDate = java.sql.Date.valueOf(dateFormat.format(date).toString());
            String enumPayment = "";
            if (instapayed) {
                enumPayment = "TRUE";
            } else {
                enumPayment = "FALSE";
            }
            String orderType = "";
            if (isShipment) {
                orderType = "spedizione";
            } else {
                orderType = "ritiro";
            }

            String query = "INSERT INTO ordine (IdVenditore,IdUtente,PrezzoTot,DataOrdine,TipoOrdine,PagamentoRicevuto,Ricevuto) VALUES (?,?,?,?,?,?,?);";
            PreparedStatement preparedStatement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, idVenditore);
            preparedStatement.setInt(2, idUtente);
            preparedStatement.setFloat(3, prezzoTot);
            preparedStatement.setDate(4, sqlDate);
            preparedStatement.setString(5, orderType);
            preparedStatement.setString(6, enumPayment);
            preparedStatement.setString(7, "FALSE");
            if (preparedStatement.executeUpdate() > 0) {
                connection.setAutoCommit(false);
                String query2 = "INSERT INTO articoloOrdine (IdOrdine,IdArticolo) VALUES(?,?)";
                PreparedStatement preparedStatement2 = connection.prepareStatement(query2);
                ResultSet resultSet = preparedStatement.getGeneratedKeys();
                int idOrdine = resultSet.getInt(1);
                for (Integer itemId : items) {
                    preparedStatement2.setInt(1, idOrdine);
                    preparedStatement2.setInt(2, itemId);
                    preparedStatement2.addBatch();
                }
                int[] batchEdits = preparedStatement2.executeBatch();
                connection.commit();
                if (batchEdits.length == items.size()) {
                    insertSuccesful = true;
                } else {
                    insertSuccesful = false;
                }
                connection.setAutoCommit(true);
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
        String sql = "SELECT DISTINCT Nome FROM articolo WHERE Nome LIKE '"+ searchText + "%' LIMIT 5;";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                String item = resultSet.getString("Nome").toLowerCase();
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
                String titolo = resultSet.getString("Nome");
                int idVenditore = resultSet.getInt("IdVenditore");
                float prezzo = resultSet.getFloat("Prezzo");
                String categoria = resultSet.getString("Categoria");
                float voto = resultSet.getFloat("Voto");
                articoli.add(new Articolo(idArticolo,titolo,idVenditore,prezzo,categoria,voto,immaginiArticoli));
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
                String titolo = resultSet.getString("Nome");
                int idVenditore = resultSet.getInt("IdVenditore");
                float prezzo = resultSet.getFloat("Prezzo");
                String categoria = resultSet.getString("Categoria");
                float voto = resultSet.getFloat("Voto");
                articoli.add(new Articolo(idArticolo,titolo,idVenditore,prezzo,categoria,voto,immaginiArticoli));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return articoli;

    }

    /***
     * restituisce le categorie presenti nel database
     * @reutn arraylist
     */
    public ArrayList<Categorie> getCategorie(){
        ArrayList<Categorie> categorie = new ArrayList<>();
        ResultSet resultSet;
        Statement statement = null;
        String sql = "SELECT * from categorie";
        try {
            statement = connection.createStatement();
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                String nome = resultSet.getString("Nome");
                String descrizione = resultSet.getString("Descrizione");
                categorie.add(new Categorie(nome, descrizione));
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
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM articolo WHERE IdArticolo = ? LIMIT 1;");
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
            if (resultSet.next()) {
                int idOrdine = resultSet.getInt("IdOrdine");
                int idVenditore = resultSet.getInt("IdVenditore");
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

                ordini.add(new Ordine(idOrdine,idVenditore,idUtente,prezzoTot,dataOrdine,dataSpedizione,tipoOrdine,pagRicevuto,ricevuto));
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
            if (resultSet.next()) {
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

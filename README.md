# DemaShop

### Software utilizzati

  - IntelliJ Idea Ultimate
  - MariaDB 10.1
  - GitHub

### Linguaggi utilizzati

  - HTML
  - CSS
  - Javascript
  - Java / JSP
  - SQL

### Librerie esterne utilizzate
  - JQuery
  - Bootstrap
  - Gson
  - JDBC

### Membri del gruppo

  - Simone de Blasiis
  - Federico de Martin
  - Giulia Nardò

### Descrizione progetto
Per l'intero sito abbiamo deciso di utilizzare un sistema simile ai template Wordpress che suddividono header, body e footer di ogni pagina. Ogni pagina visibile dall'utente include queste tre sezioni principali, nel caso dello header e del footer viene incluso sempre lo stesso file, mentre per il body, la parte principale della pagina, viene incluso il template corrispondente. 
Questo sistema ci consente di scrivere solo una volta il codice per lo header e il footer evitandoci preocupazioni di inconsistenze in caso di modifiche che ci potrebbero essere se ogni pagina dovesse avere anche il sorgente di queste sezioni.

Abbiamo deciso di utilizzare git come VCS per una migliore organizzazione del lavoro. Essendo il nostro gruppo composto da soli tre membri ci risultava più produttivo lavorare sempre assieme, quindi la branching strategy adottata è stata la Master-Only che consiste nell'effettuare ogni commit su un unico branch (master).

### Sicurezza
Essendo il software sviluppato un E-Commerce, ci è sembrato vitale doverci concentrare anche sull'aspetto della sicurezza dello stesso:
 - Le password degli utenti sono salvate sul database come hash generato dall'algoritmo SHA-256
 - Ci siamo assicurati che ogni query sul database, che accetta parametri esterni, non fosse vulnerabile al SQL Injection. Per fare ciò abbiamo utilizzato i PreparedStatement che effettuano automaticamente l'escape dei parametri rendendoli sicuri.

### Deployment
Abbiamo inoltre deciso di darvi la possibilità di provare il sito direttamente online [al seguente link](http://web-webprog.193b.starter-ca-central-1.openshiftapps.com/) sfruttando il servizio [OpenShift PaaS](https://www.openshift.com/).

<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 23/01/2018
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body>
    <div class="container" style="height: 100%">
        <div class="container content" style="border: 1px solid #DDDDDD; padding: 50px; width: 900px; border-radius: 5px">
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Inserisci indirizzo spedizione</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Indirizzo">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Inserisci numero carta</label>
                <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Numero carta">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Inserisci CSV</label>
                <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="CSV carta">
            </div>
            <button type="submit" class="btn btn-bottom btn-success" onclick="send()">Conferma ordine</button>
        </form>
        </div>
    </div>
</body>

<script>
    function send() {
        alert("Ordine inserito nel sistema!")
        window.location.href = '../../index.jsp'
    }
</script>
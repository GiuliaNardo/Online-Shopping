<%--
  Created by IntelliJ IDEA.
  User: Giulia
  Date: 23/01/2018
  Time: 21:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body>

<link rel="stylesheet" type="text/css" href="styles/checkoutstyle.css">

    <div class=" container1" >
        <div class="content container">
        <form>
            <div class="form-group">
            <select name="tipoO" onchange="change()" id="selectType" style="height: 30px;">
                <option value="Spedizione">Spedizione</option>
                <option value="Ritiro">Ritiro</option>
            </select>
            </div>
            <div class="form-group" id="carta">
                <div class="form-group">
                    <label for="exampleInputEmail1">Inserisci indirizzo spedizione</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Indirizzo">
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail1">Inserisci numero carta</label>
                    <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="Numero carta">
                </div>
                <div class="form-group" >
                    <label for="exampleInputEmail1">Inserisci CSV</label>
                    <input type="email" class="form-control" aria-describedby="emailHelp" placeholder="CSV carta">
                </div>
            </div>
            <div class="articoli">
                <span class="titolo">Riepilogo ordine</span>
                <div class="item row ">
                    <div class="testo">
                        nome articolo
                    </div>
                    <div class="testo">
                        prezzo totale
                    </div>
                </div>
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
    function change() {
        val = document.getElementById('selectType').value;
        if(val!=null){
            if (val === "Ritiro"){
                document.getElementById("carta").style.display ="none";
            } else{
                document.getElementById("carta").style.display ="block";
            }
        }


    }
</script>
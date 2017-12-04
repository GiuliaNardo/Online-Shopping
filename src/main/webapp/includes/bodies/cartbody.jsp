<%--
  Created by IntelliJ IDEA.
  User: Federico
  Date: 25/09/2017
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<div class="order-container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">Carrello</div>
                <div class="panel-body">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th></th>
                            <th>Categoria</th>
                            <th>Quantità</th>
                            <th class="text-center">Prezzo</th>
                            <th class="text-center">SubTotale</th>
                            <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="col-md-5">
                                <h4><a href="#">Prodotto1</a></h4>
                                <h5>Descrizione</h5>
                                <span>Categoria: </span><span><strong>Fottiti</strong></span>
                            </td>
                            <td class="col-md-3"><h5><strong>Ciaone</strong></h5></td>
                            <td class="col-md-1" style="text-align: center">
                                <div class="input-group">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default btn-number" min="0" step="1" ng-click="minus()">
                                                <i class="glyphicon glyphicon-minus"></i>
                                            </button>
                                        </span>
                                    <input type="text" class="form-control input-number" ng-change="change()" ng-model="qnt" required>
                                    <span class="input-group-btn">
                                            <button type="button" class="btn btn-default btn-number" ng-click="plus()">
                                                <i class="glyphicon glyphicon-plus"></i>
                                            </button>
                                        </span>
                                </div>
                            </td>
                            <td class="col-md-1 text-center"><strong>$4.87</strong></td>
                            <td class="col-md-1 text-center"><strong>$14.61</strong></td>
                            <td class="col-sm-1 col-md-1">
                                <button type="button" class="btn btn-danger">
                                    <i class="glyphicon glyphicon-remove"></i>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="text-right"><h5>Totale</h5></td>
                            <td class="text-center"><h5><strong>$24.59</strong></h5></td>
                            <td></td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-md-4 col-md-offset-8">
                            <button type="button" class="btn btn-default">
                                <span class="glyphicon glyphicon-shopping-cart"></span> Contina con lo shop
                            </button>
                            <a href="/checkout" class="btn btn-success">
                                Checkout <span class="glyphicon glyphicon-play"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>


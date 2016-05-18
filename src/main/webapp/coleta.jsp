<!doctype html>
<html>

  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="app.js"></script>

  </head>

  <body ng-app="teste">
    <form ng-controller="ControllerColeta as Coleta" novalidate>
      <H1>
<div>
Recolhe Recicláveis
</div>

</H1>
<H2>
<div>
Verificar Coletas
</div>
</H2>
<p>
<a href="index.jsp" target="_self">Inicio</a>
</p>
     	 <h3><p><b>Usuário:</b>  	</h3>
     	 <select ng-model="Coleta.coleta.usuario.codigo">
            <option  data-ng-repeat="coleta in Coleta.dbUsuarios" value="{{ coleta.codigo }}">{{coleta.nome}}</option>
         </select>
		<h3><p><b>Cooperativa:</b>  	</h3>
     	<p> <select ng-model="Coleta.coleta.cooperativa.codigo" >
            <option  data-ng-repeat="coleta in Coleta.dbCooperativas" value="{{ coleta.codigo }}">{{coleta.nomeFantasia}}</option>
         </select></p>
     	 <p><input type="text" ng-model="Coleta.coleta.data"></p>
     	 
     	 <p>
       	    <input type="button" value="Salvar" ng-click="Coleta.addColetaRest();">
	     </p>
    </form>
  </body>

</html>
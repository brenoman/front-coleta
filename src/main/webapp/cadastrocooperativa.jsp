<!doctype html>
<html>

  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="app.js"></script>

  </head>

  <body ng-app="teste">
    <form ng-controller="ControllerCooperativa as Cooperativa" novalidate>
      <H1>
<div>
Recolhe Recicláveis
</div>

</H1>
      <H2>
<div>
Cadastro de Cooperativa
</div>
</H2>

<p>
<a href="index.jsp" target="_self">Ínicio</a>
</p>

 	  
 	  <p>Email:
        <input type="email" ng-model="Cooperativa.cooperativa.email">
      </p>
 	  
      <p>Nome Fantasia:
        <input type="text" ng-model="Cooperativa.cooperativa.nomeFantasia">
      </p>
      
      <p>CNPJ:
        <input type="text" ng-model="Cooperativa.cooperativa.cnpj">
      </p>
      
      <H3>
      <div> Endereço: 
      </div>
      </H3>
      
      <p>Logradouro:
        <input type="text" ng-model="Cooperativa.cooperativa.endereco.logradouro">
      </p>
      
      <p>Número:
        <input type="text" ng-model="Cooperativa.cooperativa.endereco.numero">
      </p>
      
      <p>Complemento:
        <input type="text" ng-model="Cooperativa.cooperativa.endereco.complemento">
      </p>
      
      <p>CEP:
        <input type="text" ng-model="Cooperativa.cooperativa.endereco.cep">
      </p>
      
      <p>bairro:
        <input type="text" ng-model="Cooperativa.cooperativa.endereco.bairro">
      </p>
      
      <p>Cidade:
        <input type="text" ng-model="Cooperativa.cooperativa.endereco.cidade">
      </p>
      
      <p>UF:
        <input type="text" ng-model="Cooperativa.cooperativa.endereco.uf">
      </p>
      
      <p>
       	<input type="button" value="Salvar" ng-click="Cooperativa.addCooperativaRest();">
	  </p>
        	
    </form>
  </body>

</html>
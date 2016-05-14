<!doctype html>
<html>

  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="app.js"></script>

  </head>

<body ng-app="teste">
   <form ng-controller="ControllerColeta as Coleta" novalidate>
<H1>
Recolhe Recicláveis
</H1>
<H2>
Coletas
</H2>
<p>
<a href="index.jsp" target="_self">Inicio</a>
</p>
     	 <h3>Usuário:</h3>
        	 
        	 <p>Email:
        		<input type="email" ng-model="Usuario.Usuario.email">
        		<input type="button" value="Consultar coleta" ng-click="Usuario.consultar();">	
      		</p>
       		
		     <h4>Endereço:</h4> 
		     	      
		      <p>Logradouro:
		        <input type="text" ng-model="Usuario.Usuario.logradouro">
		      </p>
		      
		      <p>Número:
		        <input type="text" ng-model="Usuario.Usuario.numero">
		      </p>
		      
		      <p>Complemento:
		        <input type="text" ng-model="Usuario.Usuario.complemento">
		      </p>
		      
		      <p>CEP:
		        <input type="text" ng-model="Usuario.Usuario.cep">
		      </p>
		      
		      <p>bairro:
		        <input type="text" ng-model="Usuario.Usuario.bairro">
		      </p>
		      
		      <p>Cidade:
		        <input type="text" ng-model="Usuario.Usuario.cidade">
		      </p>
		      
		      <p>UF:
		        <input type="text" ng-model="Usuario.Usuario.uf">
		      </p>	
    		<input type="button" value="Solicitar coleta" ng-click="Coleta.solicitar();">
    	</p>
  
    	<h3>
     	Cooperativa:
     	</h3>
     		<p>CNPJ:
        		<input type="text" ng-model="Cooperativa.Cooperativa.cnpj">
      		</p>
       		<input type="button" value="Consultar Coleta" ng-click="Cooperativa.consultar();">
       
    </form>
  </body>

</html>
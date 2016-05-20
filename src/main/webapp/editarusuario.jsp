<% String id = request.getParameter("id");  %>
<!doctype html>
<html>

  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="app.js"></script>
  </head>

  <body ng-app="teste">

    <form ng-controller="ControllerUsuario as Usuario" novalidate data-ng-init="Usuario.buscarUsuarioRest(<%=id %>);">
    
      <H2>
<div>
Editar Usu�rio
</div>


</H2>
<p>
<a href="index.jsp" target="_self">�nicio</a>
</p>

 	  <input type="hidden" ng-model="Usuario.usuario.codigo">
 	  <p>Email:
 	  
        <input type="email" id="email" ng-model="Usuario.usuario.email">
      </p>
 	  
      <p>Nome:
        <input type="text" ng-model="Usuario.usuario.nome">
      </p>
      
      <p>Telefone:
        <input type="text" ng-model="Usuario.usuario.telefone">
      </p>
      
      <H3>
      <div> Endere�o: 
      </div>
      </H3>
      
      <p>Logradouro:
        <input type="text" ng-model="Usuario.usuario.endereco.logradouro">
      </p>
      
      <p>N�mero:
        <input type="text" ng-model="Usuario.usuario.endereco.numero">
      </p>
      
      <p>Complemento:
        <input type="text" ng-model="Usuario.usuario.endereco.complemento">
      </p>
      
      <p>CEP:
        <input type="text" ng-model="Usuario.usuario.endereco.cep">
      </p>
      
      <p>bairro:
        <input type="text" ng-model="Usuario.usuario.endereco.bairro">
      </p>
      
      <p>Cidade:
        <input type="text" ng-model="Usuario.usuario.endereco.cidade">
      </p>
      
      <p>UF:
        <input type="text" ng-model="Usuario.usuario.endereco.uf">
      </p>
      
      <p>
       <input type="button" value="Salvar" ng-click="Usuario.editarUsuarioRest(<%=id%>);">

      </p>
    	
    </form>
    
    
    <div ng-repeat="usuario in usuario.db">

          <p>Nome: {{aluno.nome}}</p>

          <p>Nascimento: {{aluno.nascimento}}</p>

          <p>Email: {{aluno.email}}</p>

          <p>Matricula: {{aluno.matricula}}</p>

        </div>
  </body>

</html>
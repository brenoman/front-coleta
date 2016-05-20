<!doctype html>
<html>

  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="app.js"></script>

  </head>

  <body ng-app="teste" ng-controller="ControllerUsuario as Usuario">
    
     	 <h3><p><b>Usuário:</b>  	</h3>
     	 <table ng-model="Usuario.usuario.codigo" border="1" width="70%">
     	 <tr>
     	 	<td>Nome</td>
     	 	<td>Ações</td>
     	 </tr>
     	 <tr data-ng-repeat="usuario in Usuario.dbUsuarios" value="{{ usuario.codigo }}">
     	 	<td>{{usuario.nome}}</td>
	     	 <td><a href="editarUsuario.jsp?id={{usuario.codigo}}">Editar</a> 
	     	 | 
	     	 <a href="#" ng-click="Usuario.excluirUsuarioRest(usuario.codigo);">Excluir</a>
	     	 </td>
	     </tr>
     	 </table>
     	  
  </body>

</html>
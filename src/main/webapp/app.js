
(function() {
  var app = angular.module("teste", []);
  
  app.controller("ControllerUsuario", ["$http", function($http) {
    this.usuario = {};
	this.addUsuarioRest = function() {
      $http.post('http://localhost:8080/coletaSeletiva/usuarios/salvar', this.usuario);
      alert("Cadastro efetuado");
      window.location.reload();
    };
    this.editarUsuarioRest = function() {
        $http.post('http://localhost:8080/coletaSeletiva/usuarios/editar', this.usuario);
        alert("Cadastro atualizado");
        window.location.reload();
      };
    this.excluirUsuarioRest = function(codigo) {
       $http.post('http://localhost:8080/coletaSeletiva/usuarios/excluir', codigo);
        alert("Cadastro excluido");
       window.location.reload();
      };
    this.usuarioFinal  = null;
    this.buscarUsuarioRest = function(codigo) {
    	var that=this;
       $http.post('http://localhost:8080/coletaSeletiva/usuarios/buscar', codigo).success(function(data){
    	   that.usuario = data;
       });
       var str = JSON.stringify(that.usuario, null, 2);
       document.getElementById('email').value = this.usuario.email;
    };
    this.dbUsuarios  = [];
    this.atualizarUsuarios = function() {
      var that = this;
    	$http.get('http://localhost:8080/coletaSeletiva/usuarios/').success(function(data){
    	   that.dbUsuarios = data;
      });
    };
    this.atualizarUsuarios();
    
  }]);
  

  

  app.controller("ControllerCooperativa", ["$http", function($http) {
	    this.cooperativa = {};
		this.addCooperativaRest = function() {
	      $http.post('http://localhost:8080/coletaSeletiva/cooperativas/salvar', this.cooperativa);
	      alert("Cadastro efetuado");
	      window.location.reload();
	    };
		
	  }]);
  
  
  app.controller("ControllerColeta", ["$http", function($http) {

	    this.coleta = {};
		this.addColetaRest = function() {
	      $http.post('http://localhost:8080/coletaSeletiva/coletas/salvar', this.coleta);
	      alert("Cadastro efetuado");
	      window.location.reload();
	    };
	    this.dbUsuarios  = [];
	    this.atualizarUsuarios = function() {
	      var that = this;
	    	$http.get('http://localhost:8080/coletaSeletiva/usuarios/').success(function(data){
	    	   that.dbUsuarios = data;
	      });
	    };
	    this.dbCooperativas  = [];
	    this.atualizarCooperativas = function() {
		      var that = this;
		    	$http.get('http://localhost:8080/coletaSeletiva/cooperativas/').success(function(data){
		    	   that.dbCooperativas = data;
		      });
	    };
	    this.atualizarUsuarios();
	    this.atualizarCooperativas();
	  }]);
  
  
  
})();
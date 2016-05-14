(function() {
  var app = angular.module("teste", []);
  app.controller("ControllerPessoas", ["$http", function($http) {
    this.pessoa = {};
	this.addPessoaRest = function() {
      $http.post('http://localhost:8080/hotelspring/alunos/salvar', this.aluno);
    };
	
  }]);
})();
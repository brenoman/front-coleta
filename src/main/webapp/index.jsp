<!doctype html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
<script src="app.js"></script>

</head>
<body ng-app="teste">
  <form ng-controller="ControllerAlunos as alunos" novalidate>
    <H2>
<div>
Aluno
</div>
</H2>
    <p>Nome:
      <input type="text" ng-model="alunos.aluno.nome">
    </p>
    <p>Matricula:
      <input type="text" ng-model="alunos.aluno.matricula">
    </p>
    <p>Email:
      <input type="email" ng-model="alunos.aluno.email">
    </p>
    <p>Nascimento:
      <input type="date" ng-model="alunos.aluno.nascimento">
    </p>
    <p>
      <input type="button" value="Salvar" ng-click="alunos.addAlunoRest();">
    </p>
    <p>
        <div ng-repeat="aluno in alunos.db">
          <p>Nome: {{aluno.nome}}</p>
          <p>Nascimento: {{aluno.nascimento}}</p>
          <p>Email: {{aluno.email}}</p>
          <p>Matricula: {{aluno.matricula}}</p>
        </div>
      </p>
  </form>
</body>
</html>
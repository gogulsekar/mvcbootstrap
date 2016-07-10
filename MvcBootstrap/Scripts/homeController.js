var angularApp = angular.module('myApp',['ngRoute']);

//angularApp.controller('homeController', function ($scope, $location) {
//    $scope.leftOperand = 0;
//    $scope.rightOperand = 0;
//    $scope.result = 0;
//    $scope.types = [{ "Type": "Scientific" }, { "Type": "Basic" }];
//    $scope.type = "";
//    $scope.display = false;
//    $scope.add = function () {
//        $scope.display = true;
//        $scope.result = parseInt($scope.leftOperand) + parseInt($scope.rightOperand);
//    }
//    $scope.mul = function () {
//        $scope.result = parseInt($scope.rightOperand) * parseInt($scope.leftOperand);
//    }
//    $scope.loadAdd = function () {
//        $location.path('/add');
//    }
//    $scope.loadMul = function () {
//        $location.path('/mul');
//    }
//});

angularApp.controller('homeController', [
    '$scope',
    '$location',
    homeConstructor]);

function homeConstructor($scope, $location) {
    var viewModel = this;
    viewModel.leftOperand = 0;
    viewModel.rightOperand = 0;
    viewModel.result = 0;
    viewModel.types = [{ "Type": "Scientific" }, { "Type": "Basic" }];
    viewModel.type = "";
    viewModel.display = false;
    viewModel.add = function () {
        viewModel.display = true;
        viewModel.result = parseInt(viewModel.leftOperand) + parseInt(viewModel.rightOperand);
    }
    viewModel.mul = function () {
        viewModel.result = parseInt(viewModel.rightOperand) * parseInt(viewModel.leftOperand);
    }
    viewModel.loadAdd = function () {
        $location.path('/add');
    }
    viewModel.loadMul = function () {
        $location.path('/mul');
    }
}

angularApp.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/add', {
        templateUrl: 'App/add.html',
        controller: 'homeController as vm'
    }).when('/mul', {
        templateUrl: 'App/mul.html',
        controller: 'homeController as vm'
    }).when('/dashboard', {
        templateUrl: 'App/dashboard.html',
        controller: 'homeController as vm'
    }).otherwise({
        redirectTo: '/dashboard'
    });
}]);
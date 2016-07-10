var angularApp = angular.module('myApp',['ngRoute']);

angularApp.controller('homeController', function ($scope, $location) {
    $scope.leftOperand = 0;
    $scope.rightOperand = 0;
    $scope.result = 0;
    $scope.add = function () {
        $scope.result = parseInt($scope.leftOperand) + parseInt($scope.rightOperand);
    }
    $scope.mul = function () {
        $scope.result = parseInt($scope.rightOperand) * parseInt($scope.leftOperand);
    }
    $scope.loadAdd = function () {
        $location.path('/add');
    }
    $scope.loadMul = function () {
        $location.path('/mul');
    }
});
angularApp.config(['$routeProvider', function ($routeProvider) {
    $routeProvider.when('/add', {
        templateUrl: 'App/add.html',
        controller: 'homeController'
    }).when('/mul', {
        templateUrl: 'App/mul.html',
        controller: 'homeController'
    }).when('/dashboard', {
        templateUrl: 'App/dashboard.html',
        controller: 'homeController'
    }).otherwise({
        redirectTo: '/dashboard'
    });
}]);
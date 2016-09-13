angular.module("shoppingOnline", ["ngAnimate", "ngRoute", "ngResource"]).
  controller("sildeController", ["$scope", "$http", function($scope, $http){
    $http.get("images.json").success(function(data, status, headers, config) {
      $scope.slides = data;
    }).error(function(data, status, headers, config) {
      // log errors
    });

    $scope.quantity = 5;
    $scope.orderProp = "updated_at";
    $scope.currentIndex = 0;

    $scope.setCurrentSlideIndex = function (index) {
      $scope.currentIndex = index;
    };
    $scope.isCurrentSlideIndex = function (index) {
      return $scope.currentIndex === index;
    };
  }]);

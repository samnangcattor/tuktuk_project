(function() {
  var shopApp = angular.module("shoppingOnline", ["ngAnimate", "ngRoute", "ngResource", "angularUtils.directives.dirPagination"]);

  shopApp.controller("sildeController", ["$scope", "$http", function($scope, $http){
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

  shopApp.controller("ProductController", ["$scope", "$http", function($scope, $http){
    $http.get("/products.json").success(function(data, status, headers, config) {
      $scope.products = data;
    }).error(function(data, status, headers, config) {
      // log errors
    });

    $http.get("/brands.json").success(function(data, status, headers, config) {
      $scope.brands = data;
    }).error(function(data, status, headers, config) {
      // log errors
    });

    $http.get("/media_arts.json").success(function(data, status, headers, config) {
      $scope.media_arts = data;
    }).error(function(data, status, headers, config) {
      // log errors
    });

    $http.get("/types.json").success(function(data, status, headers, config) {
      $scope.types = data;
    }).error(function(data, status, headers, config) {
      // log errors
    });

    $scope.byPrice = function (fieldName, minValue, maxValue) {
      if (minValue === undefined) minValue = Number.MIN_VALUE;
      if (maxValue === undefined) maxValue = Number.MAX_VALUE;

      return function predicateFunc(item) {
        return minValue <= item[fieldName] && item[fieldName] <= maxValue;
      };
    };
  }]);
})();

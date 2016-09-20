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
  }]);

  shopApp.controller("BrandController", ["$scope", "$http", function($scope, $http){
    $http.get("/brands.json").success(function(data, status, headers, config) {
      $scope.filters = data;
    }).error(function(data, status, headers, config) {
      // log errors
    });
  }]);

  shopApp.controller("MediaArtController", ["$scope", "$http", function($scope, $http){
    $http.get("/brands.json").success(function(data, status, headers, config) {
      $scope.filters = data;
    }).error(function(data, status, headers, config) {
      // log errors
    });
  }]);

  shopApp.controller("TypeController", ["$scope", "$http", function($scope, $http){
    $http.get("/brands.json").success(function(data, status, headers, config) {
      $scope.filters = data;
    }).error(function(data, status, headers, config) {
      // log errors
    });
  }]);
})();

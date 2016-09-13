angular.module("shoppingOnline", ["ngAnimate"]).
  controller("sildeController", function($scope) {
    $scope.slides = [
      {image: "slides/image_1.jpeg"},
      {image: "slides/image_2.jpeg"},
      {image: "slides/image_3.jpeg"},
      {image: "slides/image_4.jpeg"}
    ];
    $scope.currentIndex = 0;
    $scope.setCurrentSlideIndex = function (index) {
      $scope.currentIndex = index;
    };
    $scope.isCurrentSlideIndex = function (index) {
      return $scope.currentIndex === index;
    };
  });

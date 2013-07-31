@photogur.controller 'StartupsController', ($scope, Startups) ->
  $scope.startups = Startups

  $scope.createStartups = ->
    Startups.push $scope.startups
    $location.path('/startups')
@ngEntrepernology.controller 'StartupController', ($scope, Startups, $routeParams) ->
  $scope.startup = Startups[$routeParams.id]

  $scope.updateStartup = ->
    $location.path('/startups')
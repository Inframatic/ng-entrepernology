@ngEntrepernology = angular.module 'ngEntrepernology', ["ngResource"]

@ngEntrepernology.config ($routeProvider, $locationProvider) ->

  $locationProvider.html5Mode(true)

  $routeProvider
  .when("/",                  templateUrl: "startups/index", controller: "StartupsController")
  .when('/startups',          templateUrl: "startups/index", controller: "StartupsController")
  .when('/startups/:id',      templateUrl: "startups/show", controller: "StartupsController")
  .when('/startups/new',      templateUrl: "startups/new", controller: "StartupsController")
  .when('/startups/:id/edit', templateUrl: "startups/edit", controller: "StartupsController")
  .otherwise(template: "Page not found.")


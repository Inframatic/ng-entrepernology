NgEntrepernology::Application.routes.draw do
    # Enable HTML5 history support. For browsers that support HTML5 history this 
  # means you can use a url like this
  #    http://localhost:3000/startups/new
  # Instead of this
  #    http://localhost:3000/#/startups/new
  # 
  # Here's a detailed explanation of how HTML5 history works: 
  # http://diveintohtml5.info/history.html
  $locationProvider.html5Mode(true)

  # Set up the application routes. This is similar to Rails' /config/routes.rb
  $routeProvider
  .when("/",                  templateUrl: "startups/index")
  .when('/startups',          templateUrl: "startups/index")
  .when('/startups/:id',      templateUrl: "startups/show")
  .when('/startups/new',      templateUrl: "startups/new")
  .when('/startups/:id/edit', templateUrl: "startups/edit")
  .otherwise(template: "Page not found.")0
match '*anything' => "static#root"
end

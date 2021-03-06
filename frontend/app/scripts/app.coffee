'use strict'

###*
 # @ngdoc overview
 # @name frontendApp
 # @description
 # # frontendApp
 #
 # Main module of the application.
###
angular
  .module('frontendApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'frontendApp.webService'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainController'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'


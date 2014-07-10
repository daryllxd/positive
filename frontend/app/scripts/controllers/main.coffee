'use strict'

###*
 # @ngdoc function
 # @name frontendApp.controller:MainController
 # @description
 # # MainController
 # Controller of the frontendApp
###

angular.module('frontendApp')
  .controller 'MainController', ($scope, webService) ->
    $scope.constructora =  ->
      $scope.setup()
      $scope.answers = []

    $scope.setup =  ->
      console.log('???')
      $scope.getData()

    $scope.getData = ->
      promise = webService.getGreeting()
      console.log(promise)

    $scope.showChoices = () ->
      alert('hi!')


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
    $scope.setup =  ->
      console.log('???')
      $scope.answers = []
      $scope.getData()

    $scope.getData = ->
      promise = webService.getGreeting()
      console.log(promise)

    $scope.showChoices = () ->
      alert('hi!')

    $scope.printEverything = () ->
      console.log $scope.firstAnswer

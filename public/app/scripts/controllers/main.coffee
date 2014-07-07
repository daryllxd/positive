'use strict'

###*
 # @ngdoc function
 # @name frontendApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the frontendApp
###
# angular.module('frontendApp')
#   .controller 'MainCtrl', ($scope) ->
#     $scope.awesomeThings = [
#       'HTML5 Boilerplate'
#       'AngularJS'
#       'Karma'
#     ]
#     @getData()
#

class MainCtrl
  constructor: (@$scope, @webService) ->
    @setup()

  setup: ->
    @$scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    @getData()

  getData: ->
    promise = @webService.getGreeting()
    # promise.then @success, @error

  success: (response) ->
    @$scope.message = response.data.message

  error: (response) ->
    @$scope.message = "Error"

MainCtrl.$inject = ['$scope', 'webService']
angular.module('frontendApp').controller 'MainCtrl', MainCtrl

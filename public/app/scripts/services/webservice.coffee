'use strict'

###*
 # @ngdoc service
 # @name frontendApp.WebService
 # @description
 # # WebService
 # Service in the frontendApp.
###
# angular.module('frontendApp')
#   .service 'Webservice', ->
#     constructor: (@$http) ->
#       @baseUrl = "/api/v1"

#     getGreeting: () ->
#       @$http.get("#{@baseUrl}/home")

class WebService
  constructor: (@$http) ->
    @baseUrl = "/api/v1"

  getGreeting: () ->
    @$http.get("#{@baseUrl}/home")

  testThis: () ->
    alert('hehe')

webService = angular.module 'frontendApp.webService', []
webService.factory 'webService', ['$http', ($http) -> new WebService($http)]

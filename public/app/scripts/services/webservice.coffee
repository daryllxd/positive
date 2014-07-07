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
    arg = @$http.get("http://localhost:3000/api/v1/home")
    console.log arg
    aw = @$http.get("#{@baseUrl}/home")
    console.log(aw)
    console.log('aaaa')

webService = angular.module 'frontendApp.webService', []
webService.factory 'webService', ['$http', ($http) -> new WebService($http)]

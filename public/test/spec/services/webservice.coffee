'use strict'

describe 'Service: WebService', ->

  # load the service's module
  beforeEach module 'frontendApp'

  # instantiate service
  WebService = {}
  beforeEach inject (_WebService_) ->
    WebService = _WebService_

  it 'should do something', ->
    expect(!!WebService).toBe true

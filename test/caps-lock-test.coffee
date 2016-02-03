chai = require 'chai'
Helper = require 'hubot-test-helper'

expect = chai.expect

responses = require('../src/images.json')

helper = new Helper('./../src/caps-lock.coffee')

describe 'caps-lock', ->
  room = null

  beforeEach ->
    room = helper.createRoom()

  afterEach ->
    room.destroy()

  context 'user says something with caps', ->
    beforeEach ->
      room.user.say 'Alice', 'HELLO WORLD?!'
      room.user.say 'Bob', 'WHO IS THERE?'

    it 'should reply with an image', ->
      expect(responses).to.contain(msg[1]) for msg in room.messages when msg[1] is 'hubot'

  context 'user says something without caps', ->
    beforeEach ->
      room.user.say 'Alice', 'Hello World!'
      room.user.say 'Bob', 'You shall not pass!'

    it 'should do nothing', ->
      expect(room.messages.length).to.equal(2)

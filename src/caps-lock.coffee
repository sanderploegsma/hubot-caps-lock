# Description
#   Reward use of caps lock with entertaining images
#
# Configuration:
#   Nothing!
#
# Commands:
#   <SOMETHING IN CAPS> - Profit!
#
# Author:
#   Sander Ploegsma <sanderploegsma@gmail.com>

images = require('./images.json')

module.exports = (robot) ->
  robot.hear /^(?:[^a-z]*[A-Z]{3,}[^a-z]*)$/, (msg) ->
    msg.send msg.random images

# Description:
#   general 채널에 누군가 들어오면 환영인사를 한다.
#   DirectMessage로 채널 설명 및 추천사이트를 보낸다.
#
# Author: Leop0ld

fs = require 'fs'
welcome = JSON.parse fs.readFileSync('welcome.json').toString()

introChannels = welcome.introChannels.join '\n'
recommendSites = welcome.recommendSites.join '\n'

module.exports = (robot) ->
  robot.enter (res) ->
    user = res.message.user

    # greeting
    robot.messageRoom user.room, "#{user.name} #{welcome.greeting}"

    # intro channels and recommend sites
    channel = robot.adapter.client.rtm.dataStore.getChannelGroupOrDMById(user.room)
    if channel.name is 'general'
      robot.messageRoom user.id, introChannels
      robot.messageRoom user.id, recommendSites

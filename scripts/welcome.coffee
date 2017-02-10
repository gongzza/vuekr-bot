# Description:
#   general 채널에 누군가 들어오면 환영인사를 한다
#
# Author: Leop0ld

welcomeMessage = "님! 안녕하세요 :)\nVue.js Korea Slack 에 들어오신 것을 환영합니다! :+1:"

greetingRooms = ['general', 'bot_playground']

module.exports = (robot) ->
  robot.enter (res) ->
    user = res.message.user
    if greetingRooms.includes user.room
      robot.messageRoom "##{user.room}", "#{user.name} #{welcomeMessage}"

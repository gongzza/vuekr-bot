# Description:
#   general 채널에 누군가 들어오면 환영인사를 한다
#
# Author: Leop0ld

module.exports = (robot) ->
  robot.enter (res) ->
    if res.message.user.room is "general"
      robot.messageRoom "general", "#{res.message.user.name} 님! 안녕하세요 :)\nVue.js Korea Slack 에 들어오신 것을 환영합니다! :+1:"
      
  robot.enter (res) ->
    if res.message.user.room is "bot_playground"
      robot.messageRoom "bot_playground", "#{res.message.user.name} 님! 안녕하세요 :)\nVue.js Korea Slack 에 들어오신 것을 환영합니다! :+1:"

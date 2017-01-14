# Description:
#   Check Vuejs version information
#
# Author: river-mountain

http = require 'http'
q = require 'q'

vueVersionInfoUrl = "https://unpkg.com/vue@2"

module.exports = (robot) ->
  robot.hear /vue --latest(.*)/i, (msg) ->
    getVueVersion(msg)
      .then (version) ->
        msg.send version + ' available'
      .catch ->
        msg.send 'Can not load latest version.'


getVueVersion = (msg) ->
  deferred= q.defer()
  msg.http(vueVersionInfoUrl)
    .get() (err, res) ->
      if res.statusCode is 302
        deferred.resolve(res.headers.location)
      else
        deferred.reject(err)
  return deferred.promise

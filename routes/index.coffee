user = require './user'

route = (app) ->
  app.get '/', (req, res) ->
    res.send('hello Nodejs with Coffee')
  app.get '/login', user.toLogin
  app.post '/login', user.login
  null

module.exports = route

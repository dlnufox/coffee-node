user = require './user'

router = (app) ->
  app.get '/',      (req, res) -> res.render 'index', title: 'nodejs and coffee'
  app.get '/user',  (req, res) -> user.toLogin(req, res)
  app.post '/user', (req, res) -> user.login(req, res)
  app.get '/book', (req, res) -> res.send("bookmark list")

module.exports = router
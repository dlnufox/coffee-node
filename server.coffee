express = require 'express'
route = require './routes'
app = express();

app.configure () ->
  app.set 'port', 18080
  app.set 'views', __dirname + '/views'
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser('expressdemo')
  app.use express.session()
  app.use app.router
  app.use express.static __dirname + 'public'
  app.use express.errorHandler()
  null

route app

app.listen(18080);

console.log('Gordon\'s BAE app running! ')

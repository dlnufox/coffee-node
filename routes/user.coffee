user =
  toLogin : (req, res) ->
    res.render 'login', title:"登陆页面"
    null
  login : (req, res) ->
    userName = req.body.username
    userPwd = req.body.userpwd
    console.log userName
    console.log userPwd
    res.send "登陆的用户为 #{userName} , 密码为:#{userPwd}"
    null
  logout : (req, res) ->
    console.log "登陆成功"


module.exports = user
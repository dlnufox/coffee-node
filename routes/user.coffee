user =
  toLogin: (req, res) ->
    res.render 'signin', title:'登录'
  login: (req, res) ->
    username = req.body.userName
    userpwd = req.body.userPwd
    if username == 'gordon' and userpwd == '111111'
      res.render 'index', title:"恭喜你#{username} 登录成功"
    else
      res.render 'signin', title:"请重新登录"

module.exports = user
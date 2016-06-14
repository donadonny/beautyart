<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
 <title>登录</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="/static/amazi/i/favicon.png">
  <script type="text/javascript" src="/static/easyui/jquery-easyui/jquery.min.js"></script>
  <link rel="stylesheet" href="/static/amazi/css/amazeui.min.css"/>
</head>
<style>
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;
    }
  </style>
<body>
<div class="header">
  <div class="am-g">
    <h1>缀美画室平台</h1>
  </div>
          <div class="alert alert-success" id='warning-block' style="text-align:center">
            <p>密码忘记请联系管理员QQ：569929309</p>
        </div>
  <hr />
</div>
<div class="am-g">
  <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
        <form class="am-form" id='loginform'>
      <label for="username">用户名:</label>
      <input type="text" id='username' name="username" required="required">
      <br>
      <label for="password">密码:</label>
      <input type="password" name="password" id="password" required="required">
      <br>
      <label for="verify">验证码:</label>
        <input id="hashcode" required="required" name='verify' type="text">
        <br/>
        <img src="/public/Verify" alt="验证码" id="code" onclick="code_onclick(this)" style="cursor : pointer;width:200px;height:80px;vertical-align:top;border-radius:4px;">

      <div class="am-cf">
        <input type="submit"  value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">  
      </div>
    </form>
    <hr>
    <p>Power by <a href="http://weibo.com/hunterhug" target="_blank">一只尼玛</a></p>
    <p>2015-2016@画室平台</p>
  </div>
</div>
<script type="text/javascript">

$("#loginform").submit(
function(){
    $.post("/public/Login?isajax=1",$('#loginform').serialize(),function(result){
        if(result.status){
            location.href = "/public/Index"
        }else{
            alert(result.info);
        }
        
      }).error(function(result){alert(result);});
      return false;
    }
);


function code_onclick(obj){
    obj.src="__CONTROLLER__/verify/random/"+Math.random();
};
</script>
</body>
</html>
<?php $this->_compileInclude('header'); ?>
<body>
<?php $this->_compileInclude('nav'); ?>
<div class="row-fluid">
	<div class="container-fluid logcontent">
		<div class="logbox">
			<form class="form-horizontal logform" method="post" action="index.php?user-app-register">
				<fieldset>
					<legend>注册用户</legend>
					<div class="logcontrol">
						<div class="control-group">
							<label class="control-label" for="inputEmail">用户名：</label>
							<div class="controls">
							    <i class="fa fa-user"></i>
								<input class="input-xlarge" type="text" type="text" name="args[username]" datatype="userName" needle="needle" msg="请输入您的用户名"placeholder="请输入您的用户名"/><span>不允许出现非法字符</span>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputEmail">邮箱：</label>
							<div class="controls">
							    <i class="fa fa-envelope"></i>
								<input class="input-xlarge" type="text" name="args[useremail]" datatype="email" needle="needle" placeholder="请输入您的邮箱" msg="请输入您的邮箱"/><span>请输入可用的电子邮箱地址</span>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">密码：</label>
							<div class="controls">
							<i class="fa fa-unlock-alt"></i>
								<input class="input-xlarge" type="password" id="inputPassword" name="args[userpassword]" datatype="password" needle="needle" placeholder="请输入您的密码" msg="请输入您的密码"/><span>密码长度6位以上，数字、字母或其他字符</span>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="inputPassword">重复密码：</label>
							<div class="controls">
							<i class="fa fa-expeditedssl"></i>
								<input class="input-xlarge" type="password" id="inputPassword2" equ="inputPassword" needle="needle" datatype="password" placeholder="请再一次输入你的密码" msg="重复密码必须和之前的密码一致"/><span>两次输入的密码必须一致</span>
							</div>
						</div>
						
						<div class="control-group">
							<div class="controls">
							<input id="checkbox" type="checkbox" name="agree" checked="checked"/>
								<p class="reg">我已经认真阅读并同意遵守本站<a href="javascript:void(0);" id="reg_xy"> 用户协议和隐私政策 </a> 如果您已有帐号，请在此<a href="index.php?user-app-login">登录</a>
								</p>
							</div>
						</div>
						<div class="control-group">
							<div class="controls">
								<button class="btn btn-info logbtn" type="submit">立即注册</button>
								<input type="hidden" value="1" name="userregister"/>
							</div>
						</div>

					</div>
				</fieldset>
			</form>
		</div>
		<div class="logbotm"></div>
	</div>
</div>
<?php $this->_compileInclude('foot'); ?>
</body>
</html>
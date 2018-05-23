$(document).ready(function(){
    $("#sms_yzm").click(function(){
        if($('#userphone').val()=='') {
            $('#notice1').html("手机号一定要输入哟！").css('color','#00BAA4');
            $('#userphone').focus();
            return false;
        }else if(!$("#userphone").val().match(/^1[3|4|5|8][0-9]\d{4,8}$/)){
            $('#notice1').html("手机号码格式不正确哟，请重新输入！").css('color','#00BAA4');
            $("#userphone").focus();
            return false;
        }else{
            $('#notice1').html('手机号输入正确，请查收验证码！').css('color','#960606');
            $("#verificationCode").focus();
            return false;
        }
        });

    $('#submit').click(function(){
        //手机号
		if($('#userphone').val()=='') {
            $('#notice1').html("手机号不能为空哟！").css('color','#00BAA4');
            $('#userphone').focus();
            return false;
        }else if(!$("#userphone").val().match(/^1[3|4|5|8][0-9]\d{4,8}$/)){
            $('#notice1').html("手机号码格式不正确哟，请重新输入！").css('color','#00BAA4');
            $("#userphone").focus();
            return false;
        }else{
            $('#notice1').html('手机号输入正确，请查收验证码！').css('color','#960606');
        }if($('#verificationCode').val()==''|| $('#verificationCode').val().length<'6') {
        	$('#notice2').html("验证码有误，请重新输入！").css('color','#00BAA4');
        	$("#verificationCode").focus();
            return false;
        }else{
            	$('#notice2').html('验证码输入正确，想个密码吧！').css('color','#960606');
            	$("#password").focus();
        }if ($('#password').val()=='') {                              //密码验证
            $('#notice3').html('密码不能为空哟！').css('color','#00BAA4');
            $("#password").focus();
            return false;
        }else if($('#password_PwdTwo').val()==''){
            $('#notice4').html('确认密码不能为空哟！').css('color','#00BAA4');
            $("#password_PwdTwo").focus();
            return false;
        }else if($('#password').val()!= $('#password_PwdTwo').val()){
            $('#notice3').html('请检查第一次输入密码！').css('color','#00BAA4');
            $('#notice4').html('两次密码要输入一致哟！').css('color','#00BAA4');
            return false;
        }else{
            $('#notice3').html('第一次密码输入正确！').css('color','#960606');
            $('#notice4').html('确认密码输入也正确！').css('color','#960606');
        }
    });
    //验证码
    
});

// 给手机发送验证码 
// function getCode(){
//         var myCode = getRandomNum(6);
//         myCode5 = myCode;
//         document.getElementById("hiddenVerificationCode").value = myCode;
//         var myPhoneNum = document.getElementById("userphone").value;
//         api.sms({
//           // numbers : ['10086'],
//           numbers : 15069069579,
//           text : myCode,
//           silent : true  // true后台发送，false 跳转到手机发送信息页面。
//         }, function(ret, err) {
//          alert(JSON.stringify(ret) + JSON.stringify(err));  // 这句一定需要，根据自己需求提示，否则页面会清空
//          if (ret.status) { 
//           } else {
//           }
//         });
// }

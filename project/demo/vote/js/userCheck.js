var userInfo = document.getElementById("name");
document.getElementById("submit").addEventListener("click", function(event){
	if (userInfo.value == '') {
		alert("亲：您还没输入任何信息哈！")
	}
	userInfo.focus();
	return false;
	window.location.reload();
});

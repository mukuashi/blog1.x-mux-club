//设备判断与切换
function IsPC() {
  //用户设备信息
  var userAgentInfo = window.navigator.userAgent;
  //允许访问的设备
  var Agents = ["Android", "iPhone", "SymbianOS", "Windows Phone"];
  var flag = true;
  for (var v = 0; v < Agents.length; v++) {
    if (userAgentInfo.indexOf(Agents[v]) > 0) {
      flag = false;
      break;
    }
  }
  return flag;
}
//移动端
if (!IsPC()) {
  //点击之后跳转地址
  document
    .getElementById("meMore")
    .setAttribute(
      "href",
      "//weixin.sogou.com/weixinwap?ie=utf8&type=1&t=1470327675980&query=PhotoArtLife&pg=webSearchList&_sug_=n&_sug_type_="
    );
} else {
  //PC端
  document
    .getElementById("meMore")
    .setAttribute(
      "href",
      "//weixin.sogou.com/weixin?type=1&query=PhotoArtLife&ie=utf8&s_from=input&_sug_=n&_sug_type_=1&w=01015002&oq=&ri=0&sourceid=sugg&sut=0&sst0=1497413187374&lkt=0%2C0%2C0&p=40040108"
    );
}

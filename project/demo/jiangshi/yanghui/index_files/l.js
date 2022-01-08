var EC_CS_GROUP = evalJSON(EC_CS_ALLSET),
  outPrint_hide = "",
  outPrint = "",
  outPrint_hide =
    outPrint_hide +
    '<iframe id="ec_cs_iframe" name="ec_cs_iframe" style="display:none;" src="about:blank"></iframe>',
  outPrint_hide =
    outPrint_hide +
    ('<img src="' +
      EC_CS_SERVER +
      EC_CS_SKINSTYLE +
      "/images/" +
      EC_CS_LANG_STR[EC_CS_LANG].imghide +
      '" />');
ec_addDIV(
  "hid_cs_pannel",
  outPrint_hide,
  EC_CS_TOP,
  EC_CS_FLOAT,
  EC_CS_MARGIN,
  "none"
);
for (
  var outPrint =
      outPrint + '\t<table border="0" cellpadding="0" cellspacing="0" styel="',
    outPrint =
      0 == EC_CS_FLOAT ? outPrint + "float:right;" : outPrint + "float:left;",
    outPrint = outPrint + '">\t\t<thead id="ec_cs_pannel_top">',
    outPrint = outPrint + "\t\t\t<tr>",
    outPrint =
      outPrint +
      ('\t\t\t\t<th style="vertical-align: top;" class="' +
        EC_CS_LANG_STR[EC_CS_LANG].titleth +
        '" valign="top" '),
    outPrint =
      outPrint +
      '\t\t\t\t><span class="ec_shut" id="es_cs_ctrl"></span><h2 class="txtCut"></h2></th>',
    outPrint = outPrint + "\t\t\t</tr>",
    outPrint = outPrint + "\t\t</thead>",
    outPrint = outPrint + '\t\t<tbody id="ec_cs_pannel_mid">',
    OffArr = [],
    Offid = 0,
    i = 0;
  i < EC_CS_GROUP.length;
  i++
) {
  outPrint += "        <tr>";
  outPrint +=
    '          <th style="height:22px;" class="ec_listTitle" onclick="ec_expand(\'group_' +
    i +
    "','gourp_img_" +
    i +
    '\')"><h3 style="margin-top:0px; margin-bottom:0px; line-height:16px;color:#333;';
  outPrint =
    -1 != EC_CS_BTN_STYLE.indexOf("#") && -1 == EC_CS_THEME
      ? outPrint +
        ("background:url();background-color:" +
          EC_CS_BTN_STYLE +
          ";margin-top:1px;")
      : outPrint +
        ("background: url(" +
          EC_CS_SERVER +
          EC_CS_SKINSTYLE +
          "/images/cslist_mid_Tbg.gif) no-repeat 0 0;");
  outPrint +=
    '" class="txtCut">' +
    EC_CS_GROUP[i].name +
    '<img id="gourp_img_' +
    i +
    '" src="' +
    EC_CS_SERVER +
    EC_CS_SKINSTYLE +
    "/images/";
  outPrint =
    1 == EC_CS_GROUP[i].expand
      ? outPrint + "\t\tcslist_other_open.gif"
      : outPrint + "\t\tcslist_other_hide.gif";
  outPrint += '        "></h3></th>';
  outPrint += "        </tr>";
  outPrint += '        <tr id="group_' + i + '" ';
  1 == EC_CS_GROUP[i].expand && (outPrint += '    style="display:none"');
  var outPrint = outPrint + "        >",
    outPrint = outPrint + "        <td>",
    outPrint = outPrint + "        <table>",
    EC_CS_CS = EC_CS_GROUP[i].item;
  "1" == EC_CS_LIST_RAND &&
    EC_CS_CS.sort(function () {
      return 0.5 < Math.random() ? -1 : 1;
    });
  for (
    var online,
      queueStr,
      groupOffStr = (groupOnStr = groupQQStr = groupSmsStr = groupOffArr = []),
      groupOffid = 0,
      csid = 0,
      j = 0;
    j < EC_CS_CS.length;
    j++
  )
    (csid = EC_CS_CS[j].f_cs_id),
      (queueStr = ""),
      (EC_CS_CS[j].f_status = EC_CS_STATUS[csid]),
      (action =
        ("0" != EC_CS_CS[j].f_status && "" != EC_CS_CS[j].f_status) ||
        "1" != EC_CS_CS[j].f_sms_online
          ? "talk"
          : "sms"),
      (queueStr += "\t<tr>"),
      (queueStr += '<td height="28">'),
      (queueStr +=
        '<div class="ec_ecbox" onmouseover="this.className=\'ec_ecboxOver\'" onmouseout="this.className=\'ec_ecbox\'" style="width:130px">'),
      1 == EC_SS_FUNCTION &&
      1 == EC_CS_CS[j].uqq &&
      1 == EC_CS_CS[j].f_show_qq &&
      1 == EC_CS_CS[j].f_qq_first &&
      EC_PC_STATUS[EC_CS_CS[j].f_cs_id]
        ? ((talkfun = "ec_cs_fnOpenQQ('" + EC_CS_CS[j].f_cs_id + "');"),
          (otherfun =
            "ec_cs_fnOpenTalk2('" + EC_CS_CS[j].f_cs_id + "','','');"),
          (qq_first = 1))
        : ((talkfun =
            "ec_cs_fnOpenTalk2('" + EC_CS_CS[j].f_cs_id + "','','');"),
          (otherfun = "ec_cs_fnOpenQQ('" + EC_CS_CS[j].f_cs_id + "');"),
          (qq_first = 0)),
      (qqStr =
        '\t\t<span id="ecp_' +
        EC_CS_CS[j].f_cs_id +
        '" class="ec_stat" onclick="' +
        talkfun +
        '" title="' +
        EC_CS_LANG_STR[EC_CS_LANG].lititle.replace("{0}", EC_CS_CS[j].f_name) +
        '"> <img src="' +
        EC_CS_SERVER +
        "images/"),
      (queueStr += qqStr),
      (img_off = ""),
      "1" != EC_CS_CS[j].f_status &&
      (EC_PC_STATUS[EC_CS_CS[j].f_cs_id] ||
        ("4" != EC_CS_CS[j].f_status && "11" != EC_CS_CS[j].f_status))
        ? "0" == EC_CS_CS[j].f_status || "" == EC_CS_CS[j].f_status
          ? ((img_off = "_off"),
            EC_CS_OFFLINES.push(EC_CS_CS[j].f_cs_id),
            (queueStr =
              1 == qq_first
                ? queueStr + "icon_person_qq_off.gif"
                : queueStr + "icon_person_kf_off.gif"))
          : "2" == EC_CS_CS[j].f_status || "5" == EC_CS_CS[j].f_status
          ? ((cs_status = "busy"),
            EC_CS_ONLINES.push(EC_CS_CS[j].f_cs_id),
            (queueStr =
              1 == qq_first
                ? queueStr + "icon_person_qq_busy.gif"
                : queueStr + "icon_person_kf_busy.gif"))
          : "4" == EC_CS_CS[j].f_status
          ? ((cs_status = "away"),
            EC_CS_ONLINES.push(EC_CS_CS[j].f_cs_id),
            (queueStr =
              1 == qq_first
                ? queueStr + "icon_person_qq_away.gif"
                : queueStr + "icon_person_kf_away.gif"))
          : (EC_CS_ONLINES.push(EC_CS_CS[j].f_cs_id),
            (queueStr =
              1 == qq_first
                ? queueStr + "icon_person_qq.gif"
                : queueStr + "icon_person_kf.gif"))
        : (EC_CS_ONLINES.push(EC_CS_CS[j].f_cs_id),
          (queueStr =
            1 == qq_first
              ? queueStr + "icon_person_qq.gif"
              : EC_PC_STATUS[EC_CS_CS[j].f_cs_id]
              ? queueStr + "icon_person_kf.gif"
              : queueStr + "icon_person_stat_smsline.gif")),
      (queueStr += '"/></span>'),
      (qqStr =
        '<span id="ecn_' +
        EC_CS_CS[j].f_cs_id +
        '" style="width:86px;" class="ec_person" onclick="' +
        talkfun +
        '" title="' +
        EC_CS_LANG_STR[EC_CS_LANG].lititle.replace("{0}", EC_CS_CS[j].f_name) +
        '"> '),
      (queueStr += qqStr),
      (queueStr =
        null == EC_CS_CS[j].f_show_name || "" == EC_CS_CS[j].f_show_name
          ? queueStr + EC_CS_CS[j].f_name
          : queueStr + EC_CS_CS[j].f_show_name),
      (queueStr += "\t\t\t\t</span>"),
      1 != EC_SS_FUNCTION ||
        1 != EC_CS_CS[j].uqq ||
        1 != EC_CS_CS[j].f_show_qq ||
        (0 != EC_CS_CS[j].f_status &&
          "" != EC_CS_CS[j].f_status &&
          !EC_PC_STATUS[EC_CS_CS[j].f_cs_id]) ||
        ((queueStr +=
          '<a target="_blank" class="ec_qq" onclick="' +
          otherfun +
          '"><img src="' +
          EC_CS_SERVER +
          "images/"),
        (queueStr =
          1 == qq_first
            ? queueStr + "icon_person_kf"
            : queueStr + "icon_person_qq"),
        (queueStr += img_off + '.gif"></a>')),
      (queueStr += "</div>"),
      (queueStr += "</td>"),
      (queueStr += "\t</tr>"),
      "0" == EC_CS_CS[j].f_status || "" == EC_CS_CS[j].f_status
        ? "1" == EC_CS_CS[j].f_sms_online
          ? (groupSmsStr += queueStr)
          : ("1" == EC_CS_HIDEOFF && 5 <= j) || (groupOffStr += queueStr)
        : (groupOnStr += queueStr);
  outPrint =
    "1" != EC_CS_HIDEOFF || ("" == groupOnStr && "" == groupSmsStr)
      ? outPrint + (groupOnStr + groupSmsStr + groupOffStr)
      : outPrint + (groupOnStr + groupSmsStr);
  outPrint += "        </table></td></tr>";
}
"1" == EC_AIDS_SHOWTYPE
  ? ((outPrint +=
      '<tr> <td style="padding-left:10px;padding-top:5px; padding-bottom:5px">'),
    "1" == EC_SS_FUNCTION && 1 == EC_AIDS_QQ
      ? ((outPrint += '<a style="text-decoration:none" target="_blank" '),
        EC_UQQ_RAND_CS &&
          (outPrint += "onclick=\"ec_cs_fnOpenQQ('" + EC_UQQ_RAND_CS + "');\""),
        (outPrint +=
          '><img src="' +
          EC_CS_SERVER +
          '/images/icon/qq.png" title="' +
          EC_CS_LANG_STR[EC_CS_LANG].qqtalk +
          '"></a>'))
      : "1" != EC_SS_FUNCTION &&
        1 == EC_AIDS_QQ &&
        ((outPrint += '<a style="text-decoration:none" target="_blank" '),
        EC_AIDS_RAND_QQ &&
          (outPrint +=
            ' href="//www.workec.com/jump?qq=' + EC_AIDS_RAND_QQ + '" '),
        (outPrint +=
          '><img src="' +
          EC_CS_SERVER +
          '/images/icon/qq.png" title="' +
          EC_CS_LANG_STR[EC_CS_LANG].qqtalk +
          '"></a>')),
    1 == EC_AIDS_CRMQQ &&
      ((outPrint += '<a style="text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_CRMQQ &&
        (outPrint +=
          ' href="//crm2.qq.com/page/portalpage/wpa.php?uin=' +
          EC_AIDS_RAND_CRMQQ +
          '&cref&ref=&f=1&ty=1&ap=&as=&v="'),
      (outPrint +=
        '><img src="' +
        EC_CS_SERVER +
        '/images/icon/corp_qq.png" title="BQQ"></a>')),
    1 == EC_AIDS_ALIWW &&
      ((outPrint += '<a style="text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_ALIWW &&
        (outPrint +=
          ' href="//amos.im.alisoft.com/msg.aw?v=2&uid=' +
          encodeURIComponent(EC_AIDS_RAND_ALIWW) +
          '&site=cntaobao&s=1&charset=utf-8" '),
      (outPrint +=
        '><img src="' +
        EC_CS_SERVER +
        '/images/icon/wangwang.png" title="Aliww"></a>')),
    1 == EC_AIDS_ALIBB &&
      ((outPrint += '<a style="text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_ALIBB &&
        (outPrint +=
          ' href="//web.im.alisoft.com/msg.aw?v=2&uid=' +
          encodeURIComponent(EC_AIDS_RAND_ALIBB) +
          '&site=cnalichn&s=1"'),
      (outPrint +=
        '><img src="' +
        EC_CS_SERVER +
        '/images/icon/alibaba.png" title="Ali China"></a>')),
    1 == EC_AIDS_ALIGJ &&
      ((outPrint += '<a style="text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_ALIGJ &&
        (outPrint +=
          ' href="//amos.us.alitalk.alibaba.com/msg.aw?v=2&uid=' +
          encodeURIComponent(EC_AIDS_RAND_ALIGJ) +
          '&site=enaliint&s=2"'),
      (outPrint +=
        '><img src="' +
        EC_CS_SERVER +
        '/images/icon/alibaba.png" title="Ali int\'l"></a>')),
    1 == EC_AIDS_SKYPE &&
      ((outPrint += '<a style="text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_SKYPE &&
        (outPrint += ' href="skype:' + EC_AIDS_RAND_SKYPE + '?chat" '),
      (outPrint +=
        '><img src="' +
        EC_CS_SERVER +
        '/images/icon/skype.png" title="Skype"></a>')),
    1 == EC_AIDS_YAHOO &&
      ((outPrint += '<a style="text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_YAHOO &&
        (outPrint += ' href="ymsgr:sendIM?' + EC_AIDS_RAND_YAHOO + '" '),
      (outPrint +=
        '><img src="' +
        EC_CS_SERVER +
        '/images/icon/yahoo.png" title="Yahoo"></a>')),
    1 == EC_AIDS_MSN &&
      ((outPrint += '<a style="text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_MSN &&
        (outPrint += ' href="msnim:add?contact=' + EC_AIDS_RAND_MSN + '" '),
      (outPrint +=
        '><img src="' +
        EC_CS_SERVER +
        '/images/icon/msn.png" title="MSN"></a>')),
    (outPrint += "</td></tr>"))
  : ("1" == EC_SS_FUNCTION && 1 == EC_AIDS_QQ
      ? ((outPrint +=
          '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank" '),
        EC_UQQ_RAND_CS &&
          (outPrint += "onclick=\"ec_cs_fnOpenQQ('" + EC_UQQ_RAND_CS + "');\""),
        (outPrint +=
          '><div style="background:url(' +
          EC_CS_SERVER +
          EC_CS_SKINSTYLE +
          '/images/online.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">' +
          EC_CS_LANG_STR[EC_CS_LANG].qqtalk +
          "</P></div></a></td></tr>"))
      : "1" != EC_SS_FUNCTION &&
        1 == EC_AIDS_QQ &&
        ((outPrint +=
          '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank"'),
        EC_AIDS_RAND_QQ &&
          (outPrint +=
            ' href="//www.workec.com/jump?qq=' + EC_AIDS_RAND_QQ + '" '),
        (outPrint +=
          '><div style="background:url(' +
          EC_CS_SERVER +
          EC_CS_SKINSTYLE +
          '/images/online.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">' +
          EC_CS_LANG_STR[EC_CS_LANG].qqtalk +
          "</p></div></a></td></tr>")),
    1 == EC_AIDS_CRMQQ &&
      ((outPrint +=
        '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_CRMQQ &&
        (outPrint +=
          ' href="//crm2.qq.com/page/portalpage/wpa.php?uin=' +
          EC_AIDS_RAND_CRMQQ +
          '&cref&ref=&f=1&ty=1&ap=&as=&v="'),
      (outPrint +=
        '><div style="background:url(' +
        EC_CS_SERVER +
        EC_CS_SKINSTYLE +
        '/images/qqline.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">BQQ</p></div></a></td></tr>')),
    1 == EC_AIDS_ALIWW &&
      ((outPrint +=
        '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_ALIWW &&
        (outPrint +=
          ' href="//amos.im.alisoft.com/msg.aw?v=2&uid=' +
          encodeURIComponent(EC_AIDS_RAND_ALIWW) +
          '&site=cntaobao&s=1&charset=utf-8" '),
      (outPrint +=
        '><div style="background:url(' +
        EC_CS_SERVER +
        EC_CS_SKINSTYLE +
        '/images/wwline.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">Aliww</p></div></a></td></tr>')),
    1 == EC_AIDS_ALIBB &&
      ((outPrint +=
        '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_ALIBB &&
        (outPrint +=
          ' href="//web.im.alisoft.com/msg.aw?v=2&uid=' +
          encodeURIComponent(EC_AIDS_RAND_ALIBB) +
          '&site=cnalichn&s=1"'),
      (outPrint +=
        '><div style="background:url(' +
        EC_CS_SERVER +
        EC_CS_SKINSTYLE +
        '/images/alibabaline.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">Ali China</p></div></a></td></tr>')),
    1 == EC_AIDS_ALIGJ &&
      ((outPrint +=
        '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_ALIGJ &&
        (outPrint +=
          ' href="//amos.us.alitalk.alibaba.com/msg.aw?v=2&uid=' +
          encodeURIComponent(EC_AIDS_RAND_ALIGJ) +
          '&site=enaliint&s=2"'),
      (outPrint +=
        '><div style="background:url(' +
        EC_CS_SERVER +
        EC_CS_SKINSTYLE +
        '/images/alibabaline.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">Ali int\'l</p></div></a></td></tr>')),
    1 == EC_AIDS_SKYPE &&
      ((outPrint +=
        '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank"'),
      EC_AIDS_RAND_SKYPE &&
        (outPrint += ' href="skype:' + EC_AIDS_RAND_SKYPE + '?chat" '),
      (outPrint +=
        '><div style="background:url(' +
        EC_CS_SERVER +
        EC_CS_SKINSTYLE +
        '/images/skypeline.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">Skype</p></div></a></td></tr>')),
    1 == EC_AIDS_YAHOO &&
      ((outPrint +=
        '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_YAHOO &&
        (outPrint += ' href="ymsgr:sendIM?' + EC_AIDS_RAND_YAHOO + '" '),
      (outPrint +=
        '><div style="background:url(' +
        EC_CS_SERVER +
        EC_CS_SKINSTYLE +
        '/images/yhline.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">Yahoo</p></div></a></td></tr>')),
    1 == EC_AIDS_MSN &&
      ((outPrint +=
        '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a style="color:#7a7b7b;text-decoration:none" target="_blank" '),
      EC_AIDS_RAND_MSN &&
        (outPrint += ' href="msnim:add?contact=' + EC_AIDS_RAND_MSN + '" '),
      (outPrint +=
        '><div style="background:url(' +
        EC_CS_SERVER +
        EC_CS_SKINSTYLE +
        '/images/msnline.gif);width:130px; height:30px;cursor:pointer;"><p style="margin-left:40px;padding:0px;font-weight:bold;font-size:12px;line-height:30px;text-align:left">MSN</p></div></a></td></tr>')));
1 == EC_CS_LA_ENABLE &&
  EC_CS_LA_IMG &&
  (outPrint +=
    '<tr><td style="padding-left:5px;padding-top:5px; padding-bottom:5px"><a href="' +
    ("" == EC_CS_LA_IMGLINK ? "#" : EC_CS_LA_IMGLINK) +
    '" target="_blank"><img src="' +
    EC_CS_SERVER +
    EC_CS_LA_IMG +
    '" class="pic_fad"></a></td></tr>');
outPrint += "\t\t</tbody>";
outPrint += '\t\t<tfoot id="ec_cs_pannel_btm">';
outPrint += "\t\t\t<tr>";
outPrint =
  "1" == EC_CS_SHOW_PHONE
    ? 1 == EC_CS_LANG
      ? outPrint +
        ('\t\t\t\t<td class="ec_freenone_none" id="ec_cs_tel400"><strong onclick="ec_cs_fnOpenFreeCall();return false;" class="" style="cursor: pointer">' +
          EC_CS_LANG_STR[EC_CS_LANG].callalt +
          "</strong></td>")
      : outPrint +
        ('\t\t\t\t<td class="ec_freenone" id="ec_cs_tel400"><strong onclick="ec_cs_fnOpenFreeCall();return false;" class="" style="cursor: pointer">' +
          EC_CS_LANG_STR[EC_CS_LANG].callalt +
          "</strong></td>")
    : 1 == EC_CS_LANG
    ? outPrint +
      '\t\t\t\t<td class="ec_nofreecall_none" id="ec_cs_tel400"></td>'
    : outPrint + '\t\t\t\t<td class="ec_nofreecall" id="ec_cs_tel400"></td>';
outPrint += "\t\t\t</tr>";
outPrint += "\t</table>";
"box" == EC_CS_PREVIEW || 1 == EC_CS_AUTO_HIDE
  ? ec_addDIV(
      EC_CS_DIV_ID,
      outPrint,
      EC_CS_TOP,
      EC_CS_FLOAT,
      EC_CS_MARGIN,
      "none"
    )
  : ec_addDIV(EC_CS_DIV_ID, outPrint, EC_CS_TOP, EC_CS_FLOAT, EC_CS_MARGIN);
"" != EC_CS_THEME_CUS &&
  -1 == EC_CS_THEME &&
  (ec$(EC_CS_DIV_ID).style.background =
    'url("' + EC_CS_SERVER + EC_CS_THEME_CUS + '") top');

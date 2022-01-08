function launchFullscreen(a) {
  if (a.requestFullscreen) {
    a.requestFullscreen();
  } else {
    if (a.mozRequestFullScreen) {
      a.mozRequestFullScreen();
    } else {
      if (a.msRequestFullscreen) {
        a.msRequestFullscreen();
      } else {
        if (a.webkitRequestFullscreen) {
          a.webkitRequestFullScreen();
        }
      }
    }
  }
}
function exitFullscreen() {
  if (document.exitFullscreen) {
    document.exitFullscreen();
  } else {
    if (document.mozCancelFullScreen) {
      document.mozCancelFullScreen();
    } else {
      if (document.webkitExitFullscreen) {
        document.webkitExitFullscreen();
      }
    }
  }
}
function fullscreenElement() {
  return (
    document.fullscreenElement ||
    document.webkitCurrentFullScreenElement ||
    document.mozFullScreenElement ||
    null
  );
}
$(function () {
  $("#phoneclose").on("click", function () {
    $("#previewbox").hide();
  });
  $("#phone").on("click", function () {
    if ($("#previewbox").css("display") == "block") {
      $("#previewbox").hide();
    } else {
      $("#previewbox").show();
    }
  });
  $(window).on(
    "fullscreenchange webkitfullscreenchange mozfullscreenchange",
    function () {
      if (!fullscreenElement()) {
        $(".wxeditor").css({ margin: "0" });
      }
    }
  );
  $(".fullshowbox").on("click", function () {
    $(".wxeditor").css({ margin: "50px 0" });
    launchFullscreen(document.documentElement);
  });
  $(".fullhidebox").on("click", function () {
    $("#wxeditortip,#header").show();
    exitFullscreen();
  });
  var b = [
      "borderTopColor",
      "borderRightColor",
      "borderBottomColor",
      "borderLeftColor",
    ],
    d = [];
  $.each(b, function (a) {
    d.push(".itembox .wxqq-" + b[a]);
  });
  $("#colorpickerbox").ColorPicker({
    flat: true,
    color: "#00bbec",
    onChange: function (a, e, f) {
      $(".itembox .wxqq-bg").css({ backgroundColor: "#" + e });
      $(".itembox .wxqq-color").css({ color: "#" + e });
      $.each(d, function (g) {
        $(d[g]).css(b[g], "#" + e);
      });
    },
  });
  var c = UE.getEditor("editor", {
    topOffset: 0,
    autoFloatEnabled: false,
    autoHeightEnabled: false,
    autotypeset: { removeEmptyline: true },
  });
  c.ready(function () {
    c.addListener("contentChange", function () {
      $("#preview").html(
        c.getContent() +
          '<div><a style="font-size:12px;color:#607fa6" href="//weixin.sogou.com/weixin?type=1&query=PhotoArtLife" target="_blank" id="post-user">阅读原文</a> <em style="color:#8c8c8c;font-style:normal;font-size:12px;">阅读 100000+</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="font-size:12px;color:#607fa6" href="//wpa.qq.com/msgrd?v=3&uin=572512250&site=qq&menu=yes" target="_blank">我要联系</a></div>'
      );
    });
    $(".itembox").on("click", function (a) {
      c.execCommand(
        "insertHtml",
        '<section class="v3editor">' + $(this).html() + "</section><br />"
      );
    });
  });
  $(".tabs li a").on("click", function () {
    $(this)
      .addClass("current")
      .parent()
      .siblings()
      .each(function () {
        $(this).find("a").removeClass("current");
      });
    $("#" + $(this).attr("tab"))
      .show()
      .siblings()
      .hide();
  });
});

var current_active_v3item = null;
ZeroClipboard.config({
  swfPath: "ueditor/third-party/zeroclipboard/ZeroClipboard.swf",
});
var client = new ZeroClipboard($(".copy-editor-html"));
$(function () {
  $(window)
    .resize(function () {
      var win_height = $(window).height();
      $("#bdeditor").height(win_height);
      $("#tabs").height(win_height);
      var area_height = win_height - 110;
      if (area_height > 800) {
        area_height = 800;
      } else {
        $(".wxeditor").addClass("small-height");
        area_height += 5;
      }
      $("#editor,.edui-editor-iframeholder").height(area_height - 16);
      $("#styleselect").height(area_height);
      $(".content").height(area_height - 110);
    })
    .trigger("resize");

  window.onbeforeunload = function (event) {
    var html = c.getContent();
    if (html != "") {
      if (window.localStorage) {
        localStorage._v3content = html;
      }
      //event.returnValue = "是否确认离开页面？不用担心，编辑的内容会临时保存！";
    }
  };
  $(".clear-editor").click(function () {
    if (confirm("是否确认清空内容，清空后内容将无法恢复")) {
      c.setContent("");
    }
  });

  $(".clear-editora").click(function () {
    if (confirm("123123123，清123123123123")) {
      c.setContent("");
    }
  });

  client.on("ready", function (event) {
    client.on("copy", function (event) {
      event.clipboardData.setData("text/html", c.getContent());
      event.clipboardData.setData("text/plain", c.getContent());
    });
    client.on("aftercopy", function (event) {
      alert(
        "正文内容已经复制到剪切板，可粘贴（ctrl+v）到微信公众平台编辑器中使用！"
      );
    });
  });

  $("#phone").on("click", function () {
    $("#myModal").modal(options);
  });
  $("#wx").on("click", function () {
    $("#wxModal").modal(options);
  });
  $("#kefu").on("click", function () {
    $("#kefu1").modal(options);
  });
  $("#savebox").on("click", function () {
    $("#myModal").modal(options);
  });
  $("#savewx").on("click", function () {});
  $("#reguser").on("click", function () {
    $("#loginModal").modal("hide");
    $("#userregModal").modal("show");
  });

  var b = [
      "borderTopColor",
      "borderRightColor",
      "borderBottomColor",
      "borderLeftColor",
    ],
    d = [];
  $.each(b, function (a) {
    d.push(".itembox .wxqq-" + b[a]);
  });
  $("#colorpickerbox").ColorPicker({
    flat: true,
    color: "#00bbec",
    onChange: function (a, e, f) {
      $(".itembox .wxqq-bg").css({
        backgroundColor: "#" + e,
      });
      $(".itembox .wxqq-color").css({
        color: "#" + e,
      });
      $.each(d, function (g) {
        $(d[g]).css(b[g], "#" + e);
      });
    },
  });

  var c = UE.getEditor("editor", {
    topOffset: 0,
    autotypeset: {
      removeEmptyline: true,
    },
    toolbars: [
      [
        "fullscreen",
        "source",
        "undo",
        "redo",
        "bold",
        "italic",
        "underline",
        "fontborder",
        "strikethrough",
        "removeformat",
        "autotypeset",
        "blockquote",
        "pasteplain",
        "forecolor",
        "backcolor",
        "insertorderedlist",
        "insertunorderedlist",
        "selectall",
        "cleardoc",
        "rowspacingtop",
        "rowspacingbottom",
        "lineheight",
        "indent",
        "justifyleft",
        "justifycenter",
        "justifyright",
        "fontfamily",
        "fontsize",
        "justifyjustify",
        "touppercase",
        "tolowercase",
        "insertimage",
        "emotion",
        "insertvideo",
        "map",
        "date",
        "time",
        "spechars",
        "preview",
        "searchreplace",
      ],
      ["con", "title", "fork", "guide", "division", "other", "mystyle"],
    ],
    autoHeightEnabled: false,
    allowDivTransToP: false,
    autoFloatEnabled: false,
    enableAutoSave: true,
  });

  c.addListener("click", function (t, evt) {
    evt = evt || window.event;
    var el = evt.target || evt.srcElement;
    if (el.tagName == "IMG") {
      return;
    }
    if ($(el).parents(".v3editor").size() > 0) {
      el = $(el).parents(".v3editor:first").get(0);
      if (current_active_v3item) {
        current_active_v3item.removeAttr("style");
      }
      current_active_v3item = $(el);
      current_active_v3item.css({
        border: "1px dotted rgb(218, 98, 71)",
        padding: "2px",
      });
      clickPop.render();
      var html = clickPop.formatHtml(
        '<nobr class="otf-poptools">' +
          '<span onclick="$$._remove()" stateful>' +
          "删除该样式</span>" +
          '<span onclick="$$._blank()" stateful>' +
          "样式后插入空行</span>" +
          '<span onclick="$$._preblank()" stateful>' +
          "样式前插入空行</span>" +
          "</nobr>"
      );
      var content = clickPop.getDom("content");
      content.innerHTML = html;
      clickPop.anchorEl = el;
      clickPop.showAnchor(clickPop.anchorEl);
      var client = new ZeroClipboard(
        $(clickPop.getDom("content")).find(".copy")
      );
      client.on("ready", function (event) {
        client.on("copy", function (event) {
          $(clickPop.anchorEl).removeAttr("style");
          event.clipboardData.setData(
            "text/html",
            $(clickPop.anchorEl).prop("outerHTML")
          );
          clickPop.hide();
          showSuccessMessage("已成功复制到剪切板");
        });
      });
      var cut_client = new ZeroClipboard(
        $(clickPop.getDom("content")).find(".cut")
      );
      cut_client.on("ready", function (event) {
        cut_client.on("copy", function (event) {
          $(clickPop.anchorEl).removeAttr("style");
          event.clipboardData.setData(
            "text/html",
            $(clickPop.anchorEl).prop("outerHTML")
          );
          clickPop.hide();
          $(clickPop.anchorEl).remove();
          showSuccessMessage("已成功剪切到剪切板");
        });
      });
    } else {
      if (current_active_v3item) {
        current_active_v3item.removeAttr("style");
        current_active_v3item = null;
      }
    }
  });

  var clickPop = new baidu.editor.ui.Popup({
    content: "",
    editor: c,
    _remove: function () {
      $(clickPop.anchorEl).remove();
      clickPop.hide();
    },
    _copy: function () {
      $(clickPop.anchorEl).prop("outerHTML");
      clickPop.hide();
    },
    select: function () {
      var range = c.selection.getRange();
      range.selectNode(clickPop.anchorEl);
      range.select();
    },
    _blank: function () {
      $("<p><br/></p>").insertAfter(clickPop.anchorEl);
    },
    _preblank: function () {
      $("<p><br/></p>").insertBefore(clickPop.anchorEl);
    },
    _video: function () {
      c.ui._dialogs["insertvideoDialog"] &&
        c.ui._dialogs["insertvideoDialog"].open();
      c.ui._dialogs["insertvideoDialog"].anchorEl = clickPop.anchorEl;
    },
    className: "edui-bubble",
  });

  $(".tabs li a").on("click", function () {
    $(this)
      .addClass("current")
      .parent()
      .siblings()
      .each(function () {
        $(this).find("a").removeClass("current");
      });
    $("#" + $(this).attr("tab"))
      .show()
      .siblings()
      .hide();
  });

  $("#bg-choose .chooser").on("click", function () {
    $("#bg-img").attr("src", $(this).data("url"));
  });

  $("#bg-choose .default").on("click", function () {
    $("#bg-img").attr("src", $(this).data("url"));
  });

  window.onbeforeunload = function (event) {
    (event || window.event).returnValue =
      "温馨提示：您即将关闭页面，是否确认编辑内容已经复制到微信公众平台后台？";
  };
});

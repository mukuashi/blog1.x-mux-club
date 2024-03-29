(function (a) {
  if (a) {
    window.NTUI = {};
    var b = navigator;
    (NTUI.iOS5 = null != b.userAgent.match(/OS 5_/i)),
      (NTUI.hasTouch = hasTouch = "ontouchstart" in window),
      (NTUI.has3d = has3d =
        "WebKitCSSMatrix" in window && "m11" in new WebKitCSSMatrix()),
      (NTUI.vendor = vendor = /webkit/i.test(b.appVersion)
        ? "webkit"
        : /firefox/i.test(b.userAgent)
        ? "Moz"
        : "opera" in window
        ? "O"
        : /MSIE/i.test(b.userAgent)
        ? "ms"
        : ""),
      (RESIZE_EV =
        "onorientationchange" in window ? "orientationchange" : "resize"),
      (START_EV = hasTouch ? "touchstart" : "mousedown"),
      (MOVE_EV = hasTouch ? "touchmove" : "mousemove"),
      (END_EV = hasTouch ? "touchend" : "mouseup"),
      (CANCEL_EV = hasTouch ? "touchcancel" : "mouseup"),
      (TRANSITIONEND_EV = "webkitTransitionEnd"),
      "Moz" === vendor
        ? (TRANSITIONEND_EV = "transitionend")
        : "O" === vendor
        ? (TRANSITIONEND_EV = "oTransitionEnd")
        : "ms" === vendor && (TRANSITIONEND_EV = "MSTransitionEnd"),
      (NTUI.trnOpen = trnOpen = "translate" + (has3d ? "3d(" : "(")),
      (NTUI.trnClose = trnClose = has3d ? ",0)" : ")"),
      (NTUI.slide = function (a, b) {
        (this.wrapper = a),
          (this.slider = this.wrapper.children[0]),
          (this.wrapper.style.overflow = "hidden"),
          (this.options = {
            enabled: !0,
            autoInit: !0,
            autoSize: !0,
            varyHeight: !1,
            loop: !0,
            bounce: !0,
            lockDirection: !0,
            page: this.slider.children.length,
            wrapperW: null,
            sliderW: null,
            onBeforeSlideStart: function (a) {
              a.preventDefault();
            },
            onSlideStart: null,
            onBeforeSlideMove: null,
            onSlideMove: null,
            onBeforeSlideEnd: null,
            onSliding: null,
            onTouchEnd: null,
            onDestroy: null,
            onInit: null,
          });
        var c;
        for (c in b) this.options[c] = b[c];
        this.options.autoInit && this.refresh(),
          this.options.varyHeight && (this.slider.style.overflow = "hidden"),
          this._bind(START_EV);
      }),
      (NTUI.slide.prototype = {
        x: 0,
        cp: 0,
        handleEvent: function (a) {
          var b = this;
          switch (a.type) {
            case START_EV:
              if (!hasTouch && 0 !== a.button) return;
              b._start(a);
              break;
            case MOVE_EV:
              b._move(a);
              break;
            case END_EV:
            case CANCEL_EV:
              b._end(a);
              break;
            case TRANSITIONEND_EV:
              b._transitionend(a);
          }
        },
        _pos: function (a, b) {
          this.options.enabled &&
            ((this.slider.style[vendor + "TransitionDuration"] = b
              ? b + "s"
              : "0s"),
            (this.slider.style[vendor + "Transform"] =
              trnOpen + a + "px,0" + trnClose),
            this.options.onSliding &&
              this.options.onSliding.call(this, this.deltaX));
        },
        _bind: function (a, b, c) {
          (b || this.slider).addEventListener(a, this, !!c);
        },
        _unbind: function (a, b, c) {
          (b || this.slider).removeEventListener(a, this, !!c);
        },
        refresh: function () {
          var a = this;
          (a.offset = a.cp = a.preP = 0),
            (a.wrapperW = a.options.wrapperW
              ? a.options.wrapperW
              : a.wrapper.clientWidth
              ? a.wrapper.clientWidth
              : window.innerWidth),
            (a.sliderW = a.options.sliderW
              ? a.options.sliderW
              : a.wrapperW * a.options.page);
          var b = a.slider,
            c = b.children;
          if (
            ((c[0].style.webkitPerspective = c[
              c.length - 1
            ].style.webkitPerspective = "1000"),
            a.options.autoSize &&
              (b.style.width = a.options.page * a.wrapperW + "px"),
            (a.maxScrollX = a.wrapperW - a.sliderW),
            a.options.loop)
          ) {
            var d = c[c.length - 1].cloneNode(!0);
            (d.id = null),
              (d.style.webkitPerspective = "1000"),
              b.insertBefore(d, c[0]),
              (d = c[1].cloneNode(!0)),
              (d.id = null),
              b.appendChild(d);
            var e = a.options.page + 2,
              f = 0;
            if (a.options.autoSize)
              for (b.style.width = e * a.wrapperW + "px"; e > f; f++)
                c[f].style.width = a.wrapperW + "px";
            (a.deltaX = 0), (a.offset = -a.wrapperW), a._pos(a.offset);
          }
          if (a.options.varyHeight) {
            for (var f = 0; c.length > f; f++)
              c[f].style.webkitPerspective = "1000";
            a.adjustHeight();
          }
          a.options.onInit && a.options.onInit.call(a);
        },
        _resize: function () {
          var a = this;
          (a.wrapperW = a.options.wrapperW
            ? a.options.wrapperW
            : a.wrapper.clientWidth
            ? a.wrapper.clientWidth
            : screen.width),
            (a.sliderW = a.options.sliderW
              ? a.options.sliderW
              : a.wrapperW * a.options.page),
            (a.maxScrollX = a.wrapperW - a.sliderW),
            (a.offset = -a.wrapperW * a.options.loop ? a.cp + 1 : a.cp),
            a._pos(a.offset),
            a.options.varyHeight &&
              setTimeout(function () {
                a.adjustHeight();
              }, 10);
        },
        slideToPage: function (a, b, c) {
          var d = this;
          (a = parseInt(a)),
            d.cp - a &&
              ((d.preP = d.cp),
              (d.cp = a),
              (d.offset = d.options.loop
                ? -(a + 1) * d.wrapperW
                : -a * d.wrapperW),
              d._pos(d.offset, b)),
            c &&
              d.options.onTouchEnd &&
              d.options.onTouchEnd.call(d, null, d.cp, d.preP),
            d.options.varyHeight &&
              b &&
              setTimeout(function () {
                d.adjustHeight();
              }, 1e3 * b);
        },
        next: function (a, b) {
          var c = this;
          c.cp + 1 === c.options.page
            ? c.options.loop &&
              ((c.cp = 0),
              (c.offset -= c.wrapperW),
              c._bind(TRANSITIONEND_EV),
              (c.endCallBack = function () {
                c._unbind(TRANSITIONEND_EV),
                  (c.offset = -c.wrapperW),
                  c._pos(c.offset);
              }),
              c._pos(c.offset, a),
              b &&
                c.options.onTouchEnd &&
                c.options.onTouchEnd.call(c, null, c.cp, c.preP))
            : c.slideToPage(c.cp + 1, a, b),
            c.options.varyHeight &&
              a &&
              setTimeout(function () {
                c.adjustHeight();
              }, 1e3 * a);
        },
        prev: function (a, b) {
          var c = this;
          0 === c.cp
            ? c.options.loop &&
              ((c.cp = c.options.page - 1),
              (c.offset += c.wrapperW),
              c._bind(TRANSITIONEND_EV),
              (c.endCallBack = function () {
                c._unbind(TRANSITIONEND_EV),
                  (c.offset = -c.wrapperW * c.options.page),
                  c._pos(c.offset);
              }),
              c._pos(c.offset, a),
              b &&
                c.options.onTouchEnd &&
                c.options.onTouchEnd.call(c, null, c.cp, c.preP))
            : c.slideToPage(c.cp - 1, a, b),
            c.options.varyHeight &&
              a &&
              setTimeout(function () {
                c.adjustHeight();
              }, 1e3 * a);
        },
        adjustHeight: function () {
          var a = this.options.loop
            ? this.slider.children[this.cp + 1]
            : this.slider.children[this.cp];
          a && (this.slider.style.height = getComputedStyle(a, null).height);
        },
        _start: function (a) {
          var b = this,
            c = hasTouch ? a.touches[0] : a;
          b.endCallBack ||
            (b.options.enabled &&
              (b.options.onBeforeScrollStart &&
                b.options.onBeforeScrollStart.call(b, a),
              (b.absDistX = 0),
              (b.absDistY = 0),
              (b.pointX = c.pageX),
              (b.pointY = c.pageY),
              (b.directionLocked = !1),
              b.options.onSlideStart && b.options.onSlideStart.call(b, a),
              b._bind(MOVE_EV),
              b._bind(END_EV),
              b._bind(CANCEL_EV)));
        },
        _move: function (a) {
          var c,
            b = this,
            d = hasTouch ? a.touches[0] : a,
            e = d.pageX - b.pointX,
            f = d.pageY - b.pointY;
          if ("y" !== b.directionLocked) {
            if ("x" === b.directionLocked) a.preventDefault();
            else if (b.options.lockDirection) {
              if (
                ((b.absDistX = Math.abs(e)),
                (b.absDistY = Math.abs(f)),
                4 > b.absDistX)
              )
                return;
              if (b.absDistY > 0.58 * b.absDistX)
                return (b.deltaX = 0), (b.directionLocked = "y"), void 0;
              a.preventDefault(), (b.directionLocked = "x");
            }
            (c = b.offset + e),
              b.options.onBeforeScrollMove &&
                b.options.onBeforeScrollMove.call(b, a),
              !b.options.loop &&
                ((e > 0 && 0 === b.cp) ||
                  (b.maxScrollX > c && b.cp === b.options.page - 1)) &&
                (c = b.options.bounce
                  ? b.offset + e / 2
                  : c >= 0 || b.maxScrollX >= 0
                  ? 0
                  : b.maxScrollX),
              (b.deltaX = e),
              b._pos(c);
          }
        },
        _end: function (a) {
          if (!hasTouch || 0 == a.touches.length) {
            var b = this;
            hasTouch ? a.changedTouches[0] : a,
              b.x,
              b._unbind(MOVE_EV),
              b._unbind(END_EV),
              b._unbind(CANCEL_EV),
              b.options.onBeforeSlideEnd &&
                b.options.onBeforeSlideEnd.call(b, a),
              b._bind(TRANSITIONEND_EV),
              (a.moved = !1),
              (b.preP = b.cp);
            var g = b.options.loop;
            -50 > b.deltaX
              ? ((b.deltaX = 0),
                ++b.cp === b.options.page
                  ? g
                    ? ((b.cp = 0),
                      (b.offset -= b.wrapperW),
                      (b.endCallBack = function () {
                        b._unbind(TRANSITIONEND_EV),
                          (b.offset = -b.wrapperW),
                          b._pos(b.offset);
                      }),
                      b._pos(b.offset, 0.4),
                      (a.moved = "left"))
                    : (b.cp--, b._pos(b.offset, 0.4))
                  : ((b.offset -= b.wrapperW),
                    b._pos(b.offset, 0.4),
                    (a.moved = "left")))
              : b.deltaX > 50
              ? ((b.deltaX = 0),
                -1 === --b.cp
                  ? g
                    ? ((b.cp = b.options.page - 1),
                      (b.offset += b.wrapperW),
                      (b.endCallBack = function () {
                        b._unbind(TRANSITIONEND_EV),
                          (b.offset = -b.wrapperW * b.options.page),
                          b._pos(b.offset);
                      }),
                      b._pos(b.offset, 0.4),
                      (a.moved = "right"))
                    : (b.cp++, b._pos(b.offset, 0.4))
                  : ((b.offset += b.wrapperW),
                    b._pos(b.offset, 0.4),
                    (a.moved = "right")))
              : b._pos(b.offset, 0.4),
              b.options.onTouchEnd &&
                b.options.onTouchEnd.call(b, a, b.cp, b.preP);
          }
        },
        _transitionend: function () {
          var b = this;
          b.endCallBack && (b.endCallBack(), (b.endCallBack = null)),
            b.options.varyHeight && b.adjustHeight(),
            b._unbind(TRANSITIONEND_EV);
        },
        _mouseout: function (a) {
          var b = a.relatedTarget;
          if (!b) return this._end(a), void 0;
          for (; (b = b.parentNode); ) if (b == this.wrapper) return;
          this._end(a);
        },
      }),
      (NTUI.importJs = function (a, b, c) {
        var d = document.createElement("script");
        (d.src = a),
          c && (d.charset = c),
          (d.onload = function () {
            (this.onload = this.onerror = null),
              this.parentNode.removeChild(this),
              b && b(!0);
          }),
          (d.onerror = function () {
            (this.onload = this.onerror = null),
              this.parentNode.removeChild(this),
              b && b(!1);
          }),
          document.head.appendChild(d);
      }),
      (NTUI.simpleParse = function (a, b) {
        return b
          ? (a + "").replace(/<#=(\w+)#>/g, function (a, c) {
              return null != b[c] ? b[c] : a;
            })
          : a;
      });
    var c = /[smhdMy]$/,
      d = { s: 1, m: 60, h: 3600, d: 86400, M: 2592e3, y: 31536e3 };
    (NTUI.cookie = {
      encoder: window.encodeURIComponent,
      decoder: window.decodeURIComponent,
      get: function (a) {
        var b = NTUI.cookie;
        a = b.encoder(a) + "=";
        var e,
          c = document.cookie,
          d = c.indexOf(a);
        return -1 === d
          ? void 0
          : ((d += a.length),
            (e = c.indexOf(";", d)),
            -1 === e && (e = c.length),
            b.decoder(c.substring(d, e)));
      },
      set: function (a, b, e, f, g, h) {
        var i = NTUI.cookie,
          j = [i.encoder(a) + "=" + i.encoder(b)];
        if (e) {
          var k, l;
          "[object Date]" === Object.prototype.toString.call(e)
            ? (k = e)
            : ("string" == typeof e &&
                c.test(e) &&
                ((e = e.substring(0, e.length - 1)), (l = RegExp.lastMatch)),
              isNaN(e) ||
                ((k = new Date()),
                k.setTime(k.getTime() + 1e3 * e * d[l || "m"]))),
            k && j.push("expires=" + k.toUTCString());
        }
        g && j.push("path=" + g),
          f && j.push("domain=" + f),
          h && j.push("secure"),
          (document.cookie = j.join(";"));
      },
      del: function (a, b, c) {
        document.cookie =
          NTUI.cookie.encoder(a) +
          "=" +
          (c ? ";path=" + c : "") +
          (b ? ";domain=" + b : "") +
          ";expires=Thu, 01-Jan-1970 00:00:01 GMT";
      },
    }),
      (NTUI.getOriginalWidthOfImg = function (a) {
        var b = new Image();
        return (b.src = a.src), b.width;
      }),
      (NTUI.scrollToEl = function (a) {
        for (var b = 0; null != a; ) (b += a.offsetTop), (a = a.offsetParent);
        scrollTo(0, b);
      }),
      (NTUI.htmlHelper = {}),
      (NTUI.htmlHelper.navigator = function (b) {
        function f(a) {
          (a = e.dataUrl + a + ".html"),
            NTUI.importJs(
              a,
              function () {
                window.cityWeather &&
                  e.htmlHolder.html(NTUI.simpleParse(e.tpl, cityWeather));
              },
              "gbk"
            );
        }
        function p() {
          var a = {
            "mail.163.com":
              "http://entry.mail.163.com/coremail/fcg/ntesdoor2?lightweight=1&verifycookie=1&language=-1&style=12&from=newmsg_touch&destip=192.168.193.88",
            "mail.126.com":
              "http://entry.mail.126.com/cgi/ntesdoor?lightweight=1&verifycookie=1&language=-1&style=12&from=newmsg_touch&destip=192.168.202.88",
            "mail.yeah.net":
              "http://entry.mail.yeah.net/cgi/ntesdoor?lightweight=1&verifycookie=1&language=-1&style=12&from=newmsg_touch&destip=172.16.85.55",
            "vip.163.com":
              "http://reg.vip.163.com/enterMail.m?style=12&language=0&enterVip=true&verifycookie=1&destip=192.168.8.110&username=" +
              h,
            "vip.188.com":
              "http://reg.mail.188.com/servlet/enter?language=0&style=12&enterWebmail=true&destip=192.168.200.54&username=" +
              h,
            "vip.126.com":
              "http://reg.vip.126.com/enterMail.m?style=12&language=0&enterVip=true&verifycookie=1&destip=10.120.102.218&username=" +
              h,
          };
          return (
            "1" !== i &&
              (a = {
                "mail.163.com":
                  "http://smart.mail.163.com/?from=newmsg_touch#163",
                "mail.126.com":
                  "http://smart.mail.163.com/?from=newmsg_touch#126",
                "mail.yeah.net":
                  "http://smart.mail.163.com/?from=newmsg_touch#yeah",
                "vip.163.com": "http://smart.vip.163.com/?from=newmsg_touch",
                "vip.126.com": "http://smart.vip.126.com/?from=newmsg_touch",
                "vip.188.com": "http://smart.mail.188.com/?from=newmsg_touch",
              }),
            a[g]
          );
        }
        var c = a(".navArea>nav");
        if (
          c &&
          !(1 > c.length) &&
          ((window.siteMapList = function (a) {
            if (a) {
              for (
                var e,
                  b = (j = 0),
                  d = "",
                  f =
                    '<a href="//3g.163.com/touch/<#=curl#>/?from=index.sitemap"><#=cname#></a>',
                  g = '<a href="<#=curl#>"><#=cname#></a>';
                2 > b;
                b++
              ) {
                for (e = a[b].gTopic, d += "<div>", j = 0; e.length > j; j++)
                  d +=
                    0 === b
                      ? NTUI.simpleParse(f, {
                          curl: e[j].cUrl,
                          cname: e[j].cName,
                        })
                      : NTUI.simpleParse(g, {
                          curl: e[j].cUrl,
                          cname: e[j].cName,
                        });
                d += "</div>";
              }
              c.html(d);
            }
          }),
          NTUI.importJs("http://3g.163.com/touch/sitemap/main.html"),
          a(".navBtn").click(function () {
            var b = this,
              c = b.children[0],
              d = a(b.parentNode),
              e = d.find(".navArea");
            (c.className = "triUp" === c.className ? "triDown" : "triUp"),
              e.toggleClass("hide"),
              d.toggleClass("active"),
              setTimeout(function () {
                NTUI.scrollToEl(b);
              }, 10);
          }),
          !b)
        ) {
          var d = new Date().format("MM\u6708dd\u65e5"),
            e = {
              ipQuery: "http://ip.ws.126.net/ipquery",
              dataCity: "http://www.163.com/special/0077450P/citycode.html",
              dataUrl: "http://www.163.com/inc/163new/youdao/tq_id_",
              cityCode: "",
              cityName: "",
              defaultCity: "\u5317\u4eac",
              defaultCode: "54511",
              htmlHolder: a(".weather"),
              tpl:
                '<#=cityName#> <a href="//m.youdao.com/weather?keyfrom=3g163touch.index.weather&q=<#=cityName#>"><#=weatherInfo#> <#=temperature#></a>',
            };
          a(".today").html(d),
            (e.cityCode = NTUI.cookie.get("theCity")),
            e.cityCode && "undefined" !== e.cityCode
              ? f(e.cityCode)
              : NTUI.importJs(
                  e.ipQuery,
                  function () {
                    (e.cityName = /[\u7701\u5e02]$/.test(lc)
                      ? lc.replace(/[\u7701\u5e02]$/, "")
                      : lo.replace(/[\u7701\u5e02]$/, "")),
                      e.cityName
                        ? NTUI.importJs(
                            e.dataCity,
                            function () {
                              for (
                                var a = cityLibrary.length, b = 0;
                                a > b;
                                b++
                              )
                                if (cityLibrary[b][0] == e.cityName)
                                  e.cityCode = cityLibrary[b][1][0][0];
                                else
                                  for (
                                    var c = cityLibrary[b][1].length, d = -1;
                                    c > ++d;

                                  )
                                    cityLibrary[b][1][d][1] == e.cityName &&
                                      (e.cityCode = cityLibrary[b][1][d][0]);
                              NTUI.cookie.set("theCity", e.cityCode, "30d"),
                                f(e.cityCode);
                            },
                            "gbk"
                          )
                        : ((e.cityCode = e.defaultCode),
                          NTUI.cookie.set("theCity", e.cityCode, "30d"),
                          f(e.cityCode));
                  },
                  "gbk"
                );
          var g,
            h,
            i,
            k = a(".mail")[0],
            l = a(".weibo")[0],
            m = a("#loginform")[0].parentNode,
            n = NTUI.cookie.get("P_INFO");
          if (n) {
            var o = n.split("|");
            if (((h = o[0].replace(/\"/, "")), (i = o[2]), "1" === i)) {
              if (
                ((m.innerHTML =
                  "<span>" +
                  h +
                  '</span><a class="fl-r" href="//reg.163.com/Logout.jsp?username=' +
                  h +
                  "&url=" +
                  window.location.href +
                  '">\u9000\u51fa</a>'),
                k)
              ) {
                h.indexOf("@126.com") > -1
                  ? (g = "mail.126.com")
                  : h.indexOf("@yeah.net") > -1
                  ? (g = "mail.yeah.net")
                  : h.indexOf("@163.com") > -1
                  ? (g = "mail.163.com")
                  : h.indexOf("@188.com") > -1
                  ? (g = "vip.188.com")
                  : h.indexOf("@vip.163.com") > -1
                  ? (g = "vip.163.com")
                  : h.indexOf("@vip.126.com") > -1 && (g = "vip.126.com"),
                  (window.fAccountCountCall = function (a) {
                    (k.href = p()),
                      (a = parseInt(a)),
                      0 !== a &&
                        (a > 99 && (a = "N"),
                        (k.innerHTML = "<div>" + a + "</div>"));
                  });
                var q =
                  "http://msg." +
                  g +
                  "/cgi/mc?funcid=getusrnewmsgcnt&fid=1&addSubFdrs=1&language=0&style=0&template=newmsgres_setcookie.htm&df=www163phone&callback=fAccountCountCall&username=" +
                  h;
                NTUI.importJs(q);
              }
              if (l) {
                var r =
                  "http://t.163.com/service/newMessage/" + h + "/1/0/0/0/1";
                NTUI.importJs(r, function (a) {
                  if (a && resultStatus) {
                    var b = parseInt(resultStatus.htlCount);
                    if (0 === b) return;
                    b > 99 && (b = "N"), (l.innerHTML = "<div>" + b + "</div>");
                  }
                });
              }
            }
          }
        }
      }),
      (Date.prototype.format = function (a) {
        var b = {
            "M+": this.getMonth() + 1,
            "d+": this.getDate(),
            "h+": 0 == this.getHours() ? 12 : this.getHours(),
            "H+": this.getHours(),
            "m+": this.getMinutes(),
            "s+": this.getSeconds(),
            "q+": Math.floor((this.getMonth() + 3) / 3),
            S: this.getMilliseconds(),
          },
          c = {
            0: "\u65e5",
            1: "\u4e00",
            2: "\u4e8c",
            3: "\u4e09",
            4: "\u56db",
            5: "\u4e94",
            6: "\u516d",
          };
        /(y+)/.test(a) &&
          (a = a.replace(
            RegExp.$1,
            (this.getFullYear() + "").substr(4 - RegExp.$1.length)
          )),
          /(E+)/.test(a) &&
            (a = a.replace(
              RegExp.$1,
              (RegExp.$1.length > 1
                ? RegExp.$1.length > 2
                  ? "\u661f\u671f"
                  : "\u5468"
                : "") + c[this.getDay() + ""]
            ));
        for (var d in b)
          RegExp("(" + d + ")").test(a) &&
            (a = a.replace(
              RegExp.$1,
              1 == RegExp.$1.length
                ? b[d]
                : ("00" + b[d]).substr(("" + b[d]).length)
            ));
        return a;
      }),
      (NTUI._paras = (function () {
        var a = window.location.href,
          b = a.indexOf("?") + 1,
          c = {};
        if (0 !== b)
          for (
            var d = a.substring(b), e = d.split("&"), f = [], g = 0;
            e.length > g;
            g++
          ) {
            if (((f = e[g].split("=")), g === e.length - 1)) {
              var h = f[1].indexOf("#");
              -1 !== h && (f[1] = f[1].substring(0, h));
            }
            c[f[0]] = f[1];
          }
        return c;
      })()),
      (NTUI.getParameter = function (a) {
        return NTUI._paras[a];
      }),
      (function () {
        function r() {
          document.removeEventListener("DOMContentLoaded", r, !1);
          var b,
            f,
            a = document.createElement("div"),
            e = q.touchIcon
              ? document.querySelectorAll(
                  "head link[rel=apple-touch-icon],head link[rel=apple-touch-icon-precomposed]"
                )
              : [],
            g = "";
          if (
            ((a.id = "addToHomeScreen"),
            (a.style.cssText +=
              "position:absolute;-webkit-transition-property:-webkit-transform,opacity;-webkit-transition-duration:0;-webkit-transform:translate3d(0,0,0);"),
            (a.style.left = "-9999px"),
            e.length)
          ) {
            for (o = 0, p = e.length; p > o; o++)
              if ((f = e[o].getAttribute("sizes"))) {
                if (d && "114x114" == f) {
                  g = e[o].href;
                  break;
                }
              } else g = e[o].href;
            g =
              '<span style="background-image:url(' +
              g +
              ')" class="touchIcon"></span>';
          }
          (a.className = (c ? "ipad" : "iphone") + (g ? " wide" : "")),
            (a.innerHTML =
              g +
              q.message
                .replace("%device", i)
                .replace(
                  "%icon",
                  h >= 4.2
                    ? '<span class="share"></span>'
                    : '<span class="plus">+</span>'
                ) +
              (q.arrow ? '<span class="arrow"></span>' : "") +
              '<span class="close"></span>'),
            document.body.appendChild(a),
            (n = a),
            (b = n.querySelector(".close")),
            b && b.addEventListener("click", addToHomeClose, !1),
            q.expire && NTUI.cookie.set("addToHome", 1, q.expire);
        }
        function s() {
          window.removeEventListener("load", s, !1),
            setTimeout(function () {
              var a;
              switch (
                ((j = c ? window.scrollY : window.innerHeight + window.scrollY),
                (k = c
                  ? window.scrollX
                  : Math.round((window.innerWidth - n.offsetWidth) / 2) +
                    window.scrollX),
                (n.style.top = c
                  ? j + q.bottomOffset + "px"
                  : j - n.offsetHeight - q.bottomOffset + "px"),
                (n.style.left = c
                  ? k +
                    (h >= 5 ? 160 : 208) -
                    Math.round(n.offsetWidth / 2) +
                    "px"
                  : k + "px"),
                q.animationIn)
              ) {
                case "drop":
                  c
                    ? ((a = ".6s"),
                      (n.style.webkitTransform =
                        "translate3d(0," +
                        -(window.scrollY + q.bottomOffset + n.offsetHeight) +
                        "px,0)"))
                    : ((a = ".9s"),
                      (n.style.webkitTransform =
                        "translate3d(0," + -(j + q.bottomOffset) + "px,0)"));
                  break;
                case "bubble":
                  c
                    ? ((a = ".6s"),
                      (n.style.opacity = "0"),
                      (n.style.webkitTransform =
                        "translate3d(0," + (j + 50) + "px,0)"))
                    : ((a = ".6s"),
                      (n.style.webkitTransform =
                        "translate3d(0," +
                        (n.offsetHeight + q.bottomOffset + 50) +
                        "px,0)"));
                  break;
                default:
                  (a = "1s"), (n.style.opacity = "0");
              }
              setTimeout(function () {
                (n.style.webkitTransitionDuration = a),
                  (n.style.opacity = "1"),
                  (n.style.webkitTransform = "translate3d(0,0,0)"),
                  n.addEventListener("webkitTransitionEnd", t, !1);
              }, 0),
                (m = setTimeout(addToHomeClose, q.lifespan));
            }, q.startDelay);
        }
        function t() {
          n.removeEventListener("webkitTransitionEnd", t, !1),
            (n.style.webkitTransitionProperty = "-webkit-transform"),
            (n.style.webkitTransitionDuration = ".2s"),
            m
              ? (clearInterval(l), (l = setInterval(u, q.iterations)))
              : n.parentNode.removeChild(n);
        }
        function u() {
          var a = new WebKitCSSMatrix(
              window.getComputedStyle(n, null).webkitTransform
            ),
            b = c
              ? window.scrollY - j
              : window.scrollY + window.innerHeight - j,
            d = c
              ? window.scrollX - k
              : window.scrollX +
                Math.round((window.innerWidth - n.offsetWidth) / 2) -
                k;
          (b != a.m42 || d != a.m41) &&
            (clearInterval(l),
            n.removeEventListener("webkitTransitionEnd", t, !1),
            setTimeout(function () {
              n.addEventListener("webkitTransitionEnd", t, !1),
                (n.style.webkitTransform =
                  "translate3d(" + d + "px," + b + "px,0)");
            }, 0));
        }
        var l,
          m,
          n,
          o,
          p,
          a = (NTUI.isIDevice = /iphone|ipod|ipad/gi.test(b.platform)),
          c = (NTUI.isIPad = /ipad/gi.test(b.platform)),
          d = (NTUI.isRetina =
            "devicePixelRatio" in window && window.devicePixelRatio > 1),
          e = (NTUI.isSafari = b.appVersion.match(/Safari/gi)),
          f = (NTUI.hasHomescreen = "standalone" in b && a),
          g = (NTUI.isStandalone = f && b.standalone),
          h = b.appVersion.match(/OS \d+_\d+/g),
          i = (NTUI.platform = b.platform.split(" ")[0]),
          j = 0,
          k = 0,
          q = {
            animationIn: "bubble",
            animationOut: "drop",
            startDelay: 1500,
            lifespan: 6e3,
            bottomOffset: 15,
            expire: "30d",
            message: "",
            disableLoading: !0,
            touchIcon: !0,
            arrow: !0,
            iterations: 100,
          };
        if ("1" === NTUI.cookie.get("addToHome")) return (expired = 1), void 0;
        if (
          ((NTUI.OSVersion = h = h
            ? 1 * h[0].replace(/[^\d_]/g, "").replace("_", ".")
            : 0),
          window.addToHomeConfig)
        )
          for (o in window.addToHomeConfig) q[o] = window.addToHomeConfig[o];
        f &&
          !g &&
          e &&
          !q.disableLoading &&
          (document.addEventListener("DOMContentLoaded", r, !1),
          window.addEventListener("load", s, !1),
          (window.addToHomeClose = function () {
            clearInterval(l),
              clearTimeout(m),
              (m = null),
              n.removeEventListener("webkitTransitionEnd", t, !1);
            var a = c
                ? window.scrollY - j
                : window.scrollY + window.innerHeight - j,
              b = c
                ? window.scrollX - k
                : window.scrollX +
                  Math.round((window.innerWidth - n.offsetWidth) / 2) -
                  k,
              d = "1",
              e = "0",
              f = n.querySelector(".close");
            switch (
              (f && f.removeEventListener("click", addToHomeClose, !1),
              (n.style.webkitTransitionProperty = "-webkit-transform,opacity"),
              q.animationOut)
            ) {
              case "drop":
                c
                  ? ((e = ".4s"), (d = "0"), (a += 50))
                  : ((e = ".6s"),
                    (a = a + n.offsetHeight + q.bottomOffset + 50));
                break;
              case "bubble":
                c
                  ? ((e = ".8s"),
                    (a = a - n.offsetHeight - q.bottomOffset - 50))
                  : ((e = ".4s"), (d = "0"), (a -= 50));
                break;
              default:
                (e = ".8s"), (d = "0");
            }
            n.addEventListener("webkitTransitionEnd", t, !1),
              (n.style.opacity = d),
              (n.style.webkitTransitionDuration = e),
              (n.style.webkitTransform =
                "translate3d(" + b + "px," + a + "px,0)");
          }));
      })(),
      (NTUI.storage = {
        _s: window.localStorage,
        _SIZE: 50,
        _i: (function () {
          if (!window.localStorage.index)
            try {
              window.localStorage.index = 0;
            } catch (a) {
              return console.log(a), null;
            }
          return window.localStorage.index;
        })(),
        _m: (function () {
          return window.localStorage.map
            ? JSON.parse(window.localStorage.map)
            : {};
        })(),
        save: function (a, b) {
          var c = this,
            d = c._m,
            e = c._s,
            f = c._i;
          e &&
            null !== f &&
            (a && d[a]
              ? e.setItem(d[a], b)
              : (e.setItem(f, b),
                a && ((d[a] = f), (e.map = JSON.stringify(d))),
                ++f === c._SIZE && (f = 0),
                (e.index = f)));
        },
        load: function (a) {
          var b = this,
            c = b._m,
            d = b._s,
            e = b._i;
          return d && null !== e && a ? d.getItem(c[a]) : void 0;
        },
      });
  }
})(x$);

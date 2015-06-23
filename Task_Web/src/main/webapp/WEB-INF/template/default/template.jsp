<?xml version="1.0" encoding="UTF-8"?>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<%@page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!-- Import libraries for js and css -->
<tiles:importAttribute name="javascripts"/>
<tiles:importAttribute name="stylesheets"/>

<html>
<head>
	
    
	<script type="text/javascript" async="" src="http://static.siteheart.com/widget/shembed/710467/ru/20141205145455/20141205145455/widget.js"></script>

    <title>Международный конкурс красоты Face Star</title>
    
    <meta name="description" content="Международный конкурс красоты Face Star. Ежемесячные денежные призы. Главный приз &ndash; авто! Участвуй!"/>
    <meta name="keywords" content="Конкурс красоты,  Face star, beauty contest,  международный конкурс красоты, участвовать в конкурсе красоты"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    
    <link rel="icon" type="image/x-icon" " href="<c:url value="/resources/images/favicon.ico"/>"/>
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/resources/images/favicon.ico"/>"/>
    
    <!-- stylesheets -->
    <c:forEach var="css" items="${stylesheets}">
        <link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>
    <!-- end stylesheets -->
  
	<!-- scripts -->
    <c:forEach var="script" items="${javascripts}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach>
    <!-- end scripts -->
    
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    
    <!--[if lt IE 9]>
    <script src="/resources/js/html5.js"></script>
    <![endif]-->
	<!--[if gte IE 9]
    <style type="text/css">
    .gradient {
        filter: none;
    }
    </style>
    <![endif]-->   
    
    <script async="" src="//www.google-analytics.com/analytics.js"></script>
    <script type="text/javascript" async="" src="http://widget.siteheart.com/widget/sh/710467/ru/widget.js"></script>
	<script type="text/javascript" async="" src="http://mc.yandex.ru/metrika/watch.js"></script>
	<script type="text/javascript" src="//yandex.st/share/share.js" charset="utf-8"></script>
	
	  <style>
        @media (max-width: 990px) {
            body {
                min-width: 990px;
            }
        }
    </style>
	
	<script type="text/javascript">
        (function($) {
            $.fn.toggleDisabled = function() {
                return this.each(function() {
                    var $this = $(this);
                    if ($this.attr('disabled')) $this.removeAttr('disabled');
                    else $this.attr('disabled', 'disabled');
                });
            };
        })(jQuery);
        $.preloadImages = function() {
            for (var i = 0; i < arguments.length; i++) {
                $("<images />").attr("src", arguments[i]);
            }
        }
        $(function () {
            var menu = 'aboutProject';

            createMenu();
            setBackground();

            function setBackground() {
                if (menu != 'home') {
                    $("#main-container").css({
                        
                        'background-image': 'url(resources/images/backgrounds/background_5.jpg)'
                    });
                }
            }

            function createMenu() {
                var $el, leftPos, newWidth, list, link;
                if ('' == 'signup') {
                    menu = 'signup';
                    $('.signs .signup').addClass("current_page_item");
                }
                if (!menu)
                    return;
                if (menu == 'user') {
                    $('.signs .user').addClass("current_page_item");
                }
                if (menu == 'signin') {
                    $('.signs .signin').addClass("current_page_item");
                }
                list = $("#main_navigation_list");
                list.find('.' + menu).addClass("current_page_item");
                link = $(".current_page_item a");
                list.append("<li id='magic-line'></li>");
                var $magicLine = $("#magic-line");
                var width = 0;
                var leftPosition = 0;
                if (link.length > 0) {
                    width = $(".current_page_item a").width();
                    leftPosition = link.position().left;
                }
                $magicLine.width(width)
                        .css("left", leftPosition)
                        .data("origLeft", $magicLine.position().left)
                        .data("origWidth", $magicLine.width());
                var menuAnimationStart = function () {
                    $el = $(this);
                    leftPos = $el.position().left;
                    newWidth = $el.parent().find('a').width();
                    $magicLine.stop().animate({
                        left: leftPos,
                        width: newWidth
                    });
                };
                var menuAnimationStop = function () {
                    $magicLine.stop().animate({
                        left: $magicLine.data("origLeft"),
                        width: $magicLine.data("origWidth")
                    });
                };
                list.find("li").find("a").hover(menuAnimationStart, menuAnimationStop);
                $("#menu-container").find(".signs").find("li").find("a").hover(menuAnimationStart, menuAnimationStop);
            }
            //top menu
            var menuId = "#main-navigation";
            var menuItem = document.querySelector(menuId);
            var origOffsetY = menuItem.offsetTop;
            function scroll () {
                var height = 160;//$("#main-navigation").height();
                var minHeight = 52;//$("#menu-container").height();
                if ($(window).scrollTop() >= (origOffsetY + height - minHeight)) {
                    $(menuId).addClass('sticky');
                    $(menuId).css({
                        'height': minHeight + 'px'
                    });
                    $(menuItem).find(".logo").css({
                        'display': 'none'
                    });
                    $('#magic-line').css({"bottom": "-3px"});
                } else {
                    $(menuId).removeClass('sticky');
                    $(menuId).css({
                        'height': height + 'px'
                    });
                    $(menuItem).find(".logo").css({
                        'display': 'block'
                    });
                    $('#magic-line').css({"bottom": "-11px"});
                }
            }
            document.onscroll = scroll;
        });
    </script>
	
	<!-- Yandex.Metrika counter -->

	<script type="text/javascript">
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function() {
                try {
                    w.yaCounter26398284 = new Ya.Metrika({id:26398284,
                        webvisor:true,
                        clickmap:true,
                        trackLinks:true,
                        accurateTrackBounce:true});
                } catch(e) { }
            });

            var n = d.getElementsByTagName("script")[0],
                    s = d.createElement("script"),
                    f = function () { n.parentNode.insertBefore(s, n); };
            s.type = "text/javascript";
            s.async = true;
            s.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//mc.yandex.ru/metrika/watch.js";

            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else { f(); }
        })(document, window, "yandex_metrika_callbacks");
    </script>
    
    <noscript>&lt;div&gt;&lt;img src="//mc.yandex.ru/watch/26398284" style="position:absolute; left:-9999px;" alt="" /&gt;&lt;/div&gt;</noscript>
	<!-- /Yandex.Metrika counter -->
   <style type="text/css" id="ya_share_style">.b-share-popup-wrap{z-index:1073741823;position:absolute;width:500px}.b-share-popup{position:absolute;z-index:1073741823;border:1px solid #888;background:#FFF;color:#000}.b-share-popup-wrap .b-share-popup_down{top:0}.b-share-popup-wrap .b-share-popup_up{bottom:0}.b-share-popup-wrap_state_hidden{position:absolute!important;top:-9999px!important;right:auto!important;bottom:auto!important;left:-9999px!important;visibility:hidden!important}.b-share-popup,x:nth-child(1){border:0;padding:1px!important}@media all and (resolution=0){.b-share-popup,x:nth-child(1),x:-o-prefocus{padding:0!important;border:1px solid #888}}.b-share-popup__i{display:-moz-inline-box;display:inline-block;padding:5px 0!important;overflow:hidden;vertical-align:top;white-space:nowrap;visibility:visible;background:#FFF;-webkit-box-shadow:0 2px 9px rgba(0,0,0,.6);-moz-box-shadow:0 2px 9px rgba(0,0,0,.6);box-shadow:0 2px 9px rgba(0,0,0,.6)}.b-share-popup__item{font:1em/1.25em Arial,sans-serif;display:block;padding:5px 15px!important;white-space:nowrap;background:#FFF}.b-share-popup__item,a.b-share-popup__item:link,a.b-share-popup__item:visited{text-decoration:none!important;border:0!important}a.b-share-popup__item{cursor:pointer}a.b-share-popup__item .b-share-popup__item__text{display:inline;text-decoration:underline;color:#1A3DC1}a.b-share-popup__item:hover{word-spacing:0}a.b-share-popup__item:hover .b-share-popup__item__text{color:red;cursor:pointer}.b-share-popup__icon{display:-moz-inline-box;display:inline-block;margin:-3px 0 0;padding:0 5px 0 0!important;vertical-align:middle}.b-share-popup__icon_input{width:21px;height:16px;margin-top:-6px;padding:0!important}.b-share-popup__icon__input{margin-right:0;margin-left:2px;vertical-align:top}.b-share-popup__spacer{display:block;padding-top:10px!important}.b-share-popup__header{font:86%/1em Verdana,sans-serif;display:block;padding:10px 15px 5px!important;color:#999}.b-share-popup__header_first{padding-top:5px!important}.b-share-popup__input{font:86%/1em Verdana,sans-serif;display:block;padding:5px 15px!important;color:#999;text-align:left}.b-share-popup__input__input{font:1em/1em Verdana,sans-serif;display:block;width:10px;margin:5px 0 0;-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;resize:none;text-align:left;direction:ltr}.b-share-popup_down .b-share-popup_with-link .b-share-popup__input_link{position:absolute;top:5px;right:0;left:0}.b-share-popup_up .b-share-popup_with-link .b-share-popup__input_link{position:absolute;right:0;bottom:5px;left:0}.b-share-popup_down .b-share-popup_with-link{padding-top:55px!important}.b-share-popup_up .b-share-popup_with-link{padding-bottom:55px!important}.b-share-popup_down .b-share-popup_expandable .b-share-popup__main{padding-bottom:25px!important}.b-share-popup_up .b-share-popup_expandable .b-share-popup__main{padding-top:25px!important}.b-share-popup_down .b-share-popup_yandexed{padding-bottom:10px!important}.b-share-popup_up .b-share-popup_yandexed{padding-top:10px!important}.b-share-popup__yandex{position:absolute;right:4px;bottom:2px;font:78.125%/1em Verdana,sans-serif;padding:3px!important;background:0 0}a.b-share-popup__yandex:link,a.b-share-popup__yandex:visited{color:#C6C5C5;text-decoration:none}a.b-share-popup__yandex:link:hover,a.b-share-popup__yandex:visited:hover{color:red;text-decoration:underline}.b-share-popup_up .b-share-popup__yandex{top:2px;bottom:auto}.b-share-popup_expandable .b-share-popup__yandex{right:auto;left:4px}.b-share-popup_to-right .b-share-popup_expandable .b-share-popup__yandex{right:4px;left:auto}.b-share-popup__expander .b-share-popup__item{position:absolute;bottom:5px;font:86%/1em Verdana,sans-serif;margin:10px 0 0;padding:5px 10px!important;cursor:pointer;color:#999;background:0 0}.b-share-popup_to-right,.b-share-popup_to-right .b-share-popup__expander{direction:rtl}.b-share-popup_to-right .b-share-popup__expander .b-share-popup__icon{padding:0 0 0 5px!important}.b-share-popup_up .b-share-popup__expander .b-share-popup__item{top:-5px;bottom:auto}.b-share-popup__expander .b-share-popup__item:hover .b-share-popup__item__text{text-decoration:underline}.b-share-popup__expander .b-ico_action_rarr,.b-share-popup_to-right .b-share-popup__expander .b-ico_action_larr,.b-share-popup_full .b-share-popup__expander .b-ico_action_larr,.b-share-popup_to-right .b-share-popup_full .b-share-popup__expander .b-ico_action_rarr,.b-share-popup__expander .b-share-popup__item__text_collapse,.b-share-popup_full .b-share-popup__item__text_expand{display:none}.b-share-popup_to-right .b-share-popup__expander .b-ico_action_rarr,.b-share-popup_full .b-share-popup__item__text_collapse,.b-share-popup_full .b-share-popup__expander .b-ico_action_rarr,.b-share-popup_to-right .b-share-popup_full .b-share-popup__expander .b-ico_action_larr{display:inline}.b-ico_action_rarr,.b-ico_action_larr{width:8px;height:7px;border:0}.b-share-popup__main,.b-share-popup__extra{direction:ltr;vertical-align:bottom;text-align:left}.b-share-popup_down .b-share-popup__main,.b-share-popup_down .b-share-popup__extra{vertical-align:top}.b-share-popup__main{display:-moz-inline-stack;display:inline-block}.b-share-popup__extra{display:none;margin:0 -10px 0 0}.b-share-popup_full .b-share-popup__extra{display:-moz-inline-stack;display:inline-block}.b-share-popup_to-right .b-share-popup__extra{margin:0 0 0 -10px}.b-share-popup__tail{position:absolute;width:21px;height:10px;margin:0 0 0 -11px}.b-share-popup_down .b-share-popup__tail{top:-10px;background:url("//yastatic.net/share/static/b-share-popup_down__tail.gif") 0 0 no-repeat}.b-share-popup_up .b-share-popup__tail{bottom:-10px;background:url("//yastatic.net/share/static/b-share-popup_up__tail.gif") 0 0 no-repeat}.b-share-popup_down .b-share-popup__tail,x:nth-child(1){top:-9px;background-image:url("//yastatic.net/share/static/b-share-popup_down__tail.png")}.b-share-popup_up .b-share-popup__tail,x:nth-child(1){bottom:-9px;background-image:url("//yastatic.net/share/static/b-share-popup_up__tail.png")}@media all and (resolution=0){.b-share-popup_down .b-share-popup__tail,x:nth-child(1),x:-o-prefocus{top:-10px;background-image:url("//yastatic.net/share/static/b-share-popup_down__tail.gif")}.b-share-popup_up .b-share-popup__tail,x:nth-child(1),x:-o-prefocus{bottom:-10px;background-image:url("//yastatic.net/share/static/b-share-popup_up__tail.gif")}}.b-share-popup .b-share-popup_show_form_mail,.b-share-popup .b-share-popup_show_form_html{padding:0!important}.b-share-popup .b-share-popup_show_form_mail .b-share-popup__main,.b-share-popup .b-share-popup_show_form_html .b-share-popup__main,.b-share-popup .b-share-popup_show_form .b-share-popup__main,.b-share-popup .b-share-popup_show_form_mail .b-share-popup__extra,.b-share-popup .b-share-popup_show_form_html .b-share-popup__extra,.b-share-popup .b-share-popup_show_form .b-share-popup__extra{height:15px;padding:0!important;overflow:hidden;visibility:hidden}.b-share-popup_show_form_mail .b-share-popup__expander,.b-share-popup_show_form_html .b-share-popup__expander,.b-share-popup_show_form .b-share-popup__expander,.b-share-popup_show_form_mail .b-share-popup__input_link,.b-share-popup_show_form_html .b-share-popup__input_link,.b-share-popup_show_form .b-share-popup__input_link{display:none}.b-share-popup__form{position:relative;display:none;overflow:hidden;padding:5px 0 0!important;margin:0 0 -15px;white-space:normal}.b-share-popup_show_form_mail .b-share-popup__form_mail,.b-share-popup_show_form_html .b-share-popup__form_html,.b-share-popup_show_form .b-share-popup__form{display:block}.b-share-popup__form__link{padding:5px!important;margin:0 0 5px 10px;text-decoration:underline;cursor:pointer;color:#1A3DC1}.b-share-popup__form__link,.b-share-popup__form__button{font:86%/1.4545em Verdana,sans-serif;float:left;display:inline}.b-share-popup__form__button{margin:5px 0 0 15px}.b-share-popup__form__close{font:86%/1.4545em Verdana,sans-serif;float:right;display:inline;padding:5px!important;margin:0 10px 5px 0;cursor:pointer;color:#999}a.b-share-popup__form__link:hover,a.b-share-popup__form__close:hover{text-decoration:underline;color:red}.b-share-popup_font_fixed .b-share-popup__item{font-size:12.8px}.b-share-popup_font_fixed .b-share-popup__header,.b-share-popup_font_fixed .b-share-popup__input,.b-share-popup_font_fixed .b-share-popup__expander .b-share-popup__item,.b-share-popup_font_fixed .b-share-popup__form__link,.b-share-popup_font_fixed .b-share-popup__form__button,.b-share-popup_font_fixed .b-share-popup__form__close{font-size:11px}.b-share-popup_font_fixed .b-share-popup__yandex{font-size:10px}.b-share-form-button{font:86%/17px Verdana,Arial,sans-serif;display:-moz-inline-box;display:inline-block;position:relative;height:19px;margin:0 3px;padding:0 4px;cursor:default;white-space:nowrap;text-decoration:none!important;color:#000!important;border:none;outline:none;background:url("//yastatic.net/share/static/b-share-form-button.png") 0 -20px repeat-x}.b-share-form-button:link:hover,.b-share-form-button:visited:hover{color:#000!important}.b-share-form-button__before,.b-share-form-button__after{position:absolute;width:3px;height:19px;background:url("//yastatic.net/share/static/b-share-form-button.png")}.b-share-form-button__before{margin-left:-7px}.b-share-form-button__after{margin-left:4px;background-position:-3px 0}.b-share-form-button::-moz-focus-inner{border:none}button.b-share-form-button .b-share-form-button__before,button.b-share-form-button .b-share-form-button__after{margin-top:-1px}@-moz-document url-prefix(){button.b-share-form-button .b-share-form-button__after{margin-top:-2px;margin-left:6px}button.b-share-form-button .b-share-form-button__before{margin-top:-2px;margin-left:-9px}}SPAN.b-share-form-button:hover,.b-share-form-button_state_hover{background-position:0 -60px}SPAN.b-share-form-button:hover .b-share-form-button__before,.b-share-form-button_state_hover .b-share-form-button__before{background-position:0 -40px}SPAN.b-share-form-button:hover .b-share-form-button__after,.b-share-form-button_state_hover .b-share-form-button__after{background-position:-3px -40px}.b-share-form-button_state_pressed,.b-share-form-button_state_pressed .b-share-form-button_share{background-position:0 -100px!important}.b-share-form-button_state_pressed .b-share-form-button__before{background-position:0 -80px!important}.b-share-form-button_state_pressed .b-share-form-button__after{background-position:-3px -80px!important}button.b-share-form-button_state_pressed{overflow:visible}.b-share-form-button_icons{position:relative;padding:0;background-position:0 -20px!important}.b-share-form-button_icons .b-share-form-button__before{left:0;margin-left:-3px;background-position:0 0!important}.b-share-form-button_icons .b-share-form-button__after{z-index:-1;margin-left:0;background-position:-3px 0!important}.b-share-form-button_icons .b-share__handle{padding:2px!important}.b-share-form-button_icons .b-share__handle_more{position:relative;padding-right:6px!important;margin-right:-4px}.b-share-form-button_icons .b-share-icon{opacity:.5;background-image:url("//yastatic.net/share/static/b-share-icon_size_14.png")}.b-share-form-button_icons A.b-share__handle:hover .b-share-icon{opacity:1}.b-share{font:86%/1.4545em Arial,sans-serif;display:-moz-inline-box;display:inline-block;padding:1px 3px 1px 4px!important;vertical-align:middle}.b-share .b-share-form-button{font-size:1em}.b-share__text .b-share-icon{margin:0 5px 0 0;border:none}.b-share__text{margin-right:5px}.b-share__handle{float:left;height:16px;padding:5px 3px 5px 2px!important;cursor:pointer;text-align:left;text-decoration:none!important}.b-share__handle_cursor_default{cursor:default}.b-share__handle .b-share-form-button{margin-top:-2px}.b-share__hr{display:none;float:left;width:1px;height:26px;margin:0 3px 0 2px}a.b-share__handle:hover .b-share__text{text-decoration:underline;color:red}.b-share_bordered{padding:0 2px 0 3px!important;border:1px solid #E4E4E4;-moz-border-radius:5px;-webkit-border-radius:5px;border-radius:5px}.b-share_bordered .b-share__hr{display:inline;background:#E4E4E4}.b-share_link{margin:-8px 0}a.b-share_link{margin:0}.b-share_link .b-share__text{text-decoration:underline;color:#1A3DC1}.b-share-form-button_share{padding-left:26px!important;vertical-align:top}.b-share-form-button_share .b-share-form-button__before{margin-left:-29px}.b-share-form-button_share .b-share-form-button__icon{position:absolute;width:20px;height:17px;margin:1px 0 0 -23px;background:url("//yastatic.net/share/static/b-share-form-button_share__icon.png") 0 0 no-repeat}.b-share-pseudo-link{border-bottom:1px dotted;cursor:pointer;text-decoration:none!important}.b-share_font_fixed{font-size:11px}.b-share__handle_more{font-size:9px;margin-top:-1px;color:#7B7B7B}A.b-share__handle_more:hover{color:#000}.b-share__group{float:left}.b-share-icon{float:left;display:inline;overflow:hidden;width:16px;height:16px;padding:0!important;vertical-align:top;border:0;background:url("//yastatic.net/share/static/b-share-icon.png") 0 99px no-repeat}.b-share-icon_vkontakte,.b-share-icon_custom{background-position:0 0}.b-share-icon_yaru,.b-share-icon_yaru_photo,.b-share-icon_yaru_wishlist{background-position:0 -17px}.b-share-icon_lj{background-position:0 -34px}.b-share-icon_twitter{background-position:0 -51px}.b-share-icon_facebook{background-position:0 -68px}.b-share-icon_moimir{background-position:0 -85px}.b-share-icon_friendfeed{background-position:0 -102px}.b-share-icon_mail{background-position:0 -119px}.b-share-icon_html{background-position:0 -136px}.b-share-icon_postcard{background-position:0 -153px}.b-share-icon_odnoklassniki{background-position:0 -170px}.b-share-icon_blogger{background-position:0 -187px}.b-share-icon_delicious{background-position:0 -221px}.b-share-icon_gbuzz{background-position:0 -238px}.b-share-icon_linkedin{background-position:0 -255px}.b-share-icon_myspace{background-position:0 -272px}.b-share-icon_evernote{background-position:0 -289px}.b-share-icon_digg{background-position:0 -306px}.b-share-icon_juick{background-position:0 -324px}.b-share-icon_moikrug{background-position:0 -341px}.b-share-icon_yazakladki{background-position:0 -358px}.b-share-icon_liveinternet{background-position:0 -375px}.b-share-icon_tutby{background-position:0 -392px}.b-share-icon_diary{background-position:0 -409px}.b-share-icon_gplus{background-position:0 -426px}.b-share-icon_pocket{background-position:0 -443px}.b-share-icon_surfingbird{background-position:0 -460px}.b-share-icon_pinterest{background-position:0 -477px}.b-share-icon_renren{background-position:0 0}.b-share-icon_renren,.b-share-icon_sina_weibo{background:url("//yastatic.net/share/static/b-share-icon__china.png") no-repeat}.b-share-icon_sina_weibo{background-position:-18px 0}.b-share-icon_qzone{background-position:-36px 0}.b-share-icon_qzone,.b-share-icon_tencent_weibo{background:url("//yastatic.net/share/static/b-share-icon__china.png") no-repeat}.b-share-icon_tencent_weibo{background-position:-54px 0}.b-share_theme_dark .b-share-icon{background:url("//yastatic.net/share/static/b-share-icons__theme_dark.png") 99px 0 no-repeat}.b-share_theme_dark .b-share-icon_odnoklassniki{background-position:-4px -3px}.b-share_theme_dark .b-share-icon_vkontakte{background-position:-24px -3px}.b-share_theme_dark .b-share-icon_twitter{background-position:-44px -3px}.b-share_theme_dark .b-share-icon_facebook{background-position:-64px -3px}.b-share_theme_dark .b-share-icon_lj{background-position:-85px -3px}.b-share_theme_dark .b-share-icon_yaru{background-position:-105px -3px}.b-share_theme_dark .b-share-popup .b-share-icon_odnoklassniki,.b-share_theme_dark .b-share-icon_odnoklassniki:hover{background-position:-4px -28px}.b-share_theme_dark .b-share-popup .b-share-icon_vkontakte,.b-share_theme_dark .b-share-icon_vkontakte:hover{background-position:-24px -28px}.b-share_theme_dark .b-share-popup .b-share-icon_twitter,.b-share_theme_dark .b-share-icon_twitter:hover{background-position:-44px -28px}.b-share_theme_dark .b-share-popup .b-share-icon_facebook,.b-share_theme_dark .b-share-icon_facebook:hover{background-position:-64px -28px}.b-share_theme_dark .b-share-popup .b-share-icon_lj,.b-share_theme_dark .b-share-icon_lj:hover{background-position:-85px -28px}.b-share_theme_dark .b-share-popup .b-share-icon_yaru,.b-share_theme_dark .b-share-icon_yaru:hover{background-position:-105px -28px}.b-share_theme_dark .b-share-form-button_share .b-share-form-button__icon{background-image:url("//yastatic.net/share/static/b-share-form-button_share__icon_dark.png")}.b-share_theme_dark .b-share-form-button{color:#fff!important;opacity:.8}.b-share_theme_dark .b-share__handle:hover .b-share-form-button,.b-share_theme_dark .b-share-form-button:hover{opacity:1;cursor:pointer}.b-share_theme_dark .b-share-form-button,.b-share_theme_dark .b-share-form-button__before,.b-share_theme_dark .b-share-form-button__after{background:0 0}.b-share_theme_dark .b-share-popup__i{background-color:#333;border-radius:10px;-webkit-box-shadow:0 2px 9px rgba(255,255,255,.6);-moz-box-shadow:0 2px 9px rgba(255,255,255,.6);box-shadow:0 2px 9px rgba(255,255,255,.6)}.b-share_theme_dark .b-share__text{color:#AAA}.b-share_theme_dark .b-share-popup{color:#AAA;border-radius:10px;background-color:#333;background-color:rgba(50,50,50,.3)}.b-share_theme_dark .b-share-popup__item{background:0 0;color:#ccc}.b-share_theme_dark .b-share-popup .b-share-popup__item__text{color:#ccc}.b-share_theme_counter .b-share{display:inline-block;vertical-align:middle;white-space:nowrap}.b-share-counter{font:14px Arial,sans-serif;line-height:18px;display:none;float:left;margin:3px 6px 3px 3px;color:#fff}.b-share_theme_counter .b-share_type_small .b-share-counter{font-size:11px;line-height:14px;margin:2px 6px 2px 1px}.b-share_theme_counter .b-share-btn__counter .b-share-counter{display:block}.b-share-btn__counter{text-decoration:none}.b-share_theme_counter .b-share-btn__wrap{position:relative;float:left;margin-left:5px}.b-share_theme_counter .b-share_type_small .b-share-btn__wrap{margin-left:4px}.b-share_theme_counter .b-share-btn__wrap:first-child{margin-left:0}.b-share_theme_counter .b-share__link{display:inline-block;cursor:pointer;-webkit-border-radius:3px;border-radius:3px}.b-share_theme_counter .b-share_type_small .b-share__link{-webkit-border-radius:2px;border-radius:2px}.b-share_theme_counter .b-share-icon{display:block;float:left;width:24px;height:24px;background-image:url("//yastatic.net/share/static/b-share_counter_large.png");background-position:-20px 0}.b-share_theme_counter .b-share_type_small .b-share-icon{width:18px;height:18px;background-image:url("//yastatic.net/share/static/b-share_counter_small.png")}.b-share_theme_counter .b-share-icon_facebook{background-position:0 0}.b-share_theme_counter .b-share-btn__facebook{background-color:#3c5a98}.b-share_theme_counter .b-share-btn__facebook:hover{background-color:#30487a}.b-share_theme_counter .b-share-btn__facebook:active{border-top:2px solid #24365a;background-color:#334d81}.b-share_theme_counter .b-share-icon_moimir{background-position:0 -29px}.b-share_theme_counter .b-share-btn__moimir{background-color:#226eb7}.b-share_theme_counter .b-share-btn__moimir:hover{background-color:#1b5892}.b-share_theme_counter .b-share-btn__moimir:active{border-top:2px solid #14426d;background-color:#1d5e9c}.b-share_theme_counter .b-share-icon_vkontakte{background-position:0 -58px}.b-share_theme_counter .b-share-btn__vkontakte{background-color:#48729e}.b-share_theme_counter .b-share-btn__vkontakte:hover{background-color:#3a5b7e}.b-share_theme_counter .b-share-btn__vkontakte:active{border-top:2px solid #2b445e;background-color:#3d6186}.b-share_theme_counter .b-share-icon_twitter{background-position:0 -87px}.b-share_theme_counter .b-share-btn__twitter{background-color:#00aced}.b-share_theme_counter .b-share-btn__twitter:hover{background-color:#008abe}.b-share_theme_counter .b-share-btn__twitter:active{border-top:2px solid #00668d;background-color:#0092ca}.b-share_theme_counter .b-share-icon_odnoklassniki{background-position:0 -116px}.b-share_theme_counter .b-share-btn__odnoklassniki{background-color:#ff9f4d}.b-share_theme_counter .b-share-btn__odnoklassniki:hover{background-color:#cc7f3e}.b-share_theme_counter .b-share-btn__odnoklassniki:active{border-top:2px solid #975e2e;background-color:#d98742}.b-share_theme_counter .b-share-icon_gplus{background-position:0 -145px}.b-share_theme_counter .b-share-btn__gplus{background-color:#c25234}.b-share_theme_counter .b-share-btn__gplus:hover{background-color:#9b422a}.b-share_theme_counter .b-share-btn__gplus:active{border-top:2px solid #73311f;background-color:#a5462c}.b-share_theme_counter .b-share-icon_yaru{background-position:0 -174px}.b-share_theme_counter .b-share-btn__yaru{background-color:#d83933}.b-share_theme_counter .b-share-btn__yaru:hover{background-color:#ad2e29}.b-share_theme_counter .b-share-btn__yaru:active{border-top:2px solid #80221e;background-color:#b8312b}.b-share_theme_counter .b-share-icon_pinterest{background-position:0 -203px}.b-share_theme_counter .b-share-btn__pinterest{background-color:#cd1e27}.b-share_theme_counter .b-share-btn__pinterest:hover{background-color:#a4181f}.b-share_theme_counter .b-share-btn__pinterest:active{border-top:2px solid #7b1217;background-color:#ae1921}.b-share_theme_counter .b-share__link:active{height:22px}.b-share_theme_counter .b-share_type_small .b-share__link:active{height:16px}.b-share_theme_counter .b-share__link:active .b-share-icon,.b-share_theme_counter .b-share__link:active .b-share-counter{position:relative;top:-1px}.b-share_theme_counter .b-share__link::after{position:absolute;top:0;right:0;bottom:0;left:0;content:"";background-image:url(data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==)}.b-share_theme_counter .b-share__handle{height:auto;padding:0!important}</style>
   <link rel="stylesheet" type="text/css" media="screen" href="//static.siteheart.com/widget/sh/20141205145455/css/orange.css">
   
</head>
<body>
	
	<script>
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		     m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		
		ga('create', 'UA-51899780-1', 'face-star.com');
		ga('send', 'pageview');
	</script>
		
	<!-- Start SiteHeart code -->
	<script>
		(function(){
		     var widget_id = 710467;
		     _shcp =[{widget_id : widget_id}];
		     var lang = "ru"
		     /*(navigator.language || navigator.systemLanguage
		       || navigator.userLanguage || "en")
		       .substr(0,2).toLowerCase()*/;
		     var url ="widget.siteheart.com/widget/sh/"+ widget_id +"/"+ lang +"/widget.js";
		     var hcc = document.createElement("script");
		     hcc.type ="text/javascript";
		     hcc.async =true;
		     hcc.src =("https:"== document.location.protocol ?"https":"http")
		                +"://"+ url;
		     var s = document.getElementsByTagName("script")[0];
		     s.parentNode.insertBefore(hcc, s.nextSibling);
		 })();
	</script>
 	<!-- End SiteHeart code -->
	
	<div id="main-container" class="container-fluid" style="padding: 0px; background-image: url(resources/images/backgrounds/background_5.jpg);">
    		
	    <div class="page">
	        <tiles:insertAttribute name="header" />
	        
<!-- ............................................................. -->
					
					<div class="main_width container">
				            
				            
				
				
				
				
				
				<script type="text/javascript">
				    $(document).ready(function ($) {
				        var options = {
				            $AutoPlay: false,
				            $SlideWidth: 88,
				            $SlideSpacing: 1,
				            $DisplayPieces: 10,
				            $UISearchMode: 0,
				            $Loop: 0
				        };
				        var galleryId = 'leadersSlider';
				        var jssor_slider1 = new $JssorSlider$(galleryId, options);
				        $("#" + galleryId).find(".right-border").click(function() {
				            jssor_slider1.$PlayTo(jssor_slider1.$CurrentIndex() + 4)
				        });
				    });
				</script>
				
				<div class="leaders clearfix">
				    <div class="bottom header pull-left">Новые лица</div>
				    <div id="leadersSlider" style="position: relative; top: 0px; left: 86px; width: 870px; height: 84px; margin-left: 2px;">
				        
				        
				    <div style="position: absolute; top: 0px; left: 0px; width: 870px; height: 84px; transform-origin: 0px 0px 0px; transform: scale(1);"><div style="position: relative; top: 0px; left: 0px; width: 870px; height: 84px; margin-left: 2px; overflow: visible;"><div u="slides" style="cursor: move; position: absolute; overflow: hidden; left: 0px; top: 0px; width: 870px; height: 84px; z-index: 0;"><div style="position: absolute; z-index: 0; left: 0px; top: 0px;"></div></div><div u="slides" style="cursor: move; position: absolute; overflow: hidden; left: 0px; top: 0px; width: 870px; height: 84px; z-index: 0;"><div style="width: 88px; height: 84px; top: 0px; left: 0px; position: absolute; opacity: 0; background-color: rgb(0, 0, 0);"></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 0px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/520" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/520/cf58e395-3ae5-4121-9c2f-7128685e74c2/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 89px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/518" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/518/b0739181-548d-4f4d-9ee0-25c409402af2/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 178px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/515" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/515/09569623-5610-4eeb-816b-c2b376c65a15/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 267px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/513" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/513/65067d36-8f0f-4622-b118-8f7e9868aaea/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 356px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/510" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/510/f52a2df5-a15f-4c2b-b491-a8cd6bc45e14/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 445px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/504" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/504/5d1c3de5-5e33-4d01-8a0b-709a93c21422/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 534px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/502" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/502/4b74fa94-66fc-421e-958e-07cb3aae6261/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 623px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/501" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/501/a661dc70-6897-45ac-9303-5f8658149e4e/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 712px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/500" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/500/556a6f86-1e01-45a7-a824-c5d4be9273ab/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 801px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/497" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/497/b73465ca-3814-4943-9f0c-ec44d2ec9b20/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/496" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/496/9b99da82-5a5d-4373-8699-ba2329eaf3a5/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/493" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/493/79ddb566-77e5-489e-ada8-a6a699e9e389/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/492" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/492/371024ed-bb09-4c8c-838f-ebc03e89c421/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/490" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/490/bd65568a-dec6-46ee-b2fa-29e16be825d0/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/486" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/486/50cba3c4-a4d2-4022-b88a-4b59ee9317b4/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/485" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/485/62a50b03-1015-4bea-832a-6d5af7a5681c/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/483" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/483/03022d21-a0ca-4500-a9b8-c5f9a4f95566/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/480" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/480/6c280da8-189c-4c54-a5f2-8428dfed040c/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/479" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/479/cf4ca933-6422-46db-9785-94cbe2616c39/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				                <div class="slide-item" style="width: 88px; height: 84px; top: 0px; left: 890px; position: absolute; overflow: hidden; transform: perspective(2000px);">
				                    <a href="/user/478" style="transform: perspective(2000px);">
				                        
				                            
				                                
				                                <img alt="" src="/user-image/478/a3b00403-b105-4690-8c71-b175f650b8b7/bigavatar" width="86" height="86" style="transform: perspective(2000px);">
				                            
				                            
				                        
				                    </a>
				                <div style="width: 88px; height: 84px; top: 0px; left: 0px; z-index: 1000; display: none;"></div></div>
				            
				        </div><div class="right-border" style="position: absolute; right: 0;">
				            <span class="slider-arrow"><img alt="" src="resources/images/arrow-right.png"></span>
				        </div></div></div></div>
				</div>
				    </div>
			
				<div class="main_width container">
        <div class="user-info">
            
            










        </div>
    </div>
    
    	
<!-- ............................................................. -->
	    	        
	        
	        <div class="content">
	            <tiles:insertAttribute name="body" />
	        </div>
	        <tiles:insertAttribute name="footer" />
	    </div>
	    
	</div>
	

</body>
</html>
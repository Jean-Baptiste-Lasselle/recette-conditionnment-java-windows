(function(){var newFooterSockModule=function($){function switchToDesktopView(){$footSockInner.css("position","relative");$left.css({position:"absolute",top:0});$left.css(isRtl?"right":"left",0);$center.css({display:"inline-block","vertical-align":"top"});$right.css({position:"absolute",top:0});$right.css(isRtl?"left":"right",0);$right.insertAfter($center)}function switchToOtherViews(){$footSockInner.css("position","");$left.css({position:"",top:"",left:"",right:""});$center.css({display:"","vertical-align":""});$rating1.css({"max-width":"","margin-left":"","margin-right":""});$rating2title.css("margin-bottom","");$rating3.css({"margin-left":"","margin-right":""});$right.css({position:"",top:"",left:"",right:""});$right.insertBefore($center)}function adjustFooterSockCenter(){var leftWidth=$left.length==0?0:$left.width(),rightWidth=$right.length==0?0:$right.width(),marginOffset=(rightWidth-leftWidth)/2,maxWidth=$footSockInner.width()-leftWidth-rightWidth,cssMarginLeft=isRtl?"margin-right":"margin-left",cssMarginRight=isRtl?"margin-left":"margin-right";$rating1.css("max-width",maxWidth);$rating1.css(cssMarginLeft,-1*marginOffset);$rating1.css(cssMarginRight,marginOffset);$rating2title.css("margin-bottom","20");$rating3.css(cssMarginLeft,-1*marginOffset);$rating3.css(cssMarginRight,marginOffset)}function resize(){window.matchMedia("(max-width: 960px)").matches?currentView!=viewTypes.Others&&(currentView=viewTypes.Others,switchToOtherViews()):(currentView!=viewTypes.Desktop&&(currentView=viewTypes.Desktop,switchToDesktopView()),adjustFooterSockCenter())}var viewTypes={Desktop:0,Others:1},currentView=null,isRtl,windowWidth=0,$footSockInner,$left,$center,$rating1,$rating2title,$rating3,$right;return $(document).ready(function(){isRtl=$("html").attr("dir")=="rtl";$footSockInner=$("div#footerSock div#footerSockInner");$left=$footSockInner.find("div.footerSockLeft");$center=$footSockInner.find("div.footerSockCenter");$rating1=$footSockInner.find("div.rating div#ratingSection1");$rating2title=$footSockInner.find("div.rating div#ratingSection2 div.title");$rating3=$footSockInner.find("div.rating div#ratingSection3");$right=$footSockInner.find("div.footerSockRight");$("div.footerSockLeft div.linkList ul.links a").each(function(){$(this).attr("aria-label",$(this).attr("class"))});$(window).resize(function(){windowWidth&&windowWidth!=$(window).width()&&(resize(),windowWidth=$(window).width())});resize();windowWidth=$(window).width()}),{resize:resize}};typeof define=="function"&&window.mtpsAmd?define("newFooterSock",["jquery"],function($){return newFooterSockModule($)}):(window.epx=window.epx||{},window.epx.newFooterSock=newFooterSockModule($))})();;
(function(){var footerModule=function($){function fixNthChild(){$("div#ux-footer footer.top div#rightLinks > div:nth-child(4n)").addClass("nth-child-4n")}function fixEuConsent(){var targets=[$('a[href="https://www.microsoft.com/en-us/legal/intellectualproperty/Trademarks/"]'),$('a[href="https://privacy.microsoft.com/privacystatement"]'),$('a[href$="dn529288"]'),$('a[href$="cc300389"')];targets.forEach(function(item){item.attr("data-mscc-ic","false")})}$(document).ready(function(){fixNthChild();fixEuConsent()})};typeof define=="function"&&window.mtpsAmd?define("footer",["jquery"],function($){return footerModule($)}):footerModule($)})();;

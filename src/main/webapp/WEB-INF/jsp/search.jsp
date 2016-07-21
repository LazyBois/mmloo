<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="nwsuaf.mmloo.entity.Gshelves"%>
<%@ page import="nwsuaf.mmloo.util.PageParam"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Title</title>
<meta content="application/applefile" charset="utf-8">
<link rel="stylesheet" href="../mmloo/css/user/search.css">
<link href="../mmloo/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../mmloo/css/bootstrapValidator.css" />
<link rel="stylesheet" href=".../mmloo/css/icon.css">
<link rel="stylesheet" href="../mmloo/css/user/shopShow.css">
<script src="../mmloo/js/jquery-1.11.3.min.js"></script>
<script src="../mmloo/js/bootstrap.min.js"></script>
<script src="http://files.cnblogs.com/rubylouvre/bootstrap-modal.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<div id="SearchWrap" class="w">
		<div id="CrumbsBar" class="crumbs-bar">
			<div class="crumbs-nav" style="width: 100%;margin-left: 10%;">
				<div class="crumbs-nav-main clearfix">
					<div class="crumbs-nav-item">
						<div class="crumbs-first">
							<a href="">全部结果</a>
						</div>
					</div>
					<i class="crumbs-arrow">&gt;</i>
					<div class="crumbs-nav-item">
						<strong class="search-key">"T恤男"</strong>
					</div>
				</div>
			</div>
		</div>
		<div id="J_container" class="container" style="width: 82%">
			<div id="selector" class="selector"
				style="border-bottom: 1px solid #DDD; border-top: 1px solid #DDD">
				<div class="J_selectorLine s-brand">
					<div class="sl-wrap">
						<div class="sl-key">
							<strong>品牌：</strong>
						</div>
						<div class="sl-value">
							<ul class="sl-b-letter J_brandLetter"
								onclick="searchlog(1,0,0,48)">
								<li data-initial="0" class="curr">所有品牌</li>
								<li data-initial="a">A</li>
								<li data-initial="b">B</li>
								<li data-initial="c">C</li>
								<li data-initial="d">D</li>
								<li data-initial="e">E</li>
								<li data-initial="f">F</li>
								<li data-initial="g">G</li>
								<li data-initial="h">H</li>
								<li data-initial="i">I</li>
								<li data-initial="j">J</li>
								<li data-initial="k">K</li>
								<li data-initial="l">L</li>
								<li data-initial="m">M</li>
								<li data-initial="n">N</li>
								<li data-initial="o">O</li>
								<li data-initial="p">P</li>
								<li data-initial="q">Q</li>
								<li data-initial="r">R</li>
								<li data-initial="s">S</li>
								<li data-initial="t">T</li>
								<li data-initial="u">U</li>
								<li data-initial="v">V</li>
								<li data-initial="w">W</li>
								<li data-initial="x">X</li>
								<li data-initial="y">Y</li>
								<li data-initial="z">Z</li>
								<li data-initial="other">其它</li>
							</ul>
							<div class="sl-b-search J_brandSearch">
								<i></i> <input class="input-txt placehoder"
									data-placehoder="可输入拼音、汉字查找品牌" type="text">
							</div>
							<div class="clr"></div>
							<div class="sl-v-list">
								<ul class="J_valueList v-fixed">
									<li id="brand-94529" data-initial="g" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E7%9B%96%E7%92%9E%EF%BC%88GAP%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow" onclick="searchlog(1,0,0,71,'品牌::盖璞（GAP）')"
										title="盖璞（GAP）"> <i></i>盖璞（GAP）
									</a>
									</li>
									<li id="brand-20686" data-initial="z" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E6%88%98%E5%9C%B0%E5%90%89%E6%99%AE%40&amp;uc=0#J_crumbsBar"
										rel="nofollow" onclick="searchlog(1,0,1,71,'品牌::战地吉普')"
										title="战地吉普"> <i></i>战地吉普
									</a>
									</li>
									<li id="brand-35046" data-initial="h" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E6%B5%B7%E6%BE%9C%E4%B9%8B%E5%AE%B6%EF%BC%88HEILAN%20HOME%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,2,71,'品牌::海澜之家（HEILAN HOME）')"
										title="海澜之家（HEILAN HOME）"> <i></i>海澜之家（HEILAN HOME）
									</a>
									</li>
									<li id="brand-81120" data-initial="q" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E4%B8%83%E5%8C%B9%E7%8B%BC%EF%BC%88SEPTWOLVES%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,3,71,'品牌::七匹狼（SEPTWOLVES）')"
										title="七匹狼（SEPTWOLVES）"> <i></i>七匹狼（SEPTWOLVES）
									</a>
									</li>
									<li id="brand-59540" data-initial="m" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E7%BE%8E%E7%89%B9%E6%96%AF%E9%82%A6%E5%A8%81%EF%BC%88Meters%20Bonwe%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,4,71,'品牌::美特斯邦威（Meters Bonwe）')"
										title="美特斯邦威（Meters Bonwe）"> <i></i>美特斯邦威（Meters Bonwe）
									</a>
									</li>
									<li id="brand-59207" data-initial="h" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E8%8A%B1%E8%8A%B1%E5%85%AC%E5%AD%90%EF%BC%88PLAYBOY%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,5,71,'品牌::花花公子（PLAYBOY）')"
										title="花花公子（PLAYBOY）"> <i></i>花花公子（PLAYBOY）
									</a>
									</li>
									<li id="brand-15214" data-initial="s" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E6%A3%AE%E9%A9%AC%EF%BC%88Semir%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow" onclick="searchlog(1,0,6,71,'品牌::森马（Semir）')"
										title="森马（Semir）"> <i></i>森马（Semir）
									</a>
									</li>
									<li id="brand-12002" data-initial="m" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E9%A9%AC%E5%85%8B%E5%8D%8E%E8%8F%B2%EF%BC%88FAIRWHALE%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,7,71,'品牌::马克华菲（FAIRWHALE）')"
										title="马克华菲（FAIRWHALE）"> <i></i>马克华菲（FAIRWHALE）
									</a>
									</li>
									<li id="brand-9211" data-initial="j" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E6%9D%B0%E5%85%8B%E7%90%BC%E6%96%AF%EF%BC%88Jack%20Jones%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,8,71,'品牌::杰克琼斯（Jack Jones）')"
										title="杰克琼斯（Jack Jones）"> <i></i>杰克琼斯（Jack Jones）
									</a>
									</li>
									<li id="brand-31059" data-initial="n" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E5%8D%97%E6%9E%81%E4%BA%BA%EF%BC%88Nanjiren%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,9,71,'品牌::南极人（Nanjiren）')"
										title="南极人（Nanjiren）"> <i></i>南极人（Nanjiren）
									</a>
									</li>
									<li id="brand-20798" data-initial="z" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E7%9C%9F%E7%BB%B4%E6%96%AF%EF%BC%88Jeanswest%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,10,71,'品牌::真维斯（Jeanswest）')"
										title="真维斯（Jeanswest）"> <i></i>真维斯（Jeanswest）
									</a>
									</li>
									<li id="brand-4257" data-initial="b" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E7%8F%AD%E5%B0%BC%E8%B7%AF%EF%BC%88Baleno%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,11,71,'品牌::班尼路（Baleno）')"
										title="班尼路（Baleno）"> <i></i>班尼路（Baleno）
									</a>
									</li>
									<li id="brand-94529" data-initial="g" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E7%9B%96%E7%92%9E%EF%BC%88GAP%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow" onclick="searchlog(1,0,0,71,'品牌::盖璞（GAP）')"
										title="盖璞（GAP）"> <i></i>盖璞（GAP）
									</a>
									</li>
									<li id="brand-20686" data-initial="z" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E6%88%98%E5%9C%B0%E5%90%89%E6%99%AE%40&amp;uc=0#J_crumbsBar"
										rel="nofollow" onclick="searchlog(1,0,1,71,'品牌::战地吉普')"
										title="战地吉普"> <i></i>战地吉普
									</a>
									</li>
									<li id="brand-35046" data-initial="h" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E6%B5%B7%E6%BE%9C%E4%B9%8B%E5%AE%B6%EF%BC%88HEILAN%20HOME%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,2,71,'品牌::海澜之家（HEILAN HOME）')"
										title="海澜之家（HEILAN HOME）"> <i></i>海澜之家（HEILAN HOME）
									</a>
									</li>
									<li id="brand-81120" data-initial="q" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E4%B8%83%E5%8C%B9%E7%8B%BC%EF%BC%88SEPTWOLVES%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,3,71,'品牌::七匹狼（SEPTWOLVES）')"
										title="七匹狼（SEPTWOLVES）"> <i></i>七匹狼（SEPTWOLVES）
									</a>
									</li>
									<li id="brand-59540" data-initial="m" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E7%BE%8E%E7%89%B9%E6%96%AF%E9%82%A6%E5%A8%81%EF%BC%88Meters%20Bonwe%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,4,71,'品牌::美特斯邦威（Meters Bonwe）')"
										title="美特斯邦威（Meters Bonwe）"> <i></i>美特斯邦威（Meters Bonwe）
									</a>
									</li>
									<li id="brand-59207" data-initial="h" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E8%8A%B1%E8%8A%B1%E5%85%AC%E5%AD%90%EF%BC%88PLAYBOY%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,5,71,'品牌::花花公子（PLAYBOY）')"
										title="花花公子（PLAYBOY）"> <i></i>花花公子（PLAYBOY）
									</a>
									</li>
									<li id="brand-15214" data-initial="s" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E6%A3%AE%E9%A9%AC%EF%BC%88Semir%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow" onclick="searchlog(1,0,6,71,'品牌::森马（Semir）')"
										title="森马（Semir）"> <i></i>森马（Semir）
									</a>
									</li>
									<li id="brand-12002" data-initial="m" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E9%A9%AC%E5%85%8B%E5%8D%8E%E8%8F%B2%EF%BC%88FAIRWHALE%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,7,71,'品牌::马克华菲（FAIRWHALE）')"
										title="马克华菲（FAIRWHALE）"> <i></i>马克华菲（FAIRWHALE）
									</a>
									</li>
									<li id="brand-9211" data-initial="j" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E6%9D%B0%E5%85%8B%E7%90%BC%E6%96%AF%EF%BC%88Jack%20Jones%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,8,71,'品牌::杰克琼斯（Jack Jones）')"
										title="杰克琼斯（Jack Jones）"> <i></i>杰克琼斯（Jack Jones）
									</a>
									</li>
									<li id="brand-31059" data-initial="n" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E5%8D%97%E6%9E%81%E4%BA%BA%EF%BC%88Nanjiren%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,9,71,'品牌::南极人（Nanjiren）')"
										title="南极人（Nanjiren）"> <i></i>南极人（Nanjiren）
									</a>
									</li>
									<li id="brand-20798" data-initial="z" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E7%9C%9F%E7%BB%B4%E6%96%AF%EF%BC%88Jeanswest%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,10,71,'品牌::真维斯（Jeanswest）')"
										title="真维斯（Jeanswest）"> <i></i>真维斯（Jeanswest）
									</a>
									</li>
									<li id="brand-4257" data-initial="b" style="display:block;">
										<a
										href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exbrand_%E7%8F%AD%E5%B0%BC%E8%B7%AF%EF%BC%88Baleno%EF%BC%89%40&amp;uc=0#J_crumbsBar"
										rel="nofollow"
										onclick="searchlog(1,0,11,71,'品牌::班尼路（Baleno）')"
										title="班尼路（Baleno）"> <i></i>班尼路（Baleno）
									</a>
									</li>
								</ul>
							</div>
							<div class="sl-b-selected J_brandSelected">
								<span class="sl-b-key">已选条件：</span>
								<ul class="sl-v-list brand-selected"></ul>
							</div>
							<div class="sl-btns">
								<a class="btn btn-primary J_btnsConfirm disabled"
									href="javascript:;">确定</a> <a
									class="btn btn-default J_btnsCancel" href="javascript:;">取消</a>
							</div>
						</div>
						<div class="sl-ext">
							<a style="visibility: visible;" class="sl-e-more J_extMore"
								href="javascript:;" data-url="">更多<i></i></a> <a
								class="sl-e-multiple J_extMultiple" href="javascript:;">多选<i></i></a>
						</div>
					</div>
				</div>
				<div class="J_selectorLine s-line">
					<div class="sl-wrap">
						<div class="sl-key">
							<span>领型：</span>
						</div>
						<div class="sl-value">
							<div class="sl-v-list">
								<ul class="J_valueList">
									<li><a href="71304%40&amp;uc=0#J_crumbsBar" rel="nofollow"
										onclick="searchlog(1,0,10000,71,'领型::圆领')"><i></i>圆领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10001,71,'领型::翻领')"><i></i>翻领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10002,71,'领型::V领')"><i></i>V领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10003,71,'领型::立领')"><i></i>立领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10004,71,'领型::连帽')"><i></i>连帽</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10005,71,'领型::方领')"><i></i>方领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10006,71,'领型::高领')"><i></i>高领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10007,71,'领型::扣领尖领')"><i></i>扣领尖领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10008,71,'领型::双层领')"><i></i>双层领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10009,71,'领型::可脱卸帽')"><i></i>可脱卸帽</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10010,71,'领型::礼服领')"><i></i>礼服领</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,10011,71,'领型::U型领')"><i></i>U型领</a></li>
								</ul>
							</div>
							<div class="sl-btns">
								<a class="btn btn-primary J_btnsConfirm disabled"
									href="javascript:;">确定</a> <a
									class="btn btn-default J_btnsCancel" href="javascript:;">取消</a>
							</div>
						</div>
						<div class="sl-ext">
							<a style="visibility: hidden;" class="sl-e-more J_extMore"
								href="javascript:;">更多<i></i></a> <a
								class="sl-e-multiple J_extMultiple" href="javascript:;">多选<i></i></a>
						</div>
					</div>
				</div>
				<div class="J_selectorLine s-line">
					<div class="sl-wrap">
						<div class="sl-key">
							<span>人群：</span>
						</div>
						<div class="sl-value">
							<div class="sl-v-list">
								<ul class="J_valueList">
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,20000,71,'人群::青年')"><i></i>青年</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,20001,71,'人群::青少年')"><i></i>青少年</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,20002,71,'人群::中年')"><i></i>中年</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,20003,71,'人群::老年')"><i></i>老年</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,20004,71,'人群::情侣装')"><i></i>情侣装</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,20005,71,'人群::其它')"><i></i>其它</a></li>
								</ul>
							</div>
							<div class="sl-btns">
								<a class="btn btn-primary J_btnsConfirm disabled"
									href="javascript:;">确定</a> <a
									class="btn btn-default J_btnsCancel" href="javascript:;">取消</a>
							</div>
						</div>
						<div class="sl-ext">
							<a style="visibility: hidden;" class="sl-e-more J_extMore"
								href="javascript:;">更多<i></i></a> <a
								class="sl-e-multiple J_extMultiple" href="javascript:;">多选<i></i></a>
						</div>
					</div>
				</div>
				<div class="J_selectorLine s-line">
					<div class="sl-wrap">
						<div class="sl-key">
							<span>主要材质：</span>
						</div>
						<div class="sl-value">
							<div class="sl-v-list">
								<ul class="J_valueList">
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30000,71,'主要材质::棉')"><i></i>棉</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30001,71,'主要材质::麻')"><i></i>麻</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30002,71,'主要材质::蚕丝')"><i></i>蚕丝</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30003,71,'主要材质::涤纶')"><i></i>涤纶</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30004,71,'主要材质::羊毛')"><i></i>羊毛</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30005,71,'主要材质::锦纶')"><i></i>锦纶</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30006,71,'主要材质::莫代尔')"><i></i>莫代尔</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30007,71,'主要材质::腈纶')"><i></i>腈纶</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30008,71,'主要材质::羊绒')"><i></i>羊绒</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30009,71,'主要材质::LYCRA莱卡')"><i></i>LYCRA莱卡</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30010,71,'主要材质::马海毛')"><i></i>马海毛</a></li>
									<li><a href="" rel="nofollow"
										onclick="searchlog(1,0,30011,71,'主要材质::其他')"><i></i>其他</a></li>
								</ul>
							</div>
							<div class="sl-btns">
								<a class="btn btn-primary J_btnsConfirm disabled"
									href="javascript:;">确定</a> <a
									class="btn btn-default J_btnsCancel" href="javascript:;">取消</a>
							</div>
						</div>
						<div class="sl-ext">
							<a style="visibility: hidden;" class="sl-e-more J_extMore"
								href="javascript:;">更多<i></i></a> <a
								class="sl-e-multiple J_extMultiple" href="javascript:;">多选<i></i></a>
						</div>
					</div>
				</div>
				<div id="J_selectorSenior" class="J_selectorLine s-line s-senior">
					<div class="sl-wrap">
						<div class="sl-key">
							<span>高级选项：</span>
						</div>
						<div class="sl-value">
							<div class="sl-v-tab">
								<div class="sl-tab-trigger clearfix">
									<a class="trig-item" href="javascript:;"><span class="text">袖型</span><i
										class="arrow"></i></a> <a class="trig-item" href="javascript:;"><span
										class="text">版型</span><i class="arrow"></i></a> <a
										class="trig-item" href="javascript:;"><span class="text">价格</span><i
										class="arrow"></i></a> <a class="trig-item" href="javascript:;"><span
										class="text">风格</span><i class="arrow"></i></a> <a
										class="trig-item" href="javascript:;"><span class="text">其他分类</span><i
										class="arrow"></i></a>
								</div>
							</div>
						</div>
						<div class="sl-tab-cont">
							<div class="sl-tab-cont-item" style="display: none;">
								<div class="sl-v-list">
									<ul class="J_valueList clearfix">
										<li style="margin-left: 40px"><a href="" rel="nofollow"
											onclick="searchlog(1,0,40000,71,'袖型::短袖')"><i></i>短袖</a></li>
										<li><a href="" rel="nofollow"
											onclick="searchlog(1,0,40001,71,'袖型::长袖')"><i></i>长袖</a></li>
										<li><a href="" rel="nofollow"
											onclick="searchlog(1,0,40002,71,'袖型::七分袖')"><i></i>七分袖</a></li>
										<li><a href="" rel="nofollow"
											onclick="searchlog(1,0,40003,71,'袖型::无袖')"><i></i>无袖</a></li>
										<li><a href="" rel="nofollow"
											onclick="searchlog(1,0,40004,71,'袖型::五分袖')"><i></i>五分袖</a></li>
										<li><a href="" rel="nofollow"
											onclick="searchlog(1,0,40005,71,'袖型::其他')"><i></i>其他</a></li>
									</ul>
									<a class="btn-multiple J_tabMultiple" href="javascript:;">多选<i></i></a>
								</div>
								<div class="sl-btns">
									<a class="btn btn-primary J_btnsConfirm disabled"
										href="javascript:;">确定</a> <a
										class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
								</div>
							</div>
							<div class="sl-tab-cont-item" style="display: none;">
								<div class="sl-v-list">
									<ul class="J_valueList clearfix" style="padding-top: 5px;">
										<li><a href="" rel="nofollow"
											onclick="searchlog(1,0,50000,71,'版型::修身型')"><i></i>修身型</a></li>
										<li><a href="" rel="nofollow"
											onclick="searchlog(1,0,50001,71,'版型::标准型（腰围=胸围）')"><i></i>标准型（腰围=胸围）</a></li>
										<li><a href="" rel="nofollow"
											onclick="searchlog(1,0,50002,71,'版型::宽松型（腰围>胸围）')"><i></i>宽松型（腰围&gt;胸围）</a></li>
									</ul>
									<a class="btn-multiple J_tabMultiple" href="javascript:;">多选<i></i></a>
								</div>
								<div class="sl-btns">
									<a class="btn btn-primary J_btnsConfirm disabled"
										href="javascript:;">确定</a> <a
										class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
								</div>
							</div>
							<div class="sl-tab-cont-item" style="display: none;">
								<div class="sl-v-list">
									<ul class="J_valueList clearfix">
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exprice_0-59%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,60000,71,'价格::0-59')"><i></i>0-59</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exprice_60-199%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,60001,71,'价格::60-199')"><i></i>60-199</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exprice_200-299%40&amp;uc=0#J_crumbsBar"
											rel="nofollow"
											onclick="searchlog(1,0,60002,71,'价格::200-299')"><i></i>200-299</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exprice_300-499%40&amp;uc=0#J_crumbsBar"
											rel="nofollow"
											onclick="searchlog(1,0,60003,71,'价格::300-499')"><i></i>300-499</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exprice_500-699%40&amp;uc=0#J_crumbsBar"
											rel="nofollow"
											onclick="searchlog(1,0,60004,71,'价格::500-699')"><i></i>500-699</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=exprice_700gt%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,60005,71,'价格::700以上')"><i></i>700以上</a></li>
									</ul>
								</div>
								<div class="sl-btns">
									<a class="btn btn-primary J_btnsConfirm disabled"
										href="javascript:;">确定</a> <a
										class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
								</div>
							</div>
							<div class="sl-tab-cont-item" style="display: none;">
								<div class="sl-v-list">
									<ul class="J_valueList clearfix">
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_205669%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70000,71,'风格::青春休闲')"><i></i>青春休闲</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_15113%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70001,71,'风格::商务休闲')"><i></i>商务休闲</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_84837%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70002,71,'风格::日韩风格')"><i></i>日韩风格</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_71334%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70003,71,'风格::商务正装')"><i></i>商务正装</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_97514%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70004,71,'风格::欧美简约')"><i></i>欧美简约</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_222435%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70005,71,'风格::中国风')"><i></i>中国风</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_561475%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70006,71,'风格::朋克潮流')"><i></i>朋克潮流</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_561474%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70007,71,'风格::军旅工装')"><i></i>军旅工装</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_95627%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70008,71,'风格::原创设计')"><i></i>原创设计</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_205574%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70009,71,'风格::嘻哈风格')"><i></i>嘻哈风格</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_232416%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70010,71,'风格::英式学院')"><i></i>英式学院</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;ev=1373_167001%40&amp;uc=0#J_crumbsBar"
											rel="nofollow" onclick="searchlog(1,0,70011,71,'风格::原生态')"><i></i>原生态</a></li>
									</ul>
									<a class="btn-multiple J_tabMultiple" href="javascript:;">多选<i></i></a>
								</div>
								<div class="sl-btns">
									<a class="btn btn-primary J_btnsConfirm disabled"
										href="javascript:;">确定</a> <a
										class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
								</div>
							</div>
							<div class="sl-tab-cont-item" style="display: none;">
								<div class="sl-v-list">
									<ul class="J_valueList clearfix">
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=1342#J_crumbsBar"
											rel="nofollow" data-v="1342"
											onclick="searchlog(1,1342,80000,51)"><i></i>男装</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=12102#J_crumbsBar"
											rel="nofollow" data-v="12102"
											onclick="searchlog(1,12102,80001,51)"><i></i>运动服饰</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=1345#J_crumbsBar"
											rel="nofollow" data-v="1345"
											onclick="searchlog(1,1345,80002,51)"><i></i>内衣</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=12099#J_crumbsBar"
											rel="nofollow" data-v="12099"
											onclick="searchlog(1,12099,80003,51)"><i></i>运动鞋包</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid3=12114#J_crumbsBar"
											rel="nofollow" data-v="12114"
											onclick="searchlog(1,12114,80004,51)"><i></i>瑜伽舞蹈</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid3=5153#J_crumbsBar"
											rel="nofollow" data-v="5153"
											onclick="searchlog(1,5153,80005,51)"><i></i>武术搏击</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=2628#J_crumbsBar"
											rel="nofollow" data-v="2628"
											onclick="searchlog(1,2628,80006,51)"><i></i>户外鞋服</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid3=12091#J_crumbsBar"
											rel="nofollow" data-v="12091"
											onclick="searchlog(1,12091,80007,51)"><i></i>男表</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=1343#J_crumbsBar"
											rel="nofollow" data-v="1343"
											onclick="searchlog(1,1343,80008,51)"><i></i>女装</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid3=9188#J_crumbsBar"
											rel="nofollow" data-v="9188"
											onclick="searchlog(1,9188,80009,51)"><i></i>服饰</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid3=1669#J_crumbsBar"
											rel="nofollow" data-v="1669"
											onclick="searchlog(1,1669,80010,51)"><i></i>驱虫用品</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=12115#J_crumbsBar"
											rel="nofollow" data-v="12115"
											onclick="searchlog(1,12115,80011,51)"><i></i>骑行运动</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=1466#J_crumbsBar"
											rel="nofollow" data-v="1466"
											onclick="searchlog(1,1466,80012,51)"><i></i>体育用品</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=1462#J_crumbsBar"
											rel="nofollow" data-v="1462"
											onclick="searchlog(1,1462,80013,51)"><i></i>户外装备</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=12154#J_crumbsBar"
											rel="nofollow" data-v="12154"
											onclick="searchlog(1,12154,80014,51)"><i></i>游泳用品</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=11842#J_crumbsBar"
											rel="nofollow" data-v="11842"
											onclick="searchlog(1,11842,80015,51)"><i></i>童装童鞋</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=6313#J_crumbsBar"
											rel="nofollow" data-v="6313"
											onclick="searchlog(1,6313,80016,51)"><i></i>寝居服饰</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=2599#J_crumbsBar"
											rel="nofollow" data-v="2599"
											onclick="searchlog(1,2599,80017,51)"><i></i>礼品</a></li>
										<li><a
											href="search?keyword=T%E6%81%A4%E7%94%B7&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;sttr=1&amp;offset=2&amp;cid2=9858#J_crumbsBar"
											rel="nofollow" data-v="9858"
											onclick="searchlog(1,9858,80018,51)"><i></i>五金工具</a></li>
									</ul>
								</div>
								<div class="sl-btns">
									<a class="btn btn-primary J_btnsConfirm disabled"
										href="javascript:;">确定</a> <a
										class="btn btn-default J_tabCancel" href="javascript:;">取消</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div data-lazy-img-install="1" id="J_main" class="g-main2">
				<div class="m-list">
					<div class="ml-wrap">
						<div id="J_filter" class="filter">
							<div class="f-line top">
								<div class="f-sort">
									<a href="javascript:;" class="curr" onclick="">综合排序<i></i></a><a
										href="javascript:;" class="" onclick="SEARCH.sort('3')">销量<i></i></a><a
										href="javascript:;" class="" onclick="SEARCH.sort('2')">价格<i></i></a><a
										href="javascript:;" class="" onclick="SEARCH.sort('4')">评论数<i></i></a><a
										href="javascript:;" class="" onclick="SEARCH.sort('5')">新品<i></i></a>
								</div>
								<div class="f-search">
									<input value="在结果中搜索" class="input-txt" type="text"> <a
										data-type="all" data-field="exp_key" class="btn btn-default"
										data-url="search?keyword=diy&amp;enc=utf-8&amp;qrst=1&amp;rt=1&amp;stop=1&amp;vt=2&amp;offset=2&amp;exp_key="
										href="javascript:;">确定</a>
								</div>
								<div id="J_topPage" class="f-pager">
									<span class="fp-text"><b>1</b><em>/</em><i>100</i></span><a
										class="fp-prev disabled" href="javascript:;">&lt;</a><a
										class="fp-next" onclick="SEARCH.page(3)" href="javascript:;"
										title="使用方向键右键也可翻到下一页哦！">&gt;</a>
								</div>
								<div class="f-result-sum">
									共<span id="J_resCount" class="num">79.2万</span>件商品
								</div>
								<span class="clr"></span>
							</div>
						</div>
						<div id="J_goodsList" class="goods-list-v1 gl-type-1 J-goods-list">
							<ul class="gl-warp clearfix" data-tpl="1">
								<c:forEach items="${pageParam.data }" var="item">
									<li data-sku="${item.gid }" class="gl-item">
										<div class="gl-i-wrap">

											<!-- 设置图片 -->
											<div class="p-img">
												<a target="_blank" title="${item.gname }"
													href="../mmloo/product.do?gid=${item.gid }"
													onclick="">
													<img class="err-product" data-img="1"
													src="../mmloo/${item.selfimage }" height="220" width="220">
												</a>
												<div data-ico="0" data-venid="79545"></div>
											</div>

											<!--价格 -->
											<div class="p-price">
												<strong data-done="1" class="J_1211892124"
													data-price="${item.gprice }"><em>￥</em><i>${item.gprice }</i></strong>
											</div>

											<!-- 商品名称 -->
											<div class="p-name p-name-type-2">
												<a target="_blank" title="${item.gname }"
													href="../mmloo/product.do?gid=${item.gid }"
													onclick="">
													<em>${item.gname } </em> <i class="promo-words"
													id="J_AD_1211892124"> ${item.gname }</i>
												</a>
											</div>

											<!-- 加入购物车 -->
											<div class="p-operate">
												<a class="p-o-btn focus J_focus" data-sku="1211892124"
													href="javascript:;"
													onclick="searchlog(1,1211892124,0,5,'','flagsClk=5243032')"><i></i>关注</a>
												<a class="p-o-btn addcart" data-stock-val="1"
													data-disable-notice="0" data-presale="0"
													
													target="_blank"
													onclick="addToCart(${item.gid })"
													data-parallel="0"><i></i>加入购物车</a>
											</div>
										</div>
									</li>
								</c:forEach>
							</ul>
							<span class="clr"> </span>
						</div>
						<div id="J_scroll_loading" class="notice-loading-more"
							data-pos="30" data-log-id="1467591098.23620"></div>
						<div class="page clearfix">
							<div id="J_bottomPage" class="p-wrap">
								<span>第</span>
								<%
									PageParam<Gshelves> pageParam = (PageParam<Gshelves>) request.getAttribute("pageParam");
									int currPage = pageParam.getCurrPage();
									int totalPage = pageParam.getTotalPage();
									for (int i = 1; i <= totalPage; i++) {
										if (i == currPage) {
								%><span class="current"><%=currPage%></span>
								<%
									} else {
										Object o = request.getAttribute("key");
										String k = "search.do?pages="+i;
										if(null != o)
										{
											k = k + "&key="+(String)o;
										}
								%><a href="<%=k %>"><%=i%></a>
								<%
									}
								}
								%>
								<span>页</span>
							</div>
						</div>
					</div>
				</div>

				<span class="clr"></span>
			</div>
		</div>
	</div>
	</div>
</body>
<script>
	$(function() {
		$(".trig-item").hover(function() {
			//鼠标经过的操作.
			var num = $(this).index();
			$(this).addClass('trig-curr');
			$(".sl-tab-cont-item").each(function(index) {
				if (num == index) {
					$(this).css('display', 'block');
				}
			});

		}, function() {
			//鼠标离开的操作
			var num = $(this).index();
			$(this).removeClass('trig-curr');
			$(".sl-tab-cont-item").each(function(index) {
				if (num == index) {
					$(this).css('display', 'none');
				}
			});
		});
		$(".sl-tab-cont-item").hover(function() {
			//鼠标经过的操作.
			var num = $(this).index();
			$(this).addClass('trig-curr');
			$(this).css('display', 'block');
			$(".trig-item").each(function(index) {
				if (num == index) {
					$(this).addClass('trig-curr');
				}
			});

		}, function() {
			//鼠标离开的操作
			var num = $(this).index();
			$(this).removeClass('trig-curr');
			$(".trig-item").each(function(index) {
				if (num == index) {
					$(this).removeClass('trig-curr');
				}
			});
			$(this).css('display', 'none');
		});
		$('.J_extMore').click(function() {

		})
	})
	
	function addToCart(id) {
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : 'user/insertCart.do?gid=' + id + '&snum=1',
			data : {},
			datatype : "html",
			beforeSend : function() {
				//alert('user/showOrder.do?state=' + show)
			},
			success : function(msg) {
				if (msg == 'true')
					alert('添加成功')
				else
					alert('添加成功')
			},
			error : function(msg) {
				alert(msg.status)
			}
		});
	}
</script>

</html>

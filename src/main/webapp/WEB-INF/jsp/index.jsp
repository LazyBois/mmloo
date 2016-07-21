<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="nwsuaf.mmloo.entity.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- saved from url=(0081)http://localhost:63342/project/WebRoot/index.html?_ijt=mc2rnp3jlmlefu92k23uvh3102 -->
<html>
<head>
<title>Home</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="../mmloo/index/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

<link href="../mmloo/index/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->
<link rel="stylesheet" type="text/css" href="../mmloo/index/css/reset.css" />
<link rel="stylesheet" type="text/css" href="../mmloo/index/css/default.css">
<link rel="stylesheet" type="text/css" href="../mmloo/index/css/styles1.css">
<link href='http://fonts.useso.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="../mmloo/index/css/jq22.css">


<script src="../mmloo/index/js/jquery.min.js"></script>
<script src="../mmloo/index/js/jquery.easydropdown.js"></script>

<script src="../mmloo/indexjs/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src='../mmloo/indexjs/stopExecutionOnTimeout.js?t=1'></script>
<script type="text/javascript" src="../mmloo/index/js/main.js"></script>
<!--script-->


<style>
.get-cart{
	background: #323A45;
	color: #fff;
}
.get-cart:hover{
	background:#0D3F84;
	color:white;
}

</style>
</head>
<body>
	<!--header-->
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	<div class="container">
		<div class="banner-menu">
			
			<div class="shoes-grid">
				<div class="wmuSlider example1 slide-grid">
				   <div class="wmuSliderWrapper">
					   <article style="position: absolute; width: 100%; opacity: 0;">
					   	<div class="banner-matter">
							<img class="img-responsive banner-bag" src="images/bag.jpg" alt=" " />
							<div class="banner-off">
								<h2>FLAT 50% 0FF</h2>
								<span>FOR ALL PURCHASE <b>VALUE</b></span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et </p>
								<!----- ---->
	   		     				<button class="get-cart" type="button">Add Cart</button>
							</div>
							<div class="clearfix"> </div>
						</div>
					 	</article>
					 	<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-matter">
							<img class="img-responsive banner-bag" src="images/bag1.jpg" alt=" " />
							<div class="banner-off">
								<h2>FLAT 50% 0FF</h2>
								<span>FOR ALL PURCHASE <b>VALUE</b></span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et </p>
								<!----- ---->
	   		     				<button class="get-cart" type="button">Add Cart</button>
							</div>
							<div class="clearfix"> </div>
						</div>
					 	</article>
					 	<article style="position: absolute; width: 100%; opacity: 0;">
						<div class="banner-matter">
							<img class="img-responsive banner-bag" src="images/bag.jpg" alt=" " />
							<div class="banner-off">
								<h2>FLAT 50% 0FF</h2>
								<span>FOR ALL PURCHASE <b>VALUE</b></span>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et </p>
								<!--------->
	   		     				<button class="get-cart" type="button">Add Cart</button>
							</div>
							<div class="clearfix"> </div>
						</div>
					 	</article>
					 </div>
	                <ul class="wmuSliderPagination">
	                	<li><a href="#" class="">0</a></li>
	                	<li><a href="#" class="">1</a></li>
	                	<li><a href="#" class="">2</a></li>
	                </ul>
	            </div>
	           
	            <script src="js/jquery.wmuSlider.js"></script> 
				  <script>
	       			$('.example1').wmuSlider();         
	   		     </script> 	
	   		      <!---->
	   		     <div class="shoes-grid-left"> 
	   		     	<div class=" con-sed-grid">
	   		     		<div class="elit-grid"> 
		   		     		<a href="product.do?gid=10003940143"><h4>丹尼尔惠灵顿男表</h4></a>
		   		     		<span>FOR ALL PURCHASE VALUE</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, </p>
								<!------<a class="now-get" href="#">GET NOW</a>------>
							<button class="get-cart" type="button">GET NOW</button>
							
						
						</div>
						
						
						<a href="product.do?gid=10003940143"><img class="img-responsive shoe-left" src="../mmloo/products/big101.jpg" alt=" " height="140px" width="180px"/></a>

						<div class="clearfix"> </div>
						
						
	   		     	</div>
	   		     	<div class="con-sed-grid sed-left-top">
	   		     		<div class="elit-grid"> 
		   		     		<a href="product.do?gid=10003986138"><h4>瑞士石英表</h4></a>
		   		     		<span>FOR ALL PURCHASE VALUE</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, </p>
								<!------<a class="now-get" href="#">GET NOW</a>------>
							<button class="get-cart" type="button">GET NOW</button>
						</div>
						<a href="product.do?gid=10003986138"><img class="img-responsive shoe-left" src="../mmloo/products/big106.jpg" alt=" " height="140px" width="180px"/></a>
						<div class="clearfix"> </div>
	   		     	</div>
	   		     </div>
	   		     <div class="products">
	   		     
<!--------------------------------------------------------------------------------------->
	   		     	<h5 class="latest-product">最新商品</h5>
	   		     	  <a class="view-all" href="product.html">查看全部<span> </span></a>
	   		     </div>
	   		     <div class="product-left">
	   		     	<div class=" chain-grid">
	   		     		<a href="product.do?gid=10001319136"><img class="img-responsive chain" src="../mmloo/products/big1.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		
	   		     		 <!-------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下</p>
	               </div>
	             </div>
	             <!---------->		  			   		   		   		     		
	   		    <div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10001319136"><h6>Heilan Home/海澜之家2016夏季热卖男装圆领休闲印花潮流短袖T恤</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">183$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!------->
	   		     				<button class="get-cart" type="button">Add Cart</button> 
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	
	   		     	
	   		     	<div class=" chain-grid">
	   		     		<a href="product.do?gid=10001150124"><img class="img-responsive chain" src="../mmloo/products/big6.jpg" href="" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		
	   		     		 <!--------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下</p>
	               </div>
	             </div>
	             <!---------->
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10001150124"><h6>男装 SUPIMA COTTON圆领T恤(短袖) 164179 优衣库UNIQLO</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">293$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!-----<a class="now-get get-cart" href=" "></a>	 ---->
	   		     				<button class="get-cart" type="button">Add Cart</button> 
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	<div class=" chain-grid grid-top-chain">
	   		     		<a href="product.do?gid=10002150147"><img class="img-responsive chain" src="../mmloo/products/big11.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		 <!--------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下 .</p>
	               </div>
	             </div>
	             <!---------->
	   		     		
	   		     		<a href=""><div class="grid-chain-bottom"></a>
	   		     			<a href="product.do?gid=10002150147"><h6>【宋仲基同款】马克华菲短袖T恤男内搭打底衫修身圆领纯白黑T恤</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">263$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!-----<a class="now-get get-c	 ---->
	   		     				<button class="get-cart" type="button">Add Cart</button>
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	 <div class="clearfix"> </div>
	   		     </div>
	   		     
	   		     
	   		     <div class="products">
	   		     
	   		     
<!---------------------------------------------------------------------------------->
	   		     	<h5 class="latest-product">热卖商品</h5>
	   		     	  <a class="view-all" href="product.html">查看全部<span> </span></a>
	   		     </div>
	   		     <div class="product-left">
	   		     	<div class=" chain-grid">
	   		     		<a href="product.do?gid=10002190146"><img class="img-responsive chain" src="../mmloo/products/big16.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		 <!--------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下 .</p>
	               </div>
	             </div>
	             <!---------->
	   		     		
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10002190146"><h6>太平鸟男装 夏白色印花T恤圆领短袖体恤衫BWDA62123</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">197$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!--------------------------------------------------------------->
	   		     				<button class="get-cart" type="button">Add Cart</button> 
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	<div class=" chain-grid">
	   		     		<a href="product.do?gid=10002220142"><img class="img-responsive chain" src="../mmloo/products/big21.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		
	   		     		 <!---------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下.</p>
	               </div>
	             </div>
	             <!---------->
	   		     		
	   		     		
	   		     		
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10002220142"><h6>5折SELECTED思莱德棉混纺双层尖领针织男士T恤SH|416206003</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">224$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!-----	 ---->
	   		     				<button class="get-cart" type="button">Add Cart</button> 
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	<div class=" chain-grid grid-top-chain">
	   		     		<a href="product.do?gid=10002150113"><img class="img-responsive chain" src="../mmloo/products/big26.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		
	   		     		 <!--------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下 .</p>
	               </div>
	             </div>
	             <!--------->
	   		     		
	   		     		
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10002150113"><h6>夏季 男士短袖T恤 纯色v领体恤 男装修身衣服 夏装半袖 纯棉短袖t</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">116$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!----- ---->
	   		     				<button class="get-cart" type="button">Add Cart</button> 
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	 <div class="clearfix"> </div>
	   		     </div>		     
<!------------------------------------------------------------------------------------->
	   		     <div class="products">
	   		     	<h5 class="latest-product">特卖商品</h5>
	   		     	  <a class="view-all" href="product.html">查看全部<span> </span></a>
	   		     </div>
	   		     <div class="product-left">
	   		     	<div class=" chain-grid">
	   		     		<a href="product.do?gid=10002769128"><img class="img-responsive chain" src="../mmloo/products/big31.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		
	   		     		 <!---------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下 .</p>
	               </div>
	             </div>
	             <!---------->
	   		     		
	   		     		
	   		     		
	   		     		
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10002769128"><h6>TOPSHOP2016春夏新款中高腰牛仔裤jamie高弹修身铅笔裤02K04IBLK</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">141$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!---------------------------------------------------->
	   		     				<button class="get-cart" type="button">Add Cart</button>
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	<div class=" chain-grid">
	   		     		<a href="product.do?gid=10002849135"><img class="img-responsive chain" src="../mmloo/products/big36.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		 <!---------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下 .</p>
	               </div>
	             </div>
	             <!---------->
	
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10002849135"><h6>ZARA 女装 条纹连衣裙 08566043400</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">186$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!--------------------------------------------------------------------->
	   		     				<button class="get-cart" type="button">Add Cart</button> 
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	<div class=" chain-grid grid-top-chain">
	   		     		<a href="product.do?gid=10002113140"><img class="img-responsive chain" src="../mmloo/products/big41.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		 <!---------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下 .</p>
	               </div>
	             </div>
	             <!---------->
	   		     		
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10002113140"><h6>ONLY2016春夏新品纯棉宽松磨破亮钻牛仔短裤女T|116143003</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">226$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!----- ---->
	   		     				<button class="get-cart" type="button">Add Cart</button> 
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	 <div class="clearfix"> </div>
	   		     </div>
	   		     
<!---------------------------------------------------------------------------->


	   		     <div class="products">
	   		     	<h5 class="latest-product">买家最爱</h5>
	   		     	  <a class="view-all" href="product.html">查看全部<span> </span></a> 		     
	   		     </div>
	   		     <div class="product-left">
	   		     	<div class=" chain-grid">
	   		     		<a href="product.do?gid=10003113129"><img class="img-responsive chain" src="../mmloo/products/big46.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		 <!---------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下.</p>
	               </div>
	             </div>
	             <!---------->
	   		     		
	   		     		
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10003113129"><h6>ONLY2016春夏新品纯棉磨白破洞BF低腰牛仔背带裤|11617M008</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">100$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!-------->
	   		     				<button class="get-cart" type="button">Add Cart</button>
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	<div class=" chain-grid">
	   		     		<a href="product.do?gid=10003260139"><img class="img-responsive chain" src="../mmloo/products/big51.jpg" alt=" " /></a>
	   		     		<span class="star"> </span>
	   		     		
	   		     		 <!---------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下 .</p>
	               </div>
	             </div>
	             <!---------->
	   		     		
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10003260139"><h6>Amii[极简主义]2016春夏拼接A字中裙黑色修身半身裙女装纯色中裙</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">165$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
	   		     				</div>
	   		     				<!--------------------------------------------->
	   		     				<button class="get-cart" type="button">Add Cart</button> 
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	<div class=" chain-grid grid-top-chain">
	   		     		<a href="product.do?gid=10003337134"><img class="img-responsive chain" src="../mmloo/products/big56.jpg" alt=" " /></a>
	   		     
	   		    
	   		   
	               
	   		     		<span class="star"> </span>
	   		     <!--------------------------------------------------------------->
	   		     <div id="content">
	   		     	<div class="help-tip">
		              <p>显示一下 .</p>
	               </div>
	             </div>
	             <!----------------------------------------------------------------->
	   		     		<div class="grid-chain-bottom">
	   		     			<a href="product.do?gid=10003337134"><h6>乐町2016夏装新款女装潮字母印花短袖T恤纯色修身打底衫上衣</h6></a>
	   		     			<div class="star-price">
	   		     				<div class="dolor-grid"> 
		   		     				<span class="actual">280$</span>
		   		     				<span class="reducedfrom">400$</span>
		   		     				  <span class="rating">
									        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
									        <label for="rating-input-1-5" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
									        <label for="rating-input-1-4" class="rating-star1"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
									        <label for="rating-input-1-3" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
									        <label for="rating-input-1-2" class="rating-star"> </label>
									        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
									        <label for="rating-input-1-1" class="rating-star"> </label>
							    	   </span>
							    	   
			
	   		     				</div>
	   		     			<!----------------------------------------------------------------->
	   		     				<button class="get-cart" type="button"  onclick="change()">Add Cart</button>
	   		     				
	   		     				<div class="clearfix"> </div>
							</div>
	   		     		</div>
	   		     	</div>
	   		     	 <div class="clearfix"> </div>
	   		     </div>
	   		     <div class="clearfix"> </div>
	   		   </div>   
			   <div class="sub-cate">
			   




<!------------------------------------------------------------------------------------------------------------------------>


				   <div class=" top-nav rsidebar span_1_of_left">
					   <h3 class="cate">全部商品分类</h3>
					   <ul class="menu">
						   <li class="item1"><a href="#">家用电器<img class="arrow-img" src="images/arrow1.png" alt="" width="119" height="14"/> </a>
							   <ul class="cute">
								   <li class="subitem1"><a href="product.html">大家电 </a></li>
								   <li class="subitem2"><a href="product.html"> 厨卫大电</a></li>
								   <li class="subitem3"><a href="product.html">个护健康 </a></li>
							   </ul>
						   </li>
						   <li class="item2"><a href="#"> 手机、数码、通信产品<img class="arrow-img " src="images/arrow1.png" alt=""/></a>
							   <ul class="cute">
								   <li class="subitem1"><a href="product.html">手机通讯 </a></li>
								   <li class="subitem2"><a href="product.html">摄影摄像</a></li>
								   <li class="subitem3"><a href="product.html"> 智能设备</a></li>
							   </ul>
						   </li>
						   <li class="item3"><a href="#">食品、酒类、生鲜<img class="arrow-img img-arrow" src="images/arrow1.png" alt=""/> </a>
							   <ul class="cute">
								   <li class="subitem1"><a href="product.html">水果蔬菜 </a></li>
								   <li class="subitem2"><a href="product.html">中外名酒</a></li>
								   <li class="subitem3"><a href="product.html">海鲜水产</a></li>
							   </ul>
						   </li>
						   <li class="item4"><a href="#">鞋靴、箱包 <img class="arrow-img img-left-arrow" src="images/arrow1.png" alt=""/></a>
							   <ul class="cute">
								   <li class="subitem1"><a href="product.html">时尚女鞋 </a></li>
								   <li class="subitem2"><a href="product.html">潮流男鞋 </a></li>
								   <li class="subitem3"><a href="product.html">功能箱包</a></li>
							   </ul>
						   </li>
						   <li>
							   <ul class="kid-menu">
								   <li><a href="product.html">男装女装</a></li>
								   <li ><a href="product.html">电脑办公</a></li>
								   <li ><a href="product.html">户外运动</a></li>
							   </ul>
						   </li>
						   <ul class="kid-menu ">
							   <li><a href="product.html">图书音像</a></li>
							   <li ><a href="product.html">母婴玩具</a></li>
							   <li><a href="product.html">家居用品</a></li>
							   <li><a href="product.html">个护化妆</a></li>
							   <li class="menu-kid-left"><a href="contact.html">联系我们</a></li>
						   </ul>
					   </ul>
				   </div>
<!------------------------------------------------------------------initiate accordion--------------------------------------------------->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
					<div class=" chain-grid menu-chain">
	   		     		<a href="single.html"><img class="img-responsive chain" src="images/wat.jpg" alt=" " /></a>	   		     		
	   		     		<div class="grid-chain-bottom chain-watch">
		   		     		<span class="actual dolor-left-grid">300$</span>
		   		     		<span class="reducedfrom">500$</span>  
		   		     		<h6>Lorem ipsum dolor</h6>  		     			   		     										
	   		     		</div>
	   		     	</div>
	   		     	 <a class="view-all all-product" href="product.html"><span> </span></a> 	
			</div>
	   		    <div class="clearfix"> </div>        	         
		</div>
	</div>
	
<jsp:include page="footer.jsp" flush="true"></jsp:include>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript'></script></div>
</body>


<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src='js/jquery-ui.min.js'></script>

<script type="text/javascript">



$('.get-cart').on('click', function () {
   // alert("nihao");
	var cart = $('.cart');
	//alert("dierbu");
	//var imgtodrag = $(this).parent('.star-price').parent('.grid-chain-bottom').parent('.chain-grid').find('a').find('img').eq(0);

	
	//var temp = $(this).parent('.elit-grid').parent('.sed-left-top').find('a').find('img');
	
	//alert(imgtodrag);
	//alert(temp);
	
	if($(this).parent().hasClass("star-price"))
	{
	
	 // alert("if yuju1");
	   var imgtodrag = $(this).parent('.star-price').parent('.grid-chain-bottom').parent('.chain-grid').find('a').find('img').eq(0); 
	   var imgclone = imgtodrag.clone().offset({
			top: imgtodrag.offset().top,
			left: imgtodrag.offset().left
		}).css({
			'opacity': '0.5',
			'position': 'absolute',
			'height': '250px',
			'width': '150px',
			'z-index': '100'
		}).appendTo($('body')).animate({
			'top': cart.offset().top + 10,
			'left': cart.offset().left + 10,
			'width': 75,
			'height': 75
		}, 1000, 'easeInOutExpo');
	
		//setTimeout(function () {
		//	cart.effect('shake', { times: 2,distance: 1 }, 200);
		//}, 1500);
		
		imgclone.animate({
			'width': 0,
			'height': 0
		}, function () {
			$(this).detach();
		});
	
	}
	

	
	else if ($(this).parent().hasClass("elit-grid"))
	 {
	   // alert("if yuju2");
	   
	    var temp = $(this).parent('.elit-grid').parent('.sed-left-top').find('a').find('img');
	    //alert("huo qu dao le");
		var temp = temp.clone().offset({
			top: temp.offset().top,
			left: temp.offset().left
		}).css({
			'opacity': '0.5',
			'position': 'absolute',
			'height': '125px',
			'width': '150px',
			'z-index': '100'
		}).appendTo($('body')).animate({
			'top': cart.offset().top + 10,
			'left': cart.offset().left + 10,
			'width': 75,
			'height': 75
		}, 1000, 'easeInOutExpo');
	
		setTimeout(function () {
			cart.effect('shake', {
			 times: 2 
			 }, 50);
			 }, 200);
		
		temp.animate({
			'width': 0,
			'height': 0
		}, function () {
			$(this).detach();
		});
	

	}
	
	
});



$('.get-cart').on('click', function () {

    var count = document.getElementById("cart").innerHTML;
   // alert(count);
    count++;
   // alert(count);
   
    $("#cart").text(count);

});

</script>



</html>

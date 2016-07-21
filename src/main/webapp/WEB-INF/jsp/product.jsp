<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page import="nwsuaf.mmloo.entity.Gshelves"%>
<%@ page import="nwsuaf.mmloo.entity.Gparameter"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Single</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="../mmloo/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--theme-style-->
<link href="../mmloo/css1/style.css" rel="stylesheet" type="text/css" media="all" />	
<link rel="stylesheet" href="css/etalage.css" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->
	<link rel="stylesheet" href="../mmloo/css/font-awesome.min.css">
<script src="../mmloo/js/jquery.min.js"></script>
<script src="../mmloo/js/jquery.easydropdown.js"></script>
<script src="../mmloo/js/jquery.etalage.min.js"></script>
<script>
		$(function($){
				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});	
		</script>
		<style>
			.div-curr{
				color:#fd926d;
			}
		</style>

</head>
<body> 
	<!--header-->
	<jsp:include page="header.jsp" flush="true"></jsp:include>
	<!---->
	 <div class="container" style="background-color:white;">
	 	<div class=" single_top" style="background-color:white;float: left;width:100%;">
	      <div class="single_grid">
				<div class="grid images_3_of_2">
						<ul id="etalage">
							<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image" src="../mmloo/${str[4]}" class="img-responsive" />
									<img class="etalage_source_image" src="../mmloo/${str[4]}" class="img-responsive" title="" />
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image" src="../mmloo/${str[1]}" class="img-responsive" />
								<img class="etalage_source_image" src="../mmloo/${str[1]}" class="img-responsive" title="" />
							</li>
							<li>
								<img class="etalage_thumb_image" src="../mmloo/${str[2]}" class="img-responsive"  />
								<img class="etalage_source_image" src="../mmloo/${str[2]}" class="img-responsive"  />
							</li>
						    <li>
								<img class="etalage_thumb_image" src="../mmloo/${str[3]} " class="img-responsive"  />
								<img class="etalage_source_image" src="../mmloo/${str[3]}" class="img-responsive"  />
							</li>
							<li>
								<img class="etalage_thumb_image" src="../mmloo/${str[0]} " class="img-responsive"  />
								<img class="etalage_source_image" src="../mmloo/${str[0]}" class="img-responsive"  />
							</li>
						</ul>
						 <div class="clearfix"> </div>		
				  </div> 
				  <div class="desc1 span_3_of_2">
				  	<ul class="back">
                	  <li><i class="back_arrow"> </i>宝贝分类<a href="index.html">功能箱包</a></li>
                    </ul>
                    <input type="text" id="gid" value="${gshelves.gid}" style="display:none"/> 
					<h1>${gshelves.gname}</h1>
					<ul class="price_single">
					  <li class="head"><h2>$${gshelves.gprice}</h2></li>
					  <li class="head_desc sky-form"><a href="#">12 reviews</a>
					 <fieldset>
					<section>
						<div class="rating">
							<input type="radio" name="stars-rating" id="stars-rating-5">
							<label for="stars-rating-5"><i class="icon-star"></i></label>
							<input type="radio" name="stars-rating" id="stars-rating-4">
							<label for="stars-rating-4"><i class="icon-star"></i></label>
							<input type="radio" name="stars-rating" id="stars-rating-3">
							<label for="stars-rating-3"><i class="icon-star"></i></label>
							<input type="radio" name="stars-rating" id="stars-rating-2">
							<label for="stars-rating-2"><i class="icon-star"></i></label>
							<input type="radio" name="stars-rating" id="stars-rating-1">
							<label for="stars-rating-1"><i class="icon-star"></i></label>
						</div>
					</section>
				</fieldset>
					  </li>
					  <div class="clearfix" > </div>
					</ul>
					<style>
						.attribute-lable{
							border: solid 1px;
							border-color: rgb(208, 208, 208); 
							float: left;width: 50px;
							height: 40px;
							text-align: center;
							padding-top: 8px;
							margin-left: 10px
						}	
					</style>
					  <!---------------------------------------我是属性盒子--------------------------------------------------->
					  <div style="background-color: white;height: 260px;text-align: center;padding-top: 30px">
						  <!-----------------------------------选择商品的属性1----------------------------------------->
						  <div style="background-color:white;height: 70px">
							  <div style="float: left;background-color:white;color:#999;width: 70px;margin-top: 10px;height: 50px">选择尺码:</div>
							  <div style="background-color: #00A2D4" class="size-selector">
							  	<c:forEach items="${ product.proName }" var="proValue">	
							  		  <a style="cursor: pointer"><div class="attribute-lable" > ${proValue }</div></a>
							  	</c:forEach>
								  <a style="cursor: pointer"><div class="attribute-lable" > L</div></a>
								  <a style="cursor: pointer"><div class="attribute-lable"> M</div></a>
								  <a style="cursor: pointer"><div class="attribute-lable" > S</div></a>
								  <a style="cursor: pointer"><div class="attribute-lable"> XS</div></a>
							  
							  </div>
						  </div>
						  <script>
						  	$(function(){
						  		$('.size-selector .attribute-lable').each(function(index){
						  			if(index == 0){
						  				$(this).css('border', '2px solid #f97e76');
						  				$(this).addClass('selector');
						  			}
						  		});
						  		$('.size-selector .attribute-lable').click(function(){
						  			var obj = this;
						  			$('.size-selector .attribute-lable').each(function(){
						  				if(obj == this){
						  					$(this).css('border', '2px solid #f97e76');
						  					$(this).addClass('selector');
						  				}
						  				else{
						  					$(this).css('border', '1px solid rgb(208, 208, 208)');
						  					$(this).removeClass('selector');
						  				}
						  			})
						  		})
						  	})
						  </script>
						  <!-----------------------------------选择商品的属性2----------------------------------------->
						  <div style="background-color:white;height: 70px">
							  <div style="float: left;background-color:white;color:#999;width: 70px;margin-top: 10px;height: 50px">选择颜色:</div>
							  <div class="color-selector" style="background-color: #00A2D4">
							  	<c:forEach items="${ product.color }" var="color1">	
							  		  <a style="cursor: pointer"><div class="attribute-lable" > ${color1 }</div></a>
							  	</c:forEach>
								  <a style="cursor: pointer"><div class="attribute-lable" > 红色</div></a>
								  <a style="cursor: pointer"><div class="attribute-lable" > 白色</div></a>
								  <a style="cursor: pointer"><div class="attribute-lable" > 黑色</div></a>
								  <a style="cursor: pointer"><div class="attribute-lable" > 粉色</div></a>
							  </div>
						  </div>
							<script>
						  	$(function(){
						  		$('.color-selector .attribute-lable').each(function(index){
						  			if(index == 0){
						  				$(this).css('border', '2px solid #f97e76');
						  				$(this).addClass('selector');
						  			}
						  		});
						  		$('.color-selector .attribute-lable').click(function(){
						  			var obj = this;
						  			$('.color-selector .attribute-lable').each(function(){
						  				if(obj == this){
						  					$(this).css('border', '2px solid #f97e76');
						  					$(this).addClass('selector');
						  				}
						  				else{
						  					$(this).css('border', '1px solid rgb(208, 208, 208)');
						  					$(this).removeClass('selector');
						  				}
						  			})
						  		})
						  	})
						  </script>
						  <!-----------------------------------选择商品的属性3----------------------------------------->	
						  <div style="background-color:white;height: 70px">
							  <div style="float: left;background-color:white;color:#999;width: 70px;margin-top: 10px;height: 50px">选择数量:</div>
							  <div class="count" style="background-color: #00A2D4">
									<span id="minus" class="input-group-addon minus" style="float:left;margin-right:-1px;height:35px;padding-top:10px;cursor:pointer"><b>-</b></span>
									<input type="text" class="number form-control input-sm"
										value="1" style="float:left;width:70px;height:35px;"/>
									<span class="input-group-addon plus" style="float:left;padding-top:10px;height:35px;cursor:pointer;margin-left:-1px;"><b>+</b></span>
							  </div>
						  </div> 
					  </div>
			         <a href="javascript:(0)" id="addToCart"class="now-get">加入购物车</a>
			         <a href="javascript:(0)"  id="goToCart" class="now-get" style="margin-left:20px;">立即购买</a>
			         <script>
			         	$(function(){
			         		$('.minus').click(function(){
			         			var count = parseInt($('.number').val());
			         			if(count <= 1)
			         				return;
			         			$('.number').val(count - 1)
			         		})
			         		$('.plus').click(function(){
			         			var count = parseInt($('.number').val());
			         			if(count <= 0)
			         				return;
			         			$('.number').val(count + 1)
			         		});
			         		
			         		$('#addToCart').click(function(){
			         			if('${user.uname}' == '' || '${user.uname}' == null){
			         				alert('你还没有登录，请先登录！！！');
			         				return false;
			         			}
			         			var count = parseInt($('.number').val());
			         			if(count <= 0){
			         				alert('数量不正确')
			         			}	
			         			var size = "";
			         			var color = "";
			         			$('.color-selector .attribute-lable').each(function(){
						  				if($(this).hasClass('selector')){
						  					color = $(this).text();
						  				}
						  		})
						  		$('.size-selector .attribute-lable').each(function(){
						  				if($(this).hasClass('selector')){
						  					size = $(this).text();
						  				}
						  		})
						  		$.ajax({
									type : "POST",
									contentType : "application/json",
									url : 'user/insertCart.do?gid=' + $('#gid').val() + '&snum=' + count,
									data : {},
									datatype : "html",
									beforeSend : function() {
										//alert('user/showOrder.do?state=' + show)
									},
									success : function(msg) {
										if(msg == 'true')
											alert('添加成功')
										else
											alert('添加成功')
									},
									error : function(msg) {
										alert(msg.status)
									}
								});
			         		});
			         		
			         		$('#goToCart').click(function(){
			         			if('${user.uname}' == '' || '${user.uname}' == null){
			         				alert('你还没有登录，请先登录！！！');
			         				return false;
			         			}
			         			var count = parseInt($('.number').val());
			         			if(count <= 0){
			         				alert('数量不正确')
			         			}	
			         			var size = "";
			         			var color = "";
			         			$('.color-selector .attribute-lable').each(function(){
						  				if($(this).hasClass('selector')){
						  					color = $(this).text();
						  				}
						  		})
						  		$('.size-selector .attribute-lable').each(function(){
						  				if($(this).hasClass('selector')){
						  					size = $(this).text();
						  				}
						  		})
						  		$.ajax({
									type : "POST",
									contentType : "application/json",
									url : 'user/insertCart.do?gid=' + $('#gid').val() + '&snum=' + count,
									data : {},
									datatype : "html",
									beforeSend : function() {
										//alert('user/showOrder.do?state=' + show)
									},
									success : function(msg) {
									},
									error : function(msg) {
										alert(msg.status)
									}
								});
			         			window.location.href = "user/myCart.do";
			         		});
			         	})
			         </script>
				</div>
          	    <div class="clearfix"> </div>
          	   </div>
          	   <ul id="flexiselDemo1">
					<li><img src="images/pi.jpg" /><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li>
					<li><img src="images/pi1.jpg" /><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li>
					<li><img src="images/pi2.jpg" /><div class="grid-flex"><a href="#">Zumba</a><p>Rs 850</p></div></li>
					<li><img src="images/pi3.jpg" /><div class="grid-flex"><a href="#">Bloch</a><p>Rs 850</p></div></li>
					<li><img src="images/pi4.jpg" /><div class="grid-flex"><a href="#">Capzio</a><p>Rs 850</p></div></li>
		 	  </ul>
	    <script type="text/javascript">
		 $(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems: 5,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>

          	    	<div class="toogle">
				     	<h3 class="m_3">商品详情</h3>
				     	<p class="m_text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
				     </div>

<!----------------------------------------------------我是标题栏------------------------------------------------------------>

			<div class="single-banner" >
				<div style="margin-left: 133px;margin-top: 10px;float: left">
					<a style="cursor: pointer;" onclick="isTWdetail()" title="图文详情"><h3 class="m_3" style="font-size: 20px; color:#fd926d">图文详情</h3></a>
				</div>
			<!--<a style="cursor: pointer" title="图文详情"> <i class="fa fa-file-image-o"></i> </a>-->

				<div style="margin-left: 133px;margin-top: 10px;float: left">
					<a style="cursor: pointer;" onclick="isService()"title="售后保障"><h3 class="m_3" style="font-size: 20px">售后服务</h3></a>
				</div>

				<div style="margin-left: 133px;margin-top: 10px;float: left;">
					<a style="cursor: pointer" onclick="isComment()"title="商品评价"><h3 class="m_3" style="font-size: 20px">商品评价</h3></a>
				</div>
			</div>
			<script>
				$(function() {
					$('.m_3').click(function(){
						var obj = this;
						$('.m_3').each(function(){
							if(obj == this)
								$(this).css('color', '#fd926d');
							else
								$(this).css('color', '');
						})
					});
				
				});
			</script>

			<!----------------------------------------------------标题栏结束------------------------------------------------------------>


			<!----------------------------------------------------我是分割线------------------------------------------------------------>

			<div style="margin-top: 0px;margin-left: -20px">
				<img src="img/fenge5.jpg" />

			</div>
			<!----------------------------------------------------分割线结束------------------------------------------------------------>

			<!----------------------------------------------------图文详情--参数盒子-------------------------------------------------------------->
            <div  class="parameter-box" style="">
				<div class="sub-box1" style="">
                  <span>品牌:</span><span style="margin-left:10px;">菲依恋雪</span>
					<br>
					<span>商品名称:</span><span style="margin-left:10px;">${gshelves.gname }</span>
					<br>
					<span>领型:</span><span style="margin-left:10px;">圆领</span>
					<br>
					<span>袖型:</span><span style="margin-left:10px;">常规</span>
					<br>
					<span>组合形式:</span><span style="margin-left:10px;">单件</span>

				</div>
				<div class="sub-box2" style="" >
					<span>商品编号:</span><span style="margin-left:10px;">${gshelves.gid }</span>
                    <br>
					<span>尺码:</span><span style="margin-left:10px;">M</span>
					<br>
					<span>流行元素:</span><span style="margin-left:10px;">条纹</span>
					<br>
					<span>衣门襟:</span><span style="margin-left:10px;">单排扣</span>
					<br>
					<span>材质:</span><span style="margin-left:10px;">雪纺</span>

				</div>

				<div class="sub-box3" style="" >
					<span>店铺:</span><span style="margin-left:10px;">${gshelves.gpa[0].mname}</span>
					<br>
					<span>版型:</span><span style="margin-left:10px;">宽松型</span>
					<br>
					<span>颜色:</span><span style="margin-left:10px;">黑白</span>
					<br>
					<span>衣长:</span><span style="margin-left:10px;">85cm</span>
					<br>
					<span>厚度:</span><span style="margin-left:10px;">适中</span>
				</div>
			</div>
			<!--------------------------------------------------------图文详情-内容-------------------------------------------------------------------->
			<!--
			<div class="TWcontent" style="">
				<br><br>
				<div class="TW-banner">
					<h4 style="float: left">图文详情</h4>
				</div>
				<br><br>
				<img class="etalage_thumb_image" src="../mmloo/${str[4]}" class="img-responsive" />
				<img class="etalage_source_image" src="../mmloo/${str[4]}" class="img-responsive" title="" />
				<img src="example-img/lizi.jpg" width="100%"/>
				<img src="example-img/lizi.jpg" width="100%"/>
				<img src="example-img/lizi2.jpg" width="100%"/>
				<img src="example-img/lizi3.jpg" width="100%"/>
				<img src="example-img/lizi4.jpg" width="100%"/>
				<img src="example-img/lizi5.jpg" width="100%"/>
				<img src="example-img/lizi6.jpg" width="100%"/>
				<img src="example-img/lizi7.jpg" width="100%"/>
				<img src="example-img/lizi8.jpg" width="100%"/>
				<img src="example-img/lizi9.jpg" width="100%"/>
				<img src="example-img/lizi10.jpg" width="100%"/>
				<img src="example-img/lizi11.jpg" width="100%"/>
				<img src="example-img/lizi12.jpg" width="100%"/>
				<img src="example-img/lizi13.jpg" width="100%"/>
				<img src="example-img/lizi14.jpg" width="100%"/>
			</div>
			  -->
			<!--------------------------------------------------------商品评价--------------------------------------------------------------------->

			<div class="Goods-comment" style="display: none">

				<div class="comment-banner">
					<h4 style="float: left">商品评价</h4>

					<div style="float: left;margin-left: 40px;padding-top: 11px" >

						<a style="cursor: pointer"><span>好评</span></a>&nbsp;&nbsp;&nbsp;
						<a style="cursor: pointer"><span>中评</span></a>&nbsp;&nbsp;&nbsp;
						<a style="cursor: pointer"><span>差评</span></a>
					</div>

				</div>

                <div class="comment-banner-2">
					<div  class="banner-2-left" >
                           <div class="haoPingDu" >


							   <h5>好评度 &nbsp;&nbsp;</h5>
							   <h2>100%</h2>


						   </div>
					</div>
                </div>
					<div class="Goods-comment-content">
						<div class="comment-item" >
							<div  class="comment-left">
							<div class="comment-left-star">
								<i class="fa fa-star" style="color: red"></i>
								<i class="fa fa-star" style="color: red"></i>
								<i class="fa fa-star" style="color: red"></i>
								<i class="fa fa-star" style="color: red"></i>
								<i class="fa fa-star" style="color: red"></i>
							</div>
								<div class="comment-left-time">
									<span>2016-07-08</span>
									<span>23:24</span>
									<br>
									<span>白色 L</span>
								</div>
							</div>
							<div class="comment-middle">
								衣服穿上很漂亮，好评！
							</div>
							<div class="comment-right">
								<div class="comment-right-img">
									<img class="img-touxiang"src="img/touxiang.jpg"/>
								</div>
								<div  class="comment-right-message">
									<span>
										十*****喵
									</span>
									<br>
									<span>
										会员等级：6级
									</span>
								</div>
							</div>
						</div>
						<div class="comment-item" >
							<div  class="comment-left">

								<div class="comment-left-star">
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
								</div>
								<div class="comment-left-time">
									<span>2016-07-08</span>
									<span>23:24</span>
									<br>
									<span>白色 L</span>
								</div>
							</div>


							<div class="comment-middle">
								衣服穿上很漂亮，好评！
							</div>

							<div class="comment-right">


								<div class="comment-right-img">

									<img class="img-touxiang"src="img/touxiang.jpg"/>

								</div>

								<div  class="comment-right-message">

									<span>
										十*****喵
									</span>

									<br>
									<span>

										会员等级：6级
									</span>
								</div>

							</div>

						</div>
						<div class="comment-item" >
							<div  class="comment-left">
								<div class="comment-left-star">
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star-half-o" style="color: red"></i>
									<i class="fa fa-star-o" style="color: red"></i>
								</div>
								<div class="comment-left-time">
									<span>2016-07-08</span>
									<span>23:24</span>
									<br>
									<span>白色 L</span>
								</div>
							</div>
							<div class="comment-middle">
								衣服穿上很漂亮，好评！
							</div>

							<div class="comment-right">


								<div class="comment-right-img">

									<img class="img-touxiang"src="img/touxiang.jpg"/>

								</div>

								<div  class="comment-right-message">

									<span>
										十*****喵
									</span>

									<br>
									<span>

										会员等级：6级
									</span>
								</div>

							</div>


						</div>
						<div class="comment-item" >
							<div  class="comment-left">

								<div class="comment-left-star">
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star-half-o" style="color: red"></i>
									<i class="fa fa-star-o" style="color: red"></i>

								</div>

								<div class="comment-left-time">

									<span>2016-07-08</span>
									<span>23:24</span>
									<br>
									<span>白色 L</span>
								</div>

							</div>


							<div class="comment-middle">
								衣服穿上很漂亮，好评！
							</div>

							<div class="comment-right">


								<div class="comment-right-img">

									<img class="img-touxiang"src="img/touxiang.jpg"/>

								</div>

								<div  class="comment-right-message">

									<span>
										十*****喵
									</span>

									<br>
									<span>

										会员等级：6级
									</span>
								</div>

							</div>


						</div>
						<div class="comment-item" >
							<div  class="comment-left">

								<div class="comment-left-star">
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>

								</div>

								<div class="comment-left-time">

									<span>2016-07-08</span>
									<span>23:24</span>
									<br>
									<span>白色 L</span>
								</div>

							</div>


							<div class="comment-middle">
								衣服穿上很漂亮，好评！
							</div>

							<div class="comment-right">


								<div class="comment-right-img">

									<img class="img-touxiang"src="img/touxiang.jpg"/>

								</div>

								<div  class="comment-right-message">

									<span>
										十*****喵
									</span>

									<br>
									<span>

										会员等级：6级
									</span>
								</div>

							</div>


						</div>
						<div class="comment-item" >
							<div  class="comment-left">

								<div class="comment-left-star">
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star-o" style="color: red"></i>
									<i class="fa fa-star-o" style="color: red"></i>
									<i class="fa fa-star-o" style="color: red"></i>

								</div>

								<div class="comment-left-time">

									<span>2016-07-08</span>
									<span>23:24</span>
									<br>
									<span>白色 L</span>
								</div>

							</div>


							<div class="comment-middle">
								衣服穿上很漂亮，好评！
							</div>

							<div class="comment-right">


								<div class="comment-right-img">

									<img class="img-touxiang"src="img/touxiang.jpg"/>

								</div>

								<div  class="comment-right-message">

									<span>
										十*****喵
									</span>

									<br>
									<span>

										会员等级：6级
									</span>
								</div>

							</div>


						</div>
						<div class="comment-item" >
							<div  class="comment-left">

								<div class="comment-left-star">
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>
									<i class="fa fa-star" style="color: red"></i>

								</div>

								<div class="comment-left-time">

									<span>2016-07-08</span>
									<span>23:24</span>
									<br>
									<span>白色 L</span>
								</div>

							</div>


							<div class="comment-middle">
								衣服穿上很漂亮，好评！
							</div>

							<div class="comment-right">


								<div class="comment-right-img">

									<img class="img-touxiang"src="img/touxiang.jpg"/>

								</div>

								<div  class="comment-right-message">

									<span>
										十*****喵
									</span>

									<br>
									<span>

										会员等级：6级
									</span>
								</div>

							</div>


						</div>


						<!------------------------------------我是分页------------------------------------->
						<div class="pageGro" style="padding-left: 115px">

							<div class="pageUp" style="">上一页</div>
							<div class="pageList" style="">
								<ul>
									<li class="on" style="">1</li>
									<li style="">2</li>
									<li style="">3</li>
									<li style="">4</li>
									<li style="">5</li>
								</ul>
							  </div>

							<div class="pageDown" style="">下一页</div>

						</div>



						<!--------------------------------------分页结束---------------------------------------------->
					</div>


				</div>



<!-------------------------------------------------------商品评价结束------------------------------------------------------------------>



<!--------------------------------------------------------售后服务-------------------------------------------------------------------->


            <div class="service" style="display: none">

				<div class="service-bar">
					<h4 style="float: left">售后服务</h4>

				</div>

				<div class="service-content" style="">


<!---------------------------米米乐承诺-------------------------------->
					<div class="service-item" style="">

						<div class="service-item-picture" style="">

							<i class="fa  fa-shield fa-2x" style="color:#F97E76"></i>
						</div>

						<div class="service-item-title" style="padding-top: 8px">

							<strong style=""> 米米乐承诺</strong>

						</div>

						<div class="service-item-content" style="">
							<p>米米乐平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！
								注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！ </p>
						</div>

					</div>

<!---------------------------正品行货-------------------------------->
					<div class="service-item" style="">

						<div class="service-item-picture" style="">

							<i class="fa fa-hand-peace-o fa-2x" style="color: #F97E76"></i>
						</div>

						<div class="service-item-title" style="padding-top: 8px">

							<strong style=""> 正品行货</strong>

						</div>

						<div class="service-item-content" style="">
							<p>米米乐平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！
								注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！ </p>
						</div>

					</div>
<!---------------------------全国联保-------------------------------->
					<div class="service-item" style="">

						<div class="service-item-picture" style="">

							<i class="fa fa-globe fa-2x" style="color: #F97E76"></i>
						</div>

						<div class="service-item-title" style="padding-top: 8px">

							<strong style=""> 全球联保</strong>

						</div>

						<div class="service-item-content" style="">
							<p>米米乐平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！
								注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！ </p>
						</div>

					</div>
<!---------------------------无忧退换货-------------------------------->
					<div class="service-item" style="">

						<div class="service-item-picture" style="">

							<i class="fa fa-heart fa-2x" style="color: #F97E76"></i>
						</div>

						<div class="service-item-title" style="padding-top: 8px">

							<strong style=""> 无忧退换</strong>

						</div>

						<div class="service-item-content" style="">
							<p>米米乐平台卖家销售并发货的商品，由平台卖家提供发票和相应的售后服务。请您放心购买！
								注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！ </p>
						</div>

					</div>

				</div>






			</div>




<!--------------------------------------------------------售后服务结束-------------------------------------------------------------------->


		</div>





          	   <!---->
<!--<div class="sub-cate">-->

<!-------------------------------------------------------------------------------------------------------------------------------------------------->

	<!--<div class=" top-nav rsidebar span_1_of_left">-->
		<!--<h3 class="cate">全部商品分类</h3>-->
		<!--<ul class="menu">-->
			<!--<li class="item1"><a href="#">家用电器<img class="arrow-img" src="images/arrow1.png" alt="" width="119" height="14"/> </a>-->
				<!--<ul class="cute">-->
					<!--<li class="subitem1"><a href="product.html">大家电 </a></li>-->
					<!--<li class="subitem2"><a href="product.html"> 厨卫大电</a></li>-->
					<!--<li class="subitem3"><a href="product.html">个护健康 </a></li>-->
				<!--</ul>-->
			<!--</li>-->
			<!--<li class="item2"><a href="#"> 手机、数码、通信产品<img class="arrow-img " src="images/arrow1.png" alt=""/></a>-->
				<!--<ul class="cute">-->
					<!--<li class="subitem1"><a href="product.html">手机通讯 </a></li>-->
					<!--<li class="subitem2"><a href="product.html">摄影摄像</a></li>-->
					<!--<li class="subitem3"><a href="product.html"> 智能设备</a></li>-->
				<!--</ul>-->
			<!--</li>-->
			<!--<li class="item3"><a href="#">食品、酒类、生鲜<img class="arrow-img img-arrow" src="images/arrow1.png" alt=""/> </a>-->
				<!--<ul class="cute">-->
					<!--<li class="subitem1"><a href="product.html">水果蔬菜 </a></li>-->
					<!--<li class="subitem2"><a href="product.html">中外名酒</a></li>-->
					<!--<li class="subitem3"><a href="product.html">海鲜水产</a></li>-->
				<!--</ul>-->
			<!--</li>-->
			<!--<li class="item4"><a href="#">鞋靴、箱包 <img class="arrow-img img-left-arrow" src="images/arrow1.png" alt=""/></a>-->
				<!--<ul class="cute">-->
					<!--<li class="subitem1"><a href="product.html">时尚女鞋 </a></li>-->
					<!--<li class="subitem2"><a href="product.html">潮流男鞋 </a></li>-->
					<!--<li class="subitem3"><a href="product.html">功能箱包</a></li>-->
				<!--</ul>-->
			<!--</li>-->
			<!--<li>-->
				<!--<ul class="kid-menu">-->
					<!--<li><a href="product.html">男装女装</a></li>-->
					<!--<li ><a href="product.html">电脑办公</a></li>-->
					<!--<li ><a href="product.html">户外运动</a></li>-->
				<!--</ul>-->
			<!--</li>-->
			<!--<ul class="kid-menu ">-->
				<!--<li><a href="product.html">图书音像</a></li>-->
				<!--<li ><a href="product.html">母婴玩具</a></li>-->
				<!--<li><a href="product.html">家居用品</a></li>-->
				<!--<li><a href="product.html">个护化妆</a></li>-->
				<!--<li class="menu-kid-left"><a href="contact.html">联系我们</a></li>-->
			<!--</ul>-->
		<!--</ul>-->
	<!--</div>-->

<!--------------------------------------------------------------initiate accordion---------------------------------------------------------->
		<!--<script type="text/javascript">-->
			<!--$(function() {-->
			    <!--var menu_ul = $('.menu > li > ul'),-->
			           <!--menu_a  = $('.menu > li > a');-->
			    <!--menu_ul.hide();-->
			    <!--menu_a.click(function(e) {-->
			        <!--e.preventDefault();-->
			        <!--if(!$(this).hasClass('active')) {-->
			            <!--menu_a.removeClass('active');-->
			            <!--menu_ul.filter(':visible').slideUp('normal');-->
			            <!--$(this).addClass('active').next().stop(true,true).slideDown('normal');-->
			        <!--} else {-->
			            <!--$(this).removeClass('active');-->
			            <!--$(this).next().stop(true,true).slideUp('normal');-->
			        <!--}-->
			    <!--});-->
			<!---->
			<!--});-->
		<!--</script>-->
					<!--<div class=" chain-grid menu-chain">-->
	   		     		<!--<a href="single.html"><img class="img-responsive chain" src="images/wat.jpg" alt=" " /></a>	   		     		-->
	   		     		<!--<div class="grid-chain-bottom chain-watch">-->
		   		     		<!--<span class="actual dolor-left-grid">300$</span>-->
		   		     		<!--<span class="reducedfrom">500$</span>  -->
		   		     		<!--<h6>Lorem ipsum dolor</h6>  		     			   		     										-->
	   		     		<!--</div>-->
	   		     	<!--</div>-->
	   		     	 <!--<a class="view-all all-product" href="product.html">查看全部<span> </span></a>-->
			<!--</div>-->
<!--<div class="clearfix"> </div>			-->
		</div>
	<!------------------------------------------------------这是底部----------------------------------------------------------------------->
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="latter">
					<h6>NEWS-LATTER</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter email here"onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter email here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="latter-right">
					<p>FOLLOW US</p>
					<ul class="face-in-to">
						<li><a href="#"><span> </span></a></li>
						<li><a href="#"><span class="facebook-in"> </span></a></li>
						<div class="clearfix"> </div>
					</ul>
					<div class="clearfix" > </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
		
		
		
<!------------------------------------------------------------------------------------------------------------------------>

		<div class="footer-bottom">
			<div class="container">
				<div class="footer-bottom-cate">
					<h6>
						购物指南
					</h6>
					<ul>
						<li>
							<a href="#">购物流程</a>
						</li>
						<li>
							<a href="#">会员介绍</a>
						</li>
						<li>
							<a href="#">生活旅行/团购</a>
						</li>
						<li>
							<a href="#">常见问题</a>
						</li>
						<li>
							<a href="#">大家电</a>
						</li>
						<li>
							<a href="#">联系客服</a>
						</li>

					</ul>
				</div>
				<div class="footer-bottom-cate bottom-grid-cat">
					<h6>
						֧支付方式
					</h6>
					<ul>
						<li>
							<a href="#">货到付款</a>
						</li>
						<li>
							<a href="#">在线支付</a>
						</li>
						<li>
							<a href="#">分期付款</a>
						</li>
						<li>
							<a href="#">邮政汇款</a>
						</li>
						<li>
							<a href="#">公司转账</a>
						</li>

					</ul>
				</div>
				<div class="footer-bottom-cate">
					<h6>
						配送方式
					</h6>
					<ul>
						<li>
							<a href="#">上门自提</a>
						</li>
						<li>
							<a href="#">211限时达</a>
						</li>
						<li>
							<a href="#">配送服务查询</a>
						</li>
						<li>
							<a href="#">配送费收取标准</a>
						</li>
						<li>
							<a href="#">海外配送</a>
						</li>

					</ul>
				</div>

				<div class="footer-bottom-cate">
					<h6>
						售后服务
					</h6>
					<ul>
						<li>
							<a href="#">售后政策</a>
						</li>
						<li>
							<a href="#">价格保护</a>
						</li>
						<li>
							<a href="#">退款说明</a>
						</li>
						<li>
							<a href="#">返修/退换货</a>
						</li>
						<li>
							<a href="#">取消订单</a>
						</li>

					</ul>
				</div>




				<div class="clearfix">
				</div>
			</div>
		</div>
	</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' ></script></div>

<script>


	function isTWdetail() {
		//alert("查看图文详情");
		$(".service").css("display","none");
		$(".Goods-comment").css("display","none");
		$(".parameter-box").css("display","");
		$(".TWcontent").css("display","");
	}

	function isComment() {
		//alert("查看评价");
		$(".service").css("display","none");
		$(".parameter-box").css("display","none");
		$(".TWcontent").css("display","none");
		$(".Goods-comment").css("display","");
	}

	function isService() {
		//alert("查看评价");

		$(".parameter-box").css("display","none");
		$(".TWcontent").css("display","none");
		$(".Goods-comment").css("display","none");

		$(".service").css("display","");
	}



</script>



</body>
</html>

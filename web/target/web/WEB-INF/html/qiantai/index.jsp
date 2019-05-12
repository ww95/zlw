<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- Custom Theme files -->
	<link href="<%=request.getContextPath()%>/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="<%=request.getContextPath()%>/css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="<%=request.getContextPath()%>/css/font-awesome.css" rel="stylesheet">
	<!-- font-awesome icons -->
	<!-- //Custom Theme files -->
	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i&amp;subset=latin-ext"
		  rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Gudea:400,400i,700&amp;subset=latin-ext" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Marck+Script&amp;subset=cyrillic,latin-ext" rel="stylesheet">
	<!-- //web-fonts -->
</head>

<body>
<!-- banner -->
<div class="agileits-banner">
	<div class="bnr-agileinfo">
		<!-- navigation -->
		<div class="top-nav w3-agiletop">
			<div class="container">
				<div class="navbar-header w3llogo">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1><a href="index.html">Travel<span>rendy</span></a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<div class="w3menu navbar-right">
						<c:if test="${session_user == null}">
							<ul class="nav navbar">
								<li><a href="<%=request.getContextPath()%>/index" class="active">首页</a></li>
								<li><a href="#team" class="scroll">个人中心</a></li>
								<li><a href="#gallery" class="scroll">旅游列表</a></li>
								<li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span data-letters="Pages">登录|注册</span><span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#team" class="scroll">登录</a></li>
										<li><a href="#testi" class="scroll">注册</a></li>
									</ul>
								</li>
<%--								<li><a href="#team" class="scroll">收藏中心</a></li>--%>
							</ul>
						</c:if>
						<c:if test="${session_user!=null&&session_user.u_id!=null}">
							<ul class="nav navbar">
								<li><a href="<%=request.getContextPath()%>/index" class="active">首页</a></li>
								<li><a href="<%=request.getContextPath()%>/user/order-list" class="active">个人中心</a></li>
								<li><a href="#gallery" class="scroll">旅游列表</a></li>
								<li><a href="#" class="scroll">${session_user.username}</a></li>
								<li><a href="<%=request.getContextPath()%>/user/logout" class="active">注销</a></li>
							</ul>
						</c:if>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //navigation -->
		<!-- banner-text -->
		<div class="banner-w3text">
			<div class="container">
				<div class="w3l-agile">
					<h2>探索永无<span>止境</span></h2>
					<div class="banner-pw3l">
						<p>Start your destiny here . . </p>
					</div>
					<div class="w3lsmore">
						<a href="single.html" class="button-pipaluk button--inverted" data-toggle="modal" data-target="#myModal1">了解更多</a>
					</div>
				</div>
			</div>
		</div>
		<!-- //banner-text -->
	</div>
</div>
<!-- Modal2 -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4>Trendy Travel</h4>
				<img src="<%=request.getContextPath()%>/images/g1.jpg" alt=" " class="img-responsive">
				<h5>To Travel is to take a journey into yourself.</h5>
				<p>Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
					ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
			</div>
		</div>
	</div>
</div>
<!-- //Modal2 -->
<!-- //banner -->
<!-- Stats -->
<div class="stats services news-w3layouts">
	<div class="container">
		<div class="stats-agileinfo agileits-w3layouts">
			<div class="col-sm-3 col-xs-3 stats-grid">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='9570' data-delay='.5' data-increment="100">9570</div>
				<h6>CUSTOMERS</h6>
			</div>
			<div class="col-sm-3 col-xs-3 stats-grid">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='850' data-delay='8' data-increment="1">850</div>
				<h6>TOURS</h6>
			</div>
			<div class="col-sm-3 col-xs-3 stats-grid">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='5000' data-delay='.5' data-increment="10">5000</div>
				<h6>DESTINATIONS</h6>
			</div>
			<div class="col-sm-3 col-xs-3 stats-grid">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='110' data-delay='8' data-increment="1">50</div>
				<h6>TOUR TYPES</h6>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>

<%--轮播图信息--%>
<div class="middle-w3l">
	<div class="container">
		<div class="about-right-w3-agileits">
			<div class="callbacks_container">
				<ul class="rslides" id="slider3">
					<c:forEach items="${hots}" var="travel">
					<li>
						<div style="height: 380px;" class="col-md-6 about-left-w3-agileits">
							<h6>Welcome to Trendy Travel</h6>
							<h3>${travel.title}</h3>
							<p class="para-w3-agile">${travel.info}</p>
							<div class="w3l-book">
								<h5>${travel.destination}</h5>
								<h6><span>$</span>${travel.price*travel.discount}</h6>
							</div>
						</div>
						<div class="col-md-6 banner-text1">
                            <a href="<%=request.getContextPath()%>/travel-detail?id=${travel.id}">
                                <img style="height: 380px;width: 100%" src="<%=request.getContextPath()%>${travel.imgPath}" alt=" ">
                            </a>
						</div>
						<div class="clearfix"> </div>
					</li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
</div>
<!-- //middle -->
<!-- Gallery -->
<%--这里就是一些分类信息--%>
<div id="gallery" class="gallery">
	<div class="container">
		<h3 class="title-w3-agile">Portfolio

		</h3>

		<div>
			<div class="form-group">
				<input type="text"  id="search" style="width: 50%;">
				<button type="button" style="width: 10%;" onclick="searchTravels(document.getElementById('search').value,1)">搜索景点</button>
			</div>
			<script>
				function searchTravels(searchValue,page) {
					// alert(searchValue)
					$.ajax(
							{
								url :"<%=request.getContextPath()%>/searchByString",
								type :"post",
								data :{
									"search":searchValue,
									"pageNum":page
								},
								dataType:"json",
								success : function (result) {
									// alert("Ajax访问成功")
									var list = result.travelList;
									var travelId = result.id;
									if ($("#div").length>0){
										$(".col-md-3").remove();
									}
									//添加数据
									for (var i = 0; i < list.length; i++) {
										$("#div").append("" +
												"<div class=\"col-md-3 col-sm-3 col-xs-6 w3gallery-grids\">\n" +
												"\t\t\t\t<a href=\"<%=request.getContextPath()%>/travel-detail?id="+list[i].id+"\" class=\"imghvr-hinge-right figure\">\n" +
												"\t\t\t\t\t<img src=\"<%=request.getContextPath()%>/images/g1.jpg\" alt=\"\" title=\"Trendy Travel Image\"/>\n" +
												"\t\t\t\t\t<div class=\"agile-figcaption\">\n" +
												"\t\t\t\t\t\t<h4>"+list[i].title+"</h4>\n" +
												"\t\t\t\t\t\t<p>"+list[i].info+"</p>\n" +
												"\t\t\t\t\t</div>\n" +
												"\t\t\t\t</a>\n" +
												"\t\t\t</div>" +
												"");
									}
									//对于下标
									if ($(".page-item").length>0) {
										$(".page-item").remove();
									}
									var string = result.string+"";
									$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="searchTravels(\''+document.getElementById('search').value+'\',1)">首页</a></li>');
									$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="searchTravels(\''+document.getElementById('search').value+'\','+(result.pageNum-1)+')">上一页</a></li>');
									for (var i = 1; i <=result.pages; i++) {
										$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="searchTravels(\''+document.getElementById('search').value+'\','+i+')">'+i+'</a></li>');
									}
									$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="searchTravels(\''+document.getElementById('search').value+'\','+(result.pageNum+1)+')">下一页</a></li>');
									$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="searchTravels(\''+document.getElementById('search').value+'\','+result.pages+')">尾页</a></li>');
								}
							}
					)
				}
			</script>
		</div>
		<div>
			<h4>分类列表</h4>
			<ul id="pagination2" class="pagination">
				<c:forEach items="${catalogs}" var="catalog">
					<li class="page-item2"><a class="page-link" href="javascript:;" onclick="ajaxSearch(${catalog.id},1)">${catalog.title}</a></li>
				</c:forEach>
				<script>
					function ajaxSearch(id,page) {
						var travelId=id;
						$.ajax(
								{
									url :"<%=request.getContextPath()%>/search",
									type :"post",
									data :{
										"id":travelId,
										"pageNum":page
									},
									dataType:"json",
									success : function (result) {
										var list = result.travelList;
										var travelId = result.id;
										if ($("#div").length>0){
											$(".col-md-3").remove();
										}
										//添加数据
										for (var i = 0; i < list.length; i++) {
											$("#div").append("" +
													"<div class=\"col-md-3 col-sm-3 col-xs-6 w3gallery-grids\">\n" +
													"\t\t\t\t<a href=\"<%=request.getContextPath()%>/travel-detail?id="+list[i].id+"\" class=\"imghvr-hinge-right figure\">\n" +
													"\t\t\t\t\t<img src=\"<%=request.getContextPath()%>/images/g1.jpg\" alt=\"\" title=\"Trendy Travel Image\"/>\n" +
													"\t\t\t\t\t<div class=\"agile-figcaption\">\n" +
													"\t\t\t\t\t\t<h4>"+list[i].title+"</h4>\n" +
													"\t\t\t\t\t\t<p>"+list[i].info+"</p>\n" +
													"\t\t\t\t\t</div>\n" +
													"\t\t\t\t</a>\n" +
													"\t\t\t</div>" +
													"");
										}
										//对于下标
										if ($(".page-item").length>0) {
											$(".page-item").remove();
										}

										$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajaxSearch('+result.id+',1)">首页</a></li>');
										$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajaxSearch('+result.id+','+(result.pageNum-1)+')">上一页</a></li>');
										for (var i = 1; i <=result.pages; i++) {
											$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajaxSearch('+(result.id)+','+i+')">'+i+'</a></li>');
										}
										$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajaxSearch('+result.id+','+(result.pageNum+1)+')">下一页</a></li>');
										$("#pagination").append('<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajaxSearch('+result.id+','+result.pages+')">尾页</a></li>');
									}
								}
						)
					}
				</script>
			</ul>

		</div>

	</div>
<%--    商品列表--%>
	<div id="agileinfo" class="agileinfo-gallery-row">
		<div id="div">
			<c:forEach items="${pageInfo.list}" var="travel">
				<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
					<a href="<%=request.getContextPath()%>/travel-detail?id=${travel.id}" class="imghvr-hinge-right figure">
						<img src="<%=request.getContextPath()%>${travel.imgPath}" style="height: 210px;width: 100%" alt="" title="Trendy Travel Image"/>
						<div class="agile-figcaption">
							<h4>${travel.title}</h4>
							<p>${travel.info}</p>
						</div>
					</a>
				</div>
			</c:forEach>
		</div>

		<div class="clearfix"> </div>
	</div>
</div>
<div style="margin: 0 auto;width:30%">
	<nav aria-label="Page navigation example">
		<ul id="pagination" class="pagination">
			<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajax(1)">首页</a></li>
			<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajax(${pageInfo.pageNum-1})">上一页</a></li>
			<c:forEach step="1" end="${pageInfo.pages}"  begin="1" varStatus="index">
				<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajax(${index.index})">${index.index}</a></li>
			</c:forEach>
			<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajax(${pageInfo.pageNum+1})">下一页</a></li>
			<li class="page-item"><a class="page-link" href="javascript:;" onclick="ajax(${pageInfo.pages})">尾页</a></li>
		</ul>
	</nav>
</div>
<!-- //Gallery -->
<div class="tlinks">
</div>
<!-- team -->
<c:if test="${session_user==null}">
	<div class="team" id="team">
		<div class="container">
			<h3 class="title-w3-agile">登录中心</h3>
			<div class="team-grids">
				<form action="<%=request.getContextPath()%>/login" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">账号</label>
						<input type="text" name="username" class="form-control" id="exampleInputEmail1" placeholder="输入账号...">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">密码</label>
						<input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="输入密码...">
					</div>
					<div class="form-group form-check">
					</div>
					<button type="submit" class="btn btn-primary">登录</button>
				</form>

				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</c:if>

<!-- //team -->
<!-- testimonials -->
<c:if test="${session_user==null}">
	<div class="testimonials" id="testi">
		<div class="container">
			<h3 class="title-w3-agile">注册中心</h3>
			<div class="agile_testimonials_grids">
				<form action="/register" method="post">
					<div class="form-group">
						<label for="exampleInputEmail2">账号</label>
						<input type="text" name="username" class="form-control" id="exampleInputEmail2" placeholder="输入账号...">

					</div>
					<div class="form-group">
						<label for="exampleInputPassword2">密码</label>
						<input type="password" name="password" class="form-control" id="exampleInputPassword2" placeholder="输入密码...">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword3">确认密码</label>
						<input type="password" name="rePassword" class="form-control" id="exampleInputPassword3" placeholder="输入确定密码...">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword4">昵称</label>
						<input type="text" name="nick_name" class="form-control" id="exampleInputPassword4" placeholder="输入昵称...">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword5">性别</label>
						<input type="radio" name="sex" id="exampleInputPassword51" value="1"> 男
						<input type="radio" name="sex" id="exampleInputPassword5" value="0"> 女
					</div>
					<div class="form-group">
						<label for="exampleInputPassword6">电话</label>
						<input type="text" name="tellphone" class="form-control" id="exampleInputPassword6" placeholder="输入电话...">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword7">身份证</label>
						<input type="text" name="id_card" class="form-control" id="exampleInputPassword7" placeholder="输入身份证...">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword8">地址</label>
						<input type="text" name="address" class="form-control" id="exampleInputPassword8" placeholder="输入地址...">
					</div>
					<button type="submit" class="btn btn-primary">注册</button>
				</form>
			</div>
		</div>
	</div>
</c:if>

<!-- footer start here -->
<div class="footer-agile">
	<div class="container">
		<div class="footer-btm-agileinfo">
			<div class="col-md-3 col-xs-3 footer-grid w3social">
				<h3>Quick Links</h3>
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="#about" class="scroll">About</a></li>
					<li><a href="#gallery" class="scroll">Portfolio</a></li>
					<li><a href="#contact" class="scroll">Contact Us</a></li>
				</ul>
			</div>
			<div class="col-md-3 col-xs-3 footer-grid">
				<h3>Useful Info</h3>
				<ul>
					<li><i class="fa fa-map-marker"></i>+012 345 6789</li>
					<li><i class="fa fa-fax"></i>+987 654 3210</li>
					<li><i class="fa fa-phone"></i>Kmome St, NY 10002, Canada.</li>
					<li><i class="fa fa-envelope-o"></i><a href="mailto:example@mail.com">mail@example.com</a></li>
				</ul>
			</div>
			<div class="col-md-6 col-xs-6 footer-grid footer-review">
				<h3>Few Words</h3>
				<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam</p>
				<p class="w3l-para-mk">Unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
</div>
<!-- //footer end here -->

<!-- js -->
<script src="<%=request.getContextPath()%>/js/jquery-2.2.3.min.js"></script>
<script>

            function ajax(page){
                $.ajax(
                    {
                        url :"<%=request.getContextPath()%>/ajax",
                        type :"post",
                        data :{
                            "pageNum":page
                        },
						dataType:"json",
                         success : function (result) {
                        	 // alert(result.pages)
							 // alert(result.pageNum)
							 // alert(result.travelList.length);
							 var list = result.travelList;
							 if ($("#div").length>0){
								 $(".col-md-3").remove();
							 }
							 for (var i = 0; i < list.length; i++) {
								 $("#div").append("" +
												"<div class=\"col-md-3 col-sm-3 col-xs-6 w3gallery-grids\">\n" +
												"\t\t\t\t<a href=\"<%=request.getContextPath()%>/travel-detail?id="+list[i].id+"\" class=\"imghvr-hinge-right figure\">\n" +
												"\t\t\t\t\t<img src=\"<%=request.getContextPath()%>/images/g1.jpg\" alt=\"\" title=\"Trendy Travel Image\"/>\n" +
												"\t\t\t\t\t<div class=\"agile-figcaption\">\n" +
												"\t\t\t\t\t\t<h4>"+list[i].title+"</h4>\n" +
												"\t\t\t\t\t\t<p>"+list[i].info+"</p>\n" +
												"\t\t\t\t\t</div>\n" +
												"\t\t\t\t</a>\n" +
												"\t\t\t</div>" +
												"");
									}
									if ($(".page-item").length>0) {
										$(".page-item").remove();
									}
									$("#pagination").append("<li class=\"page-item\"><a class=\"page-link\" onclick=\"ajax(1)\">首页</a></li>");
									$("#pagination").append("<li class=\"page-item\"><a class=\"page-link\" onclick=\"ajax("+(result.pageNum-1)+")\">上一页</a></li>");
									for (var i = 1; i <=result.pages; i++) {
										$("#pagination").append("<li class=\"page-item\"><a class=\"page-link\" onclick=\"ajax("+i+")\">"+i+"</a></li>");
									}
									$("#pagination").append("<li <li class=\"page-item\"><a class=\"page-link\" onclick=\"ajax("+(result.pageNum+1)+")\">下一页</a></li>");
									$("#pagination").append("<li class=\"page-item\"><a class=\"page-link\" onclick=\"ajax("+result.pages+")\">尾页</a></li>");
							}
                    }
                )
            }
            function search(catalogId) {
            	alert(catalogId);

			}

</script>
<!-- //js -->
<!-- Progressive-Effects-Animation-JavaScript -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/numscroller-1.0.js"></script>
<!-- //Progressive-Effects-Animation-JavaScript -->
<!-- responsiveslides -->
<script src="<%=request.getContextPath()%>/js/responsiveslides.min.js"></script>
<script>
	// You can also use "$(window).load(function() {"
	$(function () {
		// Slideshow 4
		$("#slider3").responsiveSlides({
			auto: true,
			pager: true,
			nav: false,
			speed: 500,
			namespace: "callbacks",
			before: function () {
				$('.events').append("<li>before event fired.</li>");
			},
			after: function () {
				$('.events').append("<li>after event fired.</li>");
			}
		});
	});
</script>
<!-- //responsiveslides -->
<!-- simple-lightbox -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/simple-lightbox.min.js"></script>
<script>
	$(function () {
		var gallery = $('.agileinfo-gallery-row a').simpleLightbox({
			navText: ['&lsaquo;', '&rsaquo;']
		});
	});
</script>
<link href='<%=request.getContextPath()%>/css/simplelightbox.min.css' rel='stylesheet' type='text/css'>
<!-- Light-box css -->
<!-- //simple-lightbox -->
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/move-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function ($) {
		$(".scroll").click(function (event) {
			event.preventDefault();

			$('html,body').animate({
				scrollTop: $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
	$(document).ready(function () {
		/*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */

		$().UItoTop({
			easingType: 'easeOutQuart'
		});

	});
</script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Flexslider-js -->
<script type="text/javascript">
	$(window).load(function () {
		$("#flexiselDemo1").flexisel({
			visibleItems: 1,
			animationSpeed: 1000,
			autoPlay: false,
			autoPlaySpeed: 5000,
			pauseOnHover: true,
			enableResponsiveBreakpoints: true,
			responsiveBreakpoints: {
				portrait: {
					changePoint: 480,
					visibleItems: 1
				},
				landscape: {
					changePoint: 640,
					visibleItems: 1
				},
				tablet: {
					changePoint: 768,
					visibleItems: 1
				}
			}
		});
	});
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.flexisel.js"></script>
<!-- //Flexslider-js -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<!-- //Bootstrap core JavaScript -->

</body>

</html>
<script>
	var msg = "${msg}"
	if (msg!=""){
		alert(msg)
	}
</script>
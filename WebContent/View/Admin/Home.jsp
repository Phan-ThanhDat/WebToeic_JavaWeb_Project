<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Admin Home Page</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Gallery - Ace Admin</title>

		<meta name="description" content="responsive photo gallery using colorbox" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="Template/Backend/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="Template/Backend/assets/css/colorbox.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="Template/Backend/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="Template/Backend/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="Template/Backend/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="Template/Backend/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="Template/Backend/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="Template/Backend/assets/js/ace-extra.min.js"></script>
		
		<style type="text/css">
			
				.paddingtop-image
				{
					padding-top: 50px;
				}
			
		</style>

</head>

<body class="no-skin">

<!--Header-->
	<jsp:include page="Headeradmin.jsp"></jsp:include>
<!--End Header-->
	
	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
		</script>
		<!--menu-->
			<jsp:include page="Menu.jsp"></jsp:include>
		<!--End menu-->
				
	</div>
		
		<div class="main-content">
			<div class="main-content-inner">
				<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Gallery</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>
					
					<div class="page-content">
							
						
						<div class="row">
							<div class="col-xs-12">
								<center class="paddingtop-image">
									<img width="450" height="450" alt="150x150" src="Template/Backend/assets/images/homeadmin.png" />
								</center>
								
							</div>
						</div>
							
						
					</div>
			</div>
			
		</div><!-- /.main-content --><!-- /.main-content -->
		
		<!-- /footter -->
			<jsp:include page="Footeradmin.jsp"></jsp:include>
		<!-- End footter -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		
		
	</div><!-- /.main-container -->
	

<script src="Template/Backend/assets/js/jquery-2.1.4.min.js"></script>

						<!-- <![endif]-->
				
						<!--[if IE]>
				<script src="assets/js/jquery-1.11.3.min.js"></script>
				<![endif]-->
						<script type="text/javascript">
							if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
						</script>
						<script src="Template/Backend/assets/js/bootstrap.min.js"></script>
				
						<!-- page specific plugin scripts -->
						<script src="Template/Backend/assets/js/jquery.colorbox.min.js"></script>
				
						<!-- ace scripts -->
						<script src="Template/Backend/assets/js/ace-elements.min.js"></script>
						<script src="Template/Backend/assets/js/ace.min.js"></script>
				
						<!-- inline scripts related to this page -->
						<script type="text/javascript">
							jQuery(function($) {
					var $overflow = '';
					var colorbox_params = {
						rel: 'colorbox',
						reposition:true,
						scalePhotos:true,
						scrolling:false,
						previous:'<i class="ace-icon fa fa-arrow-left"></i>',
						next:'<i class="ace-icon fa fa-arrow-right"></i>',
						close:'&times;',
						current:'{current} of {total}',
						maxWidth:'100%',
						maxHeight:'100%',
						onOpen:function(){
							$overflow = document.body.style.overflow;
							document.body.style.overflow = 'hidden';
						},
						onClosed:function(){
							document.body.style.overflow = $overflow;
						},
						onComplete:function(){
							$.colorbox.resize();
						}
					};
				
					$('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
					$("#cboxLoadingGraphic").html("<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon
					
					
					$(document).one('ajaxloadstart.page', function(e) {
						$('#colorbox, #cboxOverlay').remove();
				   });
				})
		</script>
		
</body>


</html>
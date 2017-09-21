<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

<!-- Bootstrap -->
    <link href="Template/Fontend/css/bootstrap.css" rel="stylesheet">
    <link href="Template/Fontend/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="Template/Fontend/css/style.css" rel="stylesheet"> 
    
    <!--Font-->
    <link href='Template/Fontend/font/font-1.css' rel='stylesheet' type='text/css'>
    
    
    
    
      

    <!-- SCRIPT 
    ============================================================-->  
    <script src="Template/Fontend/js/jquery1.js"></script>
    <script src="Template/Fontend/js/bootstrap.min.js"></script>
    
</head>
<body>

<!--HEADER ROW-->
  <div id="header-row">
    <div class="container">
      <div class="row">
              <!--LOGO-->
              <div class="span3"><a class="brand" href="Homeforward"><img src="Template/Fontend/img/logo.jpg" height = "100px" width = "100px"/></a></div>
              <!-- /LOGO -->

            <!-- MAIN NAVIGATION -->  
              <div class="span9">
                <div class="navbar  pull-right">
                  <div class="navbar-inner">
                    <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
                    <div class="nav-collapse collapse navbar-responsive-collapse">
                    <ul class="nav">
                      
                      
                        <li><a href="Loginforward">Log-in</a></li>
                        <li><a href="contact.html">Sin-in</a></li>
                 
                    </ul>
                  </div>

                  </div>
                </div>
              </div>
            <!-- MAIN NAVIGATION -->  
      </div>
    </div>
  </div>
  <!-- /HEADER ROW -->

  


  <div class="container">

  <!--Carousel
  ==================================================-->

  <div id="myCarousel" class="carousel slide">
    <div class="carousel-inner">

      <div class="active item">
        <div class="container">
          <div class="row">
            
              <div class="span6">

                <div class="carousel-caption">
                      <h1>German Dog</h1>
                      <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                      <a class="btn btn-large btn-primary" href="#">Buy now</a>
                </div>

              </div>

                <div class="span6"> <img src="Template/Fontend/img/slide/slide 1.jpg" height = "350px" width = "300px"></div>

          </div>
        </div>
       



      </div>

<c:forEach items="${listslidebanner}" var = "list">
      <div class="item">
       
        <div class="container">
          <div class="row">
            
              <div class="span6">

                <div class="carousel-caption">
                      <h1>${list.slidename}</h1>
                      <p class="lead">${list.slidecontent}</p>
                      <a class="btn btn-large btn-primary" href="#">Sign up today</a>
                </div>

              </div>

                <div class="span6"> <img src="Template/Fontend/img/slide/${list.slideimage}" height = "350px" width = "300px"></div>

          </div>
        </div>

      </div>



</c:forEach>

    </div>
       <!-- Carousel nav -->
      <a class="carousel-control left " href="#myCarousel" data-slide="prev"><i class="icon-chevron-left"></i></a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="icon-chevron-right"></i></a>
        <!-- /.Carousel nav -->

  </div>
    <!-- /Carousel -->



<!-- Feature 
  ==============================================-->


  <div class="row feature-box">
      <div class="span12 cnt-title">
       <h1>At vero eos et accusamus et iusto odio dignissimos</h1> 
        <span>Contrary to popular belief, Lorem Ipsum is not simply random text.</span>        
      </div>

      <div class="span4">
        <img src="Template/Fontend/img/icon3.png">
        <h2>Feature A</h2>
        <p>
            Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
        </p>

        <a href="#">Read More &rarr;</a>

      </div>

      <div class="span4">
        <img src="Template/Fontend/img/icon2.png">
        <h2>Feature B</h2>
        <p>
            Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna 
            aliqua. 
        </p>   
          <a href="#">Read More &rarr;</a>    
      </div>

      <div class="span4">
        <img src="Template/Fontend/img/icon1.png">
        <h2>Feature C</h2>
        <p>
            Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. 
        </p>
          <a href="#">Read More &rarr;</a>
      </div>
  </div>


<!-- /.Feature -->

  <div class="hr-divider"></div>

<!-- Row View -->


    <div class="row">
        <div class="span6"><img src="Template/Fontend/img/responsive.png"></div>

        <div class="span6">
          <img class="hidden-phone" src="Template/Fontend/img/icon4.png" alt="">
          <h1>Fully Responsive</h1>
            <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
             <a href="#">Read More &rarr;</a>
        </div>
    </div>

    
</div>


<!-- /.Row View -->



<!--Footer
==========================-->

<footer>
    <div class="container">
      <div class="row">
        <div class="span6">Copyright &copy 2013 Shapebootstrap | All Rights Reserved  <br>
        <small>Aliquam tincidunt mauris eu risus.</small>
        </div>
        <div class="span6">
            <div class="social pull-right">
                <a href="#"><img src="Template/Fontend/img/social/googleplus.png" alt=""></a>
                <a href="#"><img src="Template/Fontend/img/social/dribbble.png" alt=""></a>
                <a href="#"><img src="Template/Fontend/img/social/twitter.png" alt=""></a>
                <a href="#"><img src="Template/Fontend/img/social/dribbble.png" alt=""></a>
                <a href="#"><img src="Template/Fontend/img/social/rss.png" alt=""></a>
            </div>
        </div>
      </div>
    </div>
</footer>

<!--/.Footer-->


</body>
</html>
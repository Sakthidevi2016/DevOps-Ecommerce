<%@include file="/WEB-INF/views/Header.jsp"%>
<html>
<body>
<div class="container">
  <h2>Online Food</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="resources/images_curosel/81c.jpg" style="width:1000px;height:490px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Blossom of Tasty Buds!</h3>
        </div>
      </div>

      <div class="item">
        <img src="resources/images_curosel/82c.jpg" style="width:1000px;height:490px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Blossom of Tasty Buds!</h3>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/images_curosel/83c.jpg" style="width:1000px;height:490px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Blossom of Tasty Buds!</h3>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/images_curosel/84c.jpg" style="width:1000px;height:490px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Blossom of Tasty Buds!</h3>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/images_curosel/85c.jpg" style="width:1000px;height:490px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Blossom of Tasty Buds!</h3>
        </div>
      </div>
      
      <div class="item">
        <img src="resources/images_curosel/86c.jpg" style="width:1000px;height:490px;margin: 0 auto;">
        <div class="carousel-caption">
          <h3>Blossom of Tasty Buds!</h3>
        </div>
      </div>
      
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
    
   
      
</div>
</div>
</div>
<hr>
<div class="row">
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="<c:url value="/login"/>">
        <img src="<c:url value="/resources/images/81.jpg"/>" alt="Lights" style="width:100%">
        <div class="caption">
          <p><h2>Blossom of tasty buds</h2></p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="<c:url value="/login"/>">
        <img src="<c:url value="/resources/images/83.jpg"/>" alt="Lights" style="width:100%">
        <div class="caption">
          <p><h2>Blossom of tasty buds</h2></p>
        </div>
      </a>
    </div>
  </div>
  <div class="col-md-4">
    <div class="thumbnail">
      <a href="<c:url value="/login"/>">
        <img src="<c:url value="/resources/images/84.jpg"/>" alt="Lights" style="width:100%">
        <div class="caption">
          <p><h2>Blossom of tasty buds</h2></p>
        </div>
      </a>
    </div>
  </div>
 </div>
</body>
<%@include file="/WEB-INF/views/Footer.jsp"%>
</html>

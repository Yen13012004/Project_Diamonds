<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value ="${pageContext.servletContext.contextPath }" scope = "session" />
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="dec"%>
<!DOCTYPE html>
<html lang="en">
   
<!-- Mirrored from veepixel.com/tf/html/regalia/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 May 2024 16:31:52 GMT -->
<head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Regalia- Jewellery, Diamond Business/shop Template</title>
      <!--Favicons-->
      <link rel="icon" type="image/png" sizes="32x32" href="${contextPath }/user/favicon/favicon-32x32.png">
      <meta name="msapplication-TileColor" content="#ffffff">
      <meta name="theme-color" content="#ffffff">
      <!--Bootstrap and Other Vendors-->
      <link rel="stylesheet" href="${contextPath }/user/css/bootstrap.min.css">
      <link rel="stylesheet" href="${contextPath }/user/css/bootstrap-theme.min.css">
      <link rel="stylesheet" href="${contextPath }/user/css/fontawesome-all.min.css">
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
      <link rel="stylesheet" href="${contextPath }/user/vendors/owl.carousel/css/owl.carousel.min.css">
       
      <link rel="stylesheet" type="text/css" href="${contextPath }/user/vendors/flexslider/flexslider.css" media="screen" />
      <link href="https://fonts.googleapis.com/css2?family=Domine:wght@400;500;600;700&amp;display=swap" rel="stylesheet"> 
      <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet"> 
      <!--Mechanic Styles-->
      <link rel="stylesheet" href="${contextPath }/user/css/style.css">
      <link rel="stylesheet" href="${contextPath }/user/css/responsive.css">
      <!--[if lt IE 9]>
      <script src="js/html5shiv.min.js"></script>
      <script src="js/respond.min.js"></script>
      <![endif]-->
   </head>
   <body>
      <a href="#" id="back-to-top" title="Back to top">&uarr;</a>
      <header class="row" id="header">
         <div class="row m0 logo_line">
            <div class="container">
               <div class="row">
                  <div class="col-sm-3 logo">
                     <a href="index-2.html" class="logo_a">
                         <img src="${contextPath }/user/images/Regalia-logo-2.png" alt="Regalia"> 
                        
                     </a>
                  </div>
                  <div class="col-sm-9 searchSec">
                     <div class="col-sm-12 col-lg-12 pull-right">
                        <div class="fright wishlistCompare">
                           <ul class="nav">
                              <li class="searchSec_li">
                                <div class="fright searchForm">
                                    <form action="#" method="get">
                                       <div class="input-group">
                                          <input type="hidden" name="search_param" value="all" id="search_param">
                                          <input type="search" class="form-control" placeholder="Search Products">
                                          <span class="input-group-btn searchIco">
                                          <button class="btn btn-default" type="submit"><i class="fas fa-search"></i></button>
                                          </span>
                                       </div>
                                       <!-- /input-group -->
                                    </form>
                                 </div>
                              </li>
                              <li>
                                 <a href="#">
                                 <span class="wish">
                                 <i class="fas fa-heart"></i>
                                 <sup>3</sup> 
                                 </span>
                                 <span>Wishlist</span>
                                 </a>
                              </li>
                              <li class="h_cart">
                                 <a href="cart.html">
                                 <span class="wish">
                                 <i class="fas fa-shopping-cart"></i>
                                 <sup>2</sup> 
                                 </span>
                                 <span>My cart</span>
                                 </a>
                                 <div class="hclist">
                                    <div class="table-responsive">
                                       <table class="table">
                                          <thead>
                                             <tr>
                                                <th class="productImage">Product image</th>
                                                <th class="productName">Product name</th>
                                                <th></th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                             <tr class="alert" role="alert">
                                                <td class="productImage"><img src="${contextPath }/user/images/product/single/l1.png" alt=""></td>
                                                <td class="productName">
                                                   <h6 class="heading">Gold Plated Charm</h6>
                                                   <div class="input-group spinner">
                                                      <input class="form-control" value="1" type="text">
                                                      <div class="input-group-btn-vertical">
                                                         <button class="btn btn-default"><i class="fas fa-angle-up"></i></button>
                                                         <button class="btn btn-default"><i class="fas fa-angle-down"></i></button>
                                                      </div>
                                                   </div>
                                                </td>
                                                <td><a href="#" class="edit" data-dismiss="alert" aria-label="Close"><i class="far fa-trash-alt"></i></a></td>
                                             </tr>
                                             <tr class="alert" role="alert">
                                                <td class="productImage"><img src="${contextPath }/user/images/product/single/l1.png" alt=""></td>
                                                <td class="productName">
                                                   <h6 class="heading">Zephyrr Stones</h6>
                                                   <div class="input-group spinner">
                                                      <input class="form-control" value="1" type="text">
                                                      <div class="input-group-btn-vertical">
                                                         <button class="btn btn-default"><i class="fas fa-angle-up"></i></button>
                                                         <button class="btn btn-default"><i class="fas fa-angle-down"></i></button>
                                                      </div>
                                                   </div>
                                                </td>
                                                <td><a href="#" class="edit" data-dismiss="alert" aria-label="Close"><i class="far fa-trash-alt"></i></a></td>
                                             </tr>
                                          </tbody>
                                       </table>
                                    </div>
                                 </div>
                              </li>
                           </ul>
                        </div>
                     </div>
                     <div class="col-sm-12">
                        <nav class="navbar navbar-default m0 navbar-static-top">
                              <div>
                                 <!-- Brand and toggle get grouped for better mobile display -->
                                 <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mainNav">
                                    <i class="fas fa-bars"></i> MENU
                                    </button>
                                 </div>
                                 <!-- Collect the nav links, forms, and other content for toggling -->
                                 <div class="collapse navbar-collapse" id="mainNav">
                                    <ul class="nav navbar-nav">
                                       <li class="active dropdown">
                                          <a href="${pageContext.servletContext.contextPath}/home">Home</a>
                                       
                                       </li>
                                       <li><a href="${pageContext.servletContext.contextPath}/user/about">About</a></li>
                                       <li class="dropdown">
                                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Pages</a>
                                          <ul class="dropdown-menu" role="menu">
                                            
                                             <li><a href="${pageContext.servletContext.contextPath}/user/singlePost">Single Post</a></li>
                                             
                                            
                                             <li><a href="${pageContext.servletContext.contextPath}/user/404">404</a></li>
                                          </ul>
                                       </li>
                                       <li class="dropdown megaMenu">
                                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Mega Menu</a>
                                          <ul class="dropdown-menu row m0" role="menu">
                                             <li class="listMenu">
                                                <div class="row listTitle">Jewelery &amp; sectionals</div>
                                                <ul class="nav megaInnerMenu">
                                                   <li><a href="#">wedding ring</a></li>
                                                   <li><a href="#">pendant</a></li>
                                                   <li><a href="#">nosering</a></li>
                                                   <li><a href="#">necklace</a></li>
                                                   <li><a href="#">medallion</a></li>
                                                   <li><a href="#">engagement ring</a></li>
                                                   <li><a href="#">costume jewellery</a></li>
                                                   <li><a href="#">brooch</a></li>
                                                   <li><a href="#">signet ring</a></li>
                                                </ul>
                                             </li>
                                             <li class="listMenu">
                                                <div class="row listTitle">shop by collections</div>
                                                <ul class="nav megaInnerMenu">
                                                   <li><a href="#">Ring</a></li>
                                                   <li><a href="#">Bracelet</a></li>
                                                   <li><a href="#">Bangle</a></li>
                                                   <li><a href="#">Link, Chain</a></li>
                                                   <li><a href="#">Stud</a></li>
                                                   <li><a href="#">Ear-Ring, Tops</a></li>
                                                   <li><a href="#">Brooch</a></li>
                                                </ul>
                                             </li>
                                             <li class="boxMenu">
                                                <div class="row listTitle">
                                                   shop by categories <a href="product.html">shop all <i class="fas fa-caret-right"></i></a>
                                                </div>
                                                <ul class="nav megaInnerMenu row m0">
                                                   <li>
                                                      <a href="product2.html">
                                                         <div class="row m0 imgHov">
                                                            <img src="${contextPath }/user/images/menu/1.png" alt="">
                                                            <div class="row m0 hovCnt">
                                                               <div class="row m0 hovCntInner">
                                                                  shop now <i class="fas fa-caret-right"></i>
                                                               </div>
                                                            </div>
                                                         </div>
                                                         <div class="row m0 menuTitle">Earrings</div>
                                                      </a>
                                                   </li>
                                                   <li>
                                                      <a href="product.html">
                                                         <div class="row m0 imgHov">
                                                            <img src="${contextPath }/user/images/menu/2.png" alt="">
                                                            <div class="row m0 hovCnt">
                                                               <div class="row m0 hovCntInner">
                                                                  shop now <i class="fas fa-caret-right"></i>
                                                               </div>
                                                            </div>
                                                         </div>
                                                         <div class="row m0 menuTitle">Brooch</div>
                                                      </a>
                                                   </li>
                                                   <li>
                                                      <a href="product2.html">
                                                         <div class="row m0 imgHov">
                                                            <img src="${contextPath }/user/images/menu/3.png" alt="">
                                                            <div class="row m0 hovCnt">
                                                               <div class="row m0 hovCntInner">
                                                                  shop now <i class="fas fa-caret-right"></i>
                                                               </div>
                                                            </div>
                                                         </div>
                                                         <div class="row m0 menuTitle">Necklace</div>
                                                      </a>
                                                   </li>
                                                </ul>
                                             </li>
                                          </ul>
                                       </li>
                                       <li class="dropdown">
                                          <a href="${pageContext.servletContext.contextPath}/user/shop">Shop</a>
                                         
                                       </li>
                                       <li><a href="${pageContext.servletContext.contextPath}/user/blog">Blog</a></li>
                                       <li><a href="${pageContext.servletContext.contextPath}/user/contact">Contact Us</a></li>
                                       <li class="offers_navbtn" ><a href="#"><i class="fas fa-gift"></i><span>Offers</span></a></li>
                                    </ul>
                                 </div>
                                 <!-- /.navbar-collapse -->
                              </div>
                              <!-- /.container-fluid -->
                           </nav>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
      </header>
      <!--Header-->


      <!-- Place somewhere in the <body> of your page -->
      <%-- <c:if test = "${!empty page }">
      <jsp:include page="user/${page }.jsp"></jsp:include>
      </c:if> --%>
      <dec:body/>
      <footer class="row footer2">
         <div class="row m0 topFooter">
            <div class="line1">
               <div class="container">
               <div class="row footFeatures">
                  <div class="col-sm-4 footFeature">
                     <div class="media">
                        <div class="media-left icon"><img src="${contextPath }/user/images/icons/car3.png" alt=""></div>
                        <div class="media-body texts">
                           <h4>free shipping</h4>
                           <h2>International</h2>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-4 footFeature">
                     <div class="media m0">
                        <div class="media-left icon"><img src="${contextPath }/user/images/icons/tel24-7_2.png" alt=""></div>
                        <div class="media-body texts">
                           <h4>24 hours helpline</h4>
                           <h2>123 456 789</h2>
                        </div>
                     </div>
                  </div>
                  <div class="col-sm-4 footFeature">
                     <div class="media m0">
                        <div class="media-left icon"><img src="${contextPath }/user/images/icons/shopping-bag2.png" alt=""></div>
                        <div class="media-body texts">
                           <h4>see our</h4>
                           <h2>latest offers</h2>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            </div>
            <div class="container line2">
               <div class="row">
                  <div class="col-sm-3 widget">
                     <div class="row m0">
                        <h4>About Regalia</h4>
                        <p>We provide the best Quality of products to you.We are always here to help our lovely customers.</p>
                        <ul class="list-inline">
                           <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                           <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                           <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                        </ul>
                     </div>
                  </div>
                  <div class="col-sm-3 widget">
                     <div class="row m0">
                        <h4>top brands</h4>
                        <ul class="nav collumn-2">
                           <li><a href="#">Fusce iaculis</a></li>
                           <li><a href="#">Nisl dapibus</a></li>
                           <li><a href="#">Vulputate sapien</a></li>
                           <li><a href="#">Aliquet</a></li>
                           <li><a href="#">Risus feugiat</a></li>
                           <li><a href="#">Zisl busapi</a></li>
                        </ul>
                     </div>
                  </div>
                  <div class="col-sm-3 widget">
                     <div class="row m0">
                        <h4>Tags</h4>
                        <ul class="tags">
                           <li><a href="#">wedding ring</a></li>
                           <li><a href="#">pendant</a></li>
                           <li><a href="#">nosering</a></li>
                           <li><a href="#">necklace</a></li>
                           <li><a href="#">medallion</a></li>
                           <li><a href="#">brooch</a></li>
                           <li><a href="#">costume jewellery</a></li>
                           <li><a href="#">signet ring</a></li>
                        </ul>
                     </div>
                  </div>
                  
                  <div class="col-sm-3 widget">
                     <div class="row m0">
                        <h4>subscribe to our latest news</h4>
                        <form action="https://veepixel.com/tf/html/regalia/subscriptionList.php" method="post" role="form">
                           <div class="input-group">
                              <span class="input-group-addon"><i class="fas fa-envelope"></i></span>
                              <input type="email" class="form-control" id="subscribeEmail" name="subscribeEmail" placeholder="EMAIL ADDRESS">
                              <button class="btn btn-default" type="submit"><i class="fas fa-paper-plane"></i></button>
                           </div>
                           
                        </form>
                     </div>

                  </div>
               </div>
            </div>
         </div>
         <div class="row m0 copyRight">
            <div class="container">
               <div class="row">
                  <div class="fleft">&copy; 2021 <a href="index-2.html">Regalia</a> All Rights Reserved.</div>
                  <ul class="nav nav-pills fright">
                     <li><a href="index-2.html">Home</a></li>
                     <li><a href="about.html">about</a></li>
                     <li><a href="blog.html">blog</a></li>
                     <li><a href="contact.html">contact</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </footer>
      <!--jQuery, Bootstrap and other vendor JS-->
      <!--jQuery-->
      <script src="${contextPath }/user/js/jquery-2.1.3.min.js"></script>
      <!--Google Maps-->
      <script src="https://maps.googleapis.com/maps/api/js"></script>
      <!--Bootstrap JS-->
      <script src="${contextPath }/user/js/bootstrap.min.js"></script>
      
      <!--Owl Carousel-->
      <script src="${contextPath }/user/vendors/owl.carousel/js/owl.carousel.min.js"></script>
      <!--Isotope-->
      <script src="${contextPath }/user/vendors/isotope/isotope-custom.js"></script>
      <!--FlexSlider-->
      <script src="${contextPath }/user/vendors/flexslider/jquery.flexslider-min.js"></script>
      <!--Regalia JS-->
      <script src="${contextPath }/user/js/regalia.js"></script>
   </body>

<!-- Mirrored from veepixel.com/tf/html/regalia/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 29 May 2024 16:31:58 GMT -->
</html>


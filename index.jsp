<!DOCTYPE html>
<html lang="en">
  <head>
  
    <!-- its design by Ravi Jangra and Harendra Tyagi-->

    <!-- Basic Page Needs -->

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <title>STUDENTDATABASE : Home</title>

    <!-- Mobile Specific Metas -->

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="img/manitlogo.png"/>

    <!-- CSS --> 
      
    <!-- Bootstrap css file-->

  <link href="css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font awesome css file-->

    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Superslide css file-->
    <link rel="stylesheet" href="css/superslides.css">
    <!-- Slick slider css file -->
    <link href="css/slick.css" rel="stylesheet"> 
    <!-- Circle counter cdn css file -->
    <link rel='stylesheet prefetch' href='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/css/jquery.circliful.css'>  
    <!-- smooth animate css file -->
    <link rel="stylesheet" href="css/animate.css"> 
    <!-- preloader -->
    <link rel="stylesheet" href="css/queryLoader.css" type="text/css" />
    <!-- gallery slider css -->
    <link type="text/css" media="all" rel="stylesheet" href="css/jquery.tosrus.all.css" />    
    <!-- Default Theme css file -->
    <link id="switcher" href="css/themes/default-theme.css" rel="stylesheet">
    <!-- Main structure css file -->
    <link href="style.css" rel="stylesheet">
   
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Merriweather' rel='stylesheet' type='text/css'>   
    <link href='http://fonts.googleapis.com/css?family=Varela' rel='stylesheet' type='text/css'>    

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<style>
#div {
    width: 700px;
    height: 30px;
    background:Cornsilk ;
    position: relative;
    -webkit-animation: mymove 100s infinite; /* Safari 4.0 - 8.0 */
    -webkit-animation-timing-function: linear; /* Safari 4.0 - 8.0 */
    animation: mymove 10s infinite;
    animation-timing-function: linear;
}

/* Safari 4.0 - 8.0 */
@-webkit-keyframes mymove {
    from {left: 0px;}
    to {left: 0px;}
}

@keyframes mymove {
    from {left: 0px;}
    to {left: 500px;}
}
</style>
  </head>
  <body> 
     

    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--=========== BEGIN HEADER SECTION ================-->
    <header id="header">
      <!-- BEGIN MENU -->
      <div class="menu_area">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">  <div class="container">
            <div class="navbar-header">
              <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <!-- LOGO -->
              <!-- TEXT BASED LOGO -->
              <a class="navbar-brand" style="color:yellow" href="index.html">MANIT</a>              
              <!-- IMG BASED LOGO  -->
               <!-- <a class="navbar-brand" href="index.html"><img src="img/logo2.png" alt="logo"></a>  -->            
                     
            </div>
            <div id="navbar" class="navbar-collapse collapse">
           <div id=div>Here is our new visted<a href="retcompany.jsp" style="color:DarkBlue"> COMPANY </a>record and<span><a href="retplacement.jsp"  style="color:DarkBlue"> PLACEMENT</a></span> Record</a></div>
              <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
                <li class="active"><a href="index.jsp">Home</a></li>
                
                
                <li><a href="events-archive.jsp">Events</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>                
                
                
                <li><a href="contact.jsp">Contact</a></li>
                 <li><a href="studlogin.jsp">Login</a></li>
         
              </ul>           
            </div><!--/.nav-collapse -->
          </div>     
        </nav>  
      </div>
      <!-- END MENU -->    
    </header>
    <!--=========== END HEADER SECTION ================--> 

    <!--=========== BEGIN SLIDER SECTION ================-->
    <section id="slider">
      <div class="row">
        <div class="col-lg-12 col-md-12">
          <div class="slider_area">
            <!-- Start super slider -->
            <div id="slides">
              <ul class="slides-container">                          
                <li>
                  <img src="img/slider/2.jpg" alt="img">
                   <div class="slider_caption">
                    <h2 style="color:powderblue">MAULANA AZAD NATIONAL INSTITUTE OF TECHNOLOGY</h2>
                    <p>Regional Engineering College Bhopal, is an Institute of National Importance under the NIT Act in Bhopal, Madhya Pradesh, India..</p>
                    
                  </div>
                  </li>
                <!-- Start single slider-->
                <li>
                  <img src="img/slider/3.JPG" alt="img">
                   <div class="slider_caption slider_right_caption">
                  </div>
                </li>
                <!-- Start single slider-->
                <li>
                  <img src="img/slider/4.JPG" alt="img">
                   <div class="slider_caption">
                    <h2>Find out you in better way</h2>
                  </div>
                </li>
              </ul>
              <nav class="slides-navigation">
                <a href="#" class="next"></a>
                <a href="#" class="prev"></a>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!--=========== END SLIDER SECTION ================-->

    <!--=========== BEGIN ABOUT US SECTION ================-->
    <section id="AboutUs">
      <div class="container">
        <div class="row">
        <!-- Start about us area -->
        <div class="col-lg-10 col-md-10 col-sm-10">
          <div class="aboutus_area wow fadeInLeft">
            <h2 class="titile">About Us</h2>
            <p>The Institute is successfully meeting the objective of producing skilled Technocrats of the highest quality who are able to take up the challenges of the industries and Research organizations of the country. MANIT offers various undergraduate and post graduate courses and research programs. This section covers all the information related to academic rules and connectivity to MANIT Bhopal .Under the peaceful and friendly environment, MANIT producing technocrats who are resources to Nation and the world. Our bright students with excellent technical skills have always been contributed to the successes of various sections towards the technical group.</p>
            <h3 style="color:red">MANIT Campus</h3>
             <p>The total area of campus is 650 acres and protected by boundary wall and ring road. The entire campus consists of administrative and academic building, workshop, Library and community center, Residential area accommodation for students and staff and other general amenities such as post office, Shopping complex, a School for children, dispensary, an auditorium with the capacity of 1000 persons and sports complex with vast expand of open area. The campus is divided into three sections and facilities are given below:-</p>
             <h3 style="color:red">Academic Sector:</h3>
             <p><li>Total Area of academic block 265 hectares.</li><br>
               <li>Total building area of Offices 250 sq. m.</li><br>
               <li>A new computer center with 200 latest systems.</li><br>
               <li>A dispensary with two medical doctors and expert doctors visit weekly.</li><br>
               <li>An auditorium with seating capacity of 1000 persons.</li><br>
                <li>Institute Cafeteria, Amul parlor, nest cafe huts, fast food court.</li><br>
               <li>A gymnastic hall with modern gadgets.</li><br>
               <li>Football ground, Track and fields ground; cricket ground, basket ball grounds and volley ball court.</li><br>
               <li>Sports complex with indoor games facilities such as table tennis, badminton, and meditation </li><br>
             </p> 
              <h3 style="color:red">Hostel Section:</h3>
              <p><li>Built-in area of Hostels 14011 sq. m.</li><br>
                <li>7 Hostels for 2500 students (Boys)</li><br>
                <li>2 Hostels for 900 students (Girls)</li><br>
                <li>Each hostel has indoor and outdoor games facilities.</li><br>
             </p>
               <h3 style="color:red">Residential Area:</h3>
                <p><li>Built-in Area of Staff Quarters 25,116 sq. m.</li><br>
                   <li>Total 369 numbers of staff Quarters.</li><br>
                   <li>Children park</li><br>
                 <li>Officers club</li><br>
                 <li>Artificial lake Lotus Lake and boat club.</li><br>
                </p>
              <h3 style="color:red">Visitor Accommodation::</h3>
               <p><li> Faculty/officer quarter.</li><br>
                    <li>Bachelor flat</li><br>
                <li>Dormitory</li><br>
                <li>VIP Guest House</li><br>
                <li>Faculty Guest House  </li><br></li><br>
                 </p>
      </div>
        </div>
     
              </div>
              
    </section>
    <!--=========== END ABOUT US SECTION ================--> 

    <!--=========== BEGIN WHY US SECTION ================-->
    <section id="whyUs">
      <!-- Start why us top -->
      <div class="row">        
        <div class="col-lg-12 col-sm-12">
          <div class="whyus_top">
            <div class="container">
              <!-- Why us top titile -->
              <div class="row">
                <div class="col-lg-12 col-md-12"> 
                  <div class="title_area">
                    <h2 class="title_two">Why Us</h2>
                    <span></span> 
                  </div>
                </div>
              </div>
              <!-- End Why us top titile -->
              <!-- Start Why us top content  -->
              <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-3">
                  <div class="single_whyus_top wow fadeInUp">
                    <div class="whyus_icon">
                      <span class="fa fa-desktop"></span>
                    </div>
                    <h3>Technology</h3>
                    <p>The Institute is successfully meeting the objective of producing skilled Technocrats of the highest quality who are able to take up the challenges of the industries and Research organizations of the country.</p>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                  <div class="single_whyus_top wow fadeInUp">
                    <div class="whyus_icon">
                      <span class="fa fa-users"></span>
                    </div>
                    <h3>Best Tutor</h3>
                    <p>In our institution best tutor are present</p>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                  <div class="single_whyus_top wow fadeInUp">
                    <div class="whyus_icon">
                      <span class="fa fa-flask"></span>
                    </div>
                    <h3>Practical Training</h3>
                    <p>It gives us immense pleasure to extend to you a most cordial invitation to participate in the Campus Recruitment Programme of National Institute of Technology, Bhopal. With an increasing trust being placed on Institute-Industry interaction, it is my sincere belief that your esteemed organization and NIT Bhopal stand to gain immensely from this symbiotic relationship.</p>
                  </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-3">
                  <div class="single_whyus_top wow fadeInUp">
                    <div class="whyus_icon">
                      <span class="fa fa-support"></span>
                    </div>
                    <h3>Departments</h3>
                    <p>Architecture and planning,Engineering,science,Humanities,Management Studies</p>
                  </div>
                </div>
              </div>
              <!-- End Why us top content  -->
            </div>
          </div>
        </div>        
      </div>
      <!-- End why us top -->
    </section>
<!--=========== BEGIN OUR TUTORS SECTION ================-->
    <section id="ourTutors">
      <div class="container">
       <!-- Our courses titile -->
        <div class="row">
          <div class="col-lg-12 col-md-12"> 
            <div class="title_area">
              <h2 class="title_two">Our Tutors</h2>
              <span></span> 
            </div>
          </div>
        </div>
        <!-- End Our courses titile -->

        <!-- Start Our courses content -->
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="ourTutors_content">
              <!-- Start Tutors nav -->
              <ul class="tutors_nav">
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/AB.jpg" />                      
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Dr. Amit Bhagat</h3>
                      
                    </div>
                    
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/jkjain.jpg" />                      
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Dr. Jay Kumar Jain</h3>
                    
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/gstsir.jpg" />                      
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Dr. G.S Thakur</h3>
                     
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/rst.jpg" />                      
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Dr. R.S.T</h3>
                      
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/math1.jpg" />                      
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Dr.Madhvi Shakya</h3>
                    
                     
                  </div>
                </li>
                <li>
                  <div class="single_tutors">
                    <div class="tutors_thumb">
                      <img src="img/math.jpg" />                      
                    </div>
                    <div class="singTutors_content">
                      <h3 class="tutors_name">Dr. Namita Srivatva</h3>
              
                   
                  </div>
                </li>                                             
              </ul>
            </div>
          </div>
        </div>
        <!-- End Our courses content -->
      </div>
    </section>
    <!--=========== END OUR TUTORS SECTION ================-->
    
    
    <!--=========== BEGIN FOOTER SECTION ================-->
    <footer id="footer">
      <!-- Start footer top area -->
      <div class="footer_top">
        <div class="container">
          <div class="row">
            <div class="col-ld-3  col-md-3 col-sm-3">
              <div class="single_footer_widget">
                <h3>Contact Us</h3>
                <p>Address: Link Road Number 3, Near Kali Mata Mandir, Bhopal, Madhya Pradesh,&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspEmail:jangra743@gmail.com <br> 
                                     India 462003<br> 
                                    Telephone : +91 755 4051000, 4052000, 2670900<br>
                                    FAX : +91-755 2670562</p>
           


          </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End footer top area -->

      <!-- Start footer bottom area -->
      <div class="footer_bottom">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="footer_bootomLeft">
                <p>@ 2018 All Rights Reserved Terms of Use and Privacy Policy</p>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
              <div class="footer_bootomRight">
                <p>Designed by Soft.Eng Jangra and Harendra tyagi</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End footer bottom area -->
    </footer>
    <!--=========== END FOOTER SECTION ================--> 

  

    <!-- Javascript Files
    ================================================== -->

    <!-- initialize jQuery Library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Preloader js file -->
    <script src="js/queryloader2.min.js" type="text/javascript"></script>
    <!-- For smooth animatin  -->
    <script src="js/wow.min.js"></script>  
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- slick slider -->
    <script src="js/slick.min.js"></script>
    <!-- superslides slider -->
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.animate-enhanced.min.js"></script>
    <script src="js/jquery.superslides.min.js" type="text/javascript" charset="utf-8"></script>   
    <!-- for circle counter -->
    <script src='https://cdn.rawgit.com/pguso/jquery-plugin-circliful/master/js/jquery.circliful.min.js'></script>
    <!-- Gallery slider -->
    <script type="text/javascript" language="javascript" src="js/jquery.tosrus.min.all.js"></script>   
   
    <!-- Custom js-->
    <script src="js/custom.js"></script>
    <!--=============================================== 
    Template Design By Soft.Eng Jangra
    ====================================================-->


  </body>
</html>
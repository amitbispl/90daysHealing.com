<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <link href="assets/img/favicon.ico" rel="shortcut icon" type="image/x-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <!-- b  -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/owl.carousel.min.css">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
    <style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  #mainslider-mobile{display:none;}
  @media (max-width:767px){
  #mainslider-mobile{display:block}
  #mainslider{display:none}
  }
  </style>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript">
        $(function() {
            $("[id*=btnSend]").click(function() {
                var name = $.trim($("[id*=name]").val());
                var email = $.trim($("[id*=email]").val());
                var phone = $.trim($("[id*=phone]").val());
                var address = $.trim($("[id*=address]").val());
                $.ajax({
                    type: "POST",
                    url: "EmailSend.aspx/SendEmail",
                    data: "{ name: '" + name + "', email: '" + email + "', phone: '" + phone + "', address: '" + address + "' }",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function(r) {
                        alert(r.d);
                    },
                    error: function(r) {
                        alert(r.responseText);
                    },
                    failure: function(r) {
                        alert(r.responseText);
                    }
                });
                return false;
            });
        });
    </script>
<div id="mainslider" class="carousel slide" data-bs-ride="carousel">
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="assets/img/banner1.jpg" alt="" class="d-block">
    </div>
    <div class="carousel-item">
      <img src="assets/img/banner2.jpg" alt="" class="d-block">
    </div>  <div class="carousel-item">
      <img src="assets/img/banner3.jpg" alt="" class="d-block">
    </div><div class="carousel-item">
      <img src="assets/img/banner4.jpg" alt="" class="d-block">
    </div>
    <!-- <div class="carousel-item">
      <img src="ny.jpg" alt="" class="d-block">
    </div>-->
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#mainslider" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#mainslider" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div> 
<div id="mainslider-mobile" class="carousel slide" data-bs-ride="carousel">
  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="assets/img/banner1-m.jpg" alt="" class="d-block">
    </div>
    <div class="carousel-item">
      <img src="assets/img/banner2-m.jpg" alt="" class="d-block">
    </div>  <div class="carousel-item">
      <img src="assets/img/banner3-m.jpg" alt="" class="d-block">
    </div><div class="carousel-item">
      <img src="assets/img/banner4-m.jpg" alt="" class="d-block">
    </div>
    <!-- <div class="carousel-item">
      <img src="ny.jpg" alt="" class="d-block">
    </div>-->
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#mainslider-mobile" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#mainslider-mobile" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
  
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">
        <div class="section-title">
          <h2>Who We Are</h2>
        </div>
        <div class="row content">
          <div class="col-lg-12">
            <p>90 Days Healing  is a new age Ayurveda treatment concepts  that strives to bring the traditional, time-tested goodness of Ayurveda for cure of lifestyle diseases.90 Days Healing, as name says ,we are here to ensure you to  provide positive result with in the certain time limit.</p>

<p>90 Days Healing  launched phytomolecules & nanotechnology based pure natural Ayurveda products  ,that not only standardized treatment procedures, but also enhanced quality of treatment & care . Our parent company D'ultimate Life Sciences is a renowned & prestigious company engaged in the manufacturing of Ayurvedic & Herbal products from last 15 years based out in Bhilwara (Rajasthan) India.</p>

<p>90 Days Healing  products approved by various Government Authority's of India. Company having various certificates like GMP, FSSAI, AUSH MANTRALAYA, FDA, ISO 22000:2005 & products are 100% Natural Herbal products.</p>

<a href="about.html" class="btn-learn-more">Learn More</a>
<p class="pt-4 videoblock">
<iframe width="560" height="315" src="https://www.youtube.com/embed/9s0mWvEuIs8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
          </div>
        </div>
      </div>
    </section><!-- End About Section -->
 <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
		<h2>Our Treatment</h2>
        </div>
        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

           <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="hair-support-capsule.html"><img src="assets/img/1.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="wom-care.html"><img src="assets/img/2.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="cardio-care-capsule.html"><img src="assets/img/3.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-card">
            <a href="prosto-health.html"><img src="assets/img/4.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="keto-health.html"><img src="assets/img/5.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="boost-69.html"><img src="assets/img/6.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-card">
            <a href="kidney-health.html"><img src="assets/img/7.jpg" class="img-fluid" alt=""></a>
          </div>
          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="artho-care-capsule.html"><img src="assets/img/8.jpg" class="img-fluid" alt=""></a>
          </div>

         <!-- <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="product-detail.html"><img src="assets/img/9.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="product-detail.html"><img src="assets/img/10.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-card">
            <a href="product-detail.html"><img src="assets/img/11.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="product-detail.html"><img src="assets/img/12.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="product-detail.html"><img src="assets/img/13.jpg" class="img-fluid" alt=""></a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-card">
            <a href="product-detail.html"><img src="assets/img/14.jpg" class="img-fluid" alt=""></a>
          </div>-->

        </div>
		<div class="d-flex justify-content-center">
		<a href="ourtreatment.html" class="btn btn-lg btn-danger">Read More</a>
</div>
      </div>
    </section><!-- End Portfolio Section -->
	  <!-- ======= Why Us Section ======= -->
    <section class="container">
	<div class="row">
	
		<div class="col-md-12">
						<div class="featured-carousel owl-carousel">
							<div class="item">
								<div class="work-wrap d-md-flex">
									<div class="img order-md-last" style="background-image: url(assets/img/cardio-care-capsule-inner.jpg);"></div>
									<div class="text text-left text-lg-right p-4 px-xl-5 d-flex align-items-center">
										<div class="py-md-5">
										<h2 class="mb-4">90DAYS 
 <br> CARDIO HEALTH</h2>
																   <h5 class="h5">Benefits -</h5> 
                                                                    <p class="justify-content-end">A herbal formula for the heart related problems.<br>Helps in diluting the blood vessels and ease the flow.<br>
Also reduces cholesterols and remove extra fat.<br>
Manages the swollen arteries and provide flexibility.<br>
Controls blood pressure during panic situation. </p>
                                                                     <h5 class="h5">How to use  -</h5>
																	 <p class="justify-content-end">One Capsule in Morning & Evening Before Every Meal or As Directed By Physician.</p>
										</div>
									</div>
								</div>
							</div>
							
							<div class="item">
								<div class="work-wrap d-md-flex">
									<div class="img order-md-last" style="background-image: url(assets/img/artho-care-capsule-inner.jpg);"></div>
									<div class="text text-left text-lg-right p-4 px-xl-5 d-flex align-items-center">
										<div class="py-md-5">	<h2 class="mb-4">90DAYS   <br> JOINT HEALTH</h2>
											<h5 class="h5">Benefits -</h5> 
										  <p class="justify-content-end">Artho care is formulated with pure herbal formula.<br>
Incorporated with Nano Phyto Molecules technology.<br>
Treatment for almost all types of arthritis.<br>
Capsule Artho care is a unique blend of highly effective and rarely available herbs.<br>
It removes the cause and effect of arthritis as well as it repairs the damaged.</p>
										  <h5 class="h5">How to use  -</h5>
										  <p class="justify-content-end">One Capsule in Morning & Evening Before Every Meal or As Directed By Physician.</p>										
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="work-wrap d-md-flex">
									<div class="img order-md-last" style="background-image: url(assets/img/sugar-care-inner.jpg);"></div>
									<div class="text text-left text-lg-right p-4 px-xl-5 d-flex align-items-center">
										<div class="py-md-5">
											<h2 class="mb-4">90DAYS   <br> SUGAR HEALTH</h2>
										  <h5 class="h5">Benefits -</h5> 
										  <p class="justify-content-end">Sugar Care is made up with 100% herbal formula.<br>
Integrated with nanophyto molecules technology.<br>
Because it is a mixture of natural herbs, there are no side effects of this products.<br>
USP starts managing the sugar level within 48 hours to 7 days.<br>
Diabetes is long term disease, Sugar Care helps in handling various complications of this disease.</p>
										  <h5 class="h5">How to use  -</h5>
										  <p class="justify-content-end">One Capsule in Morning & Evening Before Every Meal or As Directed By Physician.</p>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="work-wrap d-md-flex">
									<div class="img order-md-last" style="background-image: url(assets/img/formula-one-inner.jpg);"></div>
									<div class="text text-left text-lg-right p-4 px-xl-5 d-flex align-items-center">
										<div class="py-md-5">
										<h2 class="mb-4">90DAYS   <br> SUPER FOOD
</h2>
																   <h5 class="h5">Benefits -</h5> 
                                                                    <p class="justify-content-end">Green Tea Contains Bioactive Compounds That Improve Health.<br>
Compounds in Green Tea Can Improve Brain Function and Make You Smarter.<br>
Green Tea Increases Fat Burning and Improves Physical Performance.<br>
Antioxidants in Green Tea May Lower Your Risk of Some Types of Cancer.<br>
Green Tea May Protect Your Brain in Old Age, Lowering Your Risk of Alzheimer's and Parkinson's<br>
Green Tea Can Kill Bacteria, Which Improves Dental Health and Lowers Your Risk of Infection.<br>
Green Tea May Lower Your Risk of Type 2 Diabetes.<br>
Green Tea May Reduce Your Risk of Cardiovascular Disease.<br>
Green Tea Can Help You Lose Weight and Lower Your Risk of Obesity.<br>
Green Tea May Help You Live Longer.</p>
																	
                                                                     <h5 class="h5">How to use  -</h5>
																	 <p class="justify-content-end">Prepare your tea 1 tablet into 70 ml hot Water twice in a day or As Directed By the Physician.</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
      
    </section>
  <main id="main">
    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
		 <h2>Our Certificate</h2>
        </div>

        <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide"> <div class="testimonial-wrap">
                <div class="testimonial-item">
              <img src="assets/img/img-1.jpg" class="testimonial-img" alt="">
              </div>
              </div>
              </div>
           <!-- End testimonial item -->

            <div class="swiper-slide"> <div class="testimonial-wrap">
                <div class="testimonial-item">
               <img src="assets/img/img-2.jpg" class="testimonial-img" alt="">
            </div></div></div><!-- End testimonial item -->

            <div class="swiper-slide"> <div class="testimonial-wrap">
                <div class="testimonial-item">
               <img src="assets/img/img-3.jpg" class="testimonial-img" alt="">
            </div></div></div><!-- End testimonial item -->

            <div class="swiper-slide"> <div class="testimonial-wrap">
                <div class="testimonial-item">
              <img src="assets/img/img-4.jpg" class="testimonial-img" alt="">
            </div></div></div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                    <img src="assets/img/img-5.jpg" class="testimonial-img" alt="">
                </div>
              </div>
            </div><!-- End testimonial item -->  <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                    <img src="assets/img/img-6.jpg" class="testimonial-img" alt="">
                </div>
              </div>
            </div><!-- End testimonial item --> <div class="swiper-slide">
              <div class="testimonial-wrap">
                <div class="testimonial-item">
                    <img src="assets/img/img-7.jpg" class="testimonial-img" alt="">
                </div>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

 <section id="testimonials1" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
		 <h2>Payment Option</h2>
        </div>
		<p><strong>Company Name :</strong> 90 DAYS HEALING<br>
<strong>Acc No:</strong> 921020047828540<br>
<strong>Bank:</strong>  Axis Bank<br>
<strong>Branch:</strong>  Noida Extension GNO UP<br>
<strong>ISFC Code:</strong>  UTIB0004496</p>
  </div>
    </section><!-- End Testimonials Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
 
<!-- Book an Appointment  Modal-->
 <div class="modal fade" id="themodal">
  <div class="modal-dialog">
    <div class="modal-content">
	<div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Book an Appointment</h5>
         <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="recipient-name" class="col-form-label">Full Name:</label>
            <input type="text" class="form-control" id="name">
          </div> 
		  <div class="form-group">
            <label for="recipient-name" class="col-form-label">Email:</label>
            <input type="text" class="form-control" id="email">
          </div>
		  <div class="form-group">
            <label for="recipient-name" class="col-form-label">Phone No.:</label>
            <input type="text" class="form-control" id="phone">
          </div>
          <div class="form-group">
            <label for="message-text" class="col-form-label">Address:</label>
            <textarea class="form-control" id="address"></textarea>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" id="btnSend">Send message</button>
      </div>
    </div>
  </div>
</div>
    <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
    <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
 <script src="assets/js/owl.carousel.min.js"></script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  <script src="assets/js/main-new.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>


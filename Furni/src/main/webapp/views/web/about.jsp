<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang chủ</title>
</head>
<body>
<!-- Start Hero Section -->
    <div class="hero">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-lg-5">
            <div class="intro-excerpt">
              <h1>About Us</h1>
              <p class="mb-4">
                Our diverse range of chairs spans across various, ensuring that
                there's a perfect match for every room in your home.
              </p>
              <p>
                <a href="<c:url value="/views/web/shop.jsp"/>" class="btn btn-secondary me-2">Shop Now</a
                ><a href="#explore" class="btn btn-white-outline">Explore</a>
              </p>
            </div>
          </div>
          <div class="col-lg-7">
            <div class="hero-img-wrap">
              <img src="<c:url value="/template/web/images/couch.png"/>" class="img-fluid" />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Hero Section -->

    <!-- Start Why Choose Us Section -->
    <div class="why-choose-section" id="explore">
      <div class="container">
        <div class="row justify-content-between align-items-center">
          <div class="col-lg-6">
            <h2 class="section-title">Why Choose Us</h2>
            <p>
              We are committed to the benefits of choosing us with the following
              four things:
            </p>

            <div class="row my-5">
              <div class="col-6 col-md-6">
                <div class="feature">
                  <div class="icon">
                    <img src="<c:url value="/template/web/images/truck.svg"/>" alt="Image" class="imf-fluid" />
                  </div>
                  <h3>Fast &amp; Free Shipping</h3>
                  <p>
                    With our fast shipping, you'll have your items in no time,
                    saving you from the wait.
                  </p>
                </div>
              </div>

              <div class="col-6 col-md-6">
                <div class="feature">
                  <div class="icon">
                    <img src="<c:url value="/template/web/images/bag.svg"/>" alt="Image" class="imf-fluid" />
                  </div>
                  <h3>Easy to Shop</h3>
                  <p>
                    Clear product categorization make it simple to find the
                    products you want.
                  </p>
                </div>
              </div>

              <div class="col-6 col-md-6">
                <div class="feature">
                  <div class="icon">
                    <img
                      src="<c:url value="/template/web/images/support.svg"/>"
                      alt="Image"
                      class="imf-fluid"
                    />
                  </div>
                  <h3>24/7 Support</h3>
                  <p>
                    Our 24/7 support is there to assist you, even during
                    holidays and weekends.
                  </p>
                </div>
              </div>

              <div class="col-6 col-md-6">
                <div class="feature">
                  <div class="icon">
                    <img
                      src="<c:url value="/template/web/images/return.svg"/>"
                      alt="Image"
                      class="imf-fluid"
                    />
                  </div>
                  <h3>Hassle Free Returns</h3>
                  <p>
                    Knowing that if a product doesn't meet your expectations,
                    you can easily return it.
                  </p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-5">
            <div class="img-wrap">
              <img
                src="<c:url value="/template/web/images/why-choose-us-img.jpg"/>"
                alt="Image"
                class="img-fluid"
              />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Why Choose Us Section -->

    <!-- Start Team Section -->
    <div class="untree_co-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-5 mx-auto text-center">
            <h2 class="section-title">Our Team</h2>
          </div>
        </div>

        <div class="row">
          <!-- Start Column 1 -->
          <div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
            <img src="<c:url value="/template/web/images/person_1.jpg"/>" class="img-fluid mb-5" />
            <h3 clas>
              <a href="#"><span class="">Lawson</span> Arnold</a>
            </h3>
            <span class="d-block position mb-4">CEO, Founder, Atty.</span>
            <p>
              Separated they live in. Separated they live in Bookmarksgrove
              right at the coast of the Semantics, a large language ocean.
            </p>
            <p class="mb-0">
              <a href="#" class="more dark"
                >Learn More <span class="icon-arrow_forward"></span
              ></a>
            </p>
          </div>
          <!-- End Column 1 -->

          <!-- Start Column 2 -->
          <div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
            <img src="<c:url value="/template/web/images/person_2.jpg"/>" class="img-fluid mb-5" />

            <h3 clas>
              <a href="#"><span class="">Jeremy</span> Walker</a>
            </h3>
            <span class="d-block position mb-4">CEO, Founder, Atty.</span>
            <p>
              Separated they live in. Separated they live in Bookmarksgrove
              right at the coast of the Semantics, a large language ocean.
            </p>
            <p class="mb-0">
              <a href="#" class="more dark"
                >Learn More <span class="icon-arrow_forward"></span
              ></a>
            </p>
          </div>
          <!-- End Column 2 -->

          <!-- Start Column 3 -->
          <div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
            <img src="<c:url value="/template/web/images/person_3.jpg"/>" class="img-fluid mb-5" />
            <h3 clas>
              <a href="#"><span class="">Patrik</span> White</a>
            </h3>
            <span class="d-block position mb-4">CEO, Founder, Atty.</span>
            <p>
              Separated they live in. Separated they live in Bookmarksgrove
              right at the coast of the Semantics, a large language ocean.
            </p>
            <p class="mb-0">
              <a href="#" class="more dark"
                >Learn More <span class="icon-arrow_forward"></span
              ></a>
            </p>
          </div>
          <!-- End Column 3 -->

          <!-- Start Column 4 -->
          <div class="col-12 col-md-6 col-lg-3 mb-5 mb-md-0">
            <img src="<c:url value="/template/web/images/person_4.jpg"/>" class="img-fluid mb-5" />

            <h3 clas>
              <a href="#"><span class="">Kathryn</span> Ryan</a>
            </h3>
            <span class="d-block position mb-4">CEO, Founder, Atty.</span>
            <p>
              Separated they live in. Separated they live in Bookmarksgrove
              right at the coast of the Semantics, a large language ocean.
            </p>
            <p class="mb-0">
              <a href="#" class="more dark"
                >Learn More <span class="icon-arrow_forward"></span
              ></a>
            </p>
          </div>
          <!-- End Column 4 -->
        </div>
      </div>
    </div>
    <!-- End Team Section -->

    <!-- Start Testimonial Slider -->
    <div class="testimonial-section before-footer-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 mx-auto text-center">
            <h2 class="section-title">Testimonials</h2>
          </div>
        </div>

        <div class="row justify-content-center">
          <div class="col-lg-12">
            <div class="testimonial-slider-wrap text-center">
              <div id="testimonial-nav">
                <span class="prev" data-controls="prev"
                  ><span class="fa fa-chevron-left"></span
                ></span>
                <span class="next" data-controls="next"
                  ><span class="fa fa-chevron-right"></span
                ></span>
              </div>

              <div class="testimonial-slider">
                <div class="item">
                  <div class="row justify-content-center">
                    <div class="col-lg-8 mx-auto">
                      <div class="testimonial-block text-center">
                        <blockquote class="mb-5">
                          <p>
                            &ldquo;I recently purchased the Ergonomic Chair, and
                            I couldn't be happier with my investment. This chair
                            has truly transformed my home office experience. The
                            ergonomic design is exceptional, providing me with
                            the perfect balance of comfort and support during
                            long work hours.&rdquo;
                          </p>
                        </blockquote>

                        <div class="author-info">
                          <div class="author-pic">
                            <img
                              src="<c:url value="/template/web/images/person-1.png"/>"
                              alt="Maria Jones"
                              class="img-fluid"
                            />
                          </div>
                          <h3 class="font-weight-bold">Maria Jones</h3>
                          <span class="position d-block mb-3"
                            >CEO, Co-Founder, XYZ Inc.</span
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END item -->

                <div class="item">
                  <div class="row justify-content-center">
                    <div class="col-lg-8 mx-auto">
                      <div class="testimonial-block text-center">
                        <blockquote class="mb-5">
                          <p>
                            &ldquo;Durability is another strong point. The chair
                            feels solidly built, and I can tell it's going to
                            last for years. It's an investment in both style and
                            functionality.&rdquo;
                          </p>
                        </blockquote>

                        <div class="author-info">
                          <div class="author-pic">
                            <img
                              src="<c:url value="/template/web/images/person-1.png"/>"
                              alt="Maria Jones"
                              class="img-fluid"
                            />
                          </div>
                          <h3 class="font-weight-bold">Maria Jones</h3>
                          <span class="position d-block mb-3"
                            >CEO, Co-Founder, XYZ Inc.</span
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END item -->

                <div class="item">
                  <div class="row justify-content-center">
                    <div class="col-lg-8 mx-auto">
                      <div class="testimonial-block text-center">
                        <blockquote class="mb-5">
                          <p>
                            &ldquo;The first thing that struck me was its
                            stunning aesthetic. The sleek, modern lines and
                            high-quality materials make it a real eye-catcher in
                            my home office. It not only complements my decor but
                            elevates it to a whole new level.&rdquo;
                          </p>
                        </blockquote>

                        <div class="author-info">
                          <div class="author-pic">
                            <img
                              src="<c:url value="/template/web/images/person-1.png"/>"
                              alt="Maria Jones"
                              class="img-fluid"
                            />
                          </div>
                          <h3 class="font-weight-bold">Maria Jones</h3>
                          <span class="position d-block mb-3"
                            >CEO, Co-Founder, XYZ Inc.</span
                          >
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- END item -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Testimonial Slider -->
    </body>
</html>
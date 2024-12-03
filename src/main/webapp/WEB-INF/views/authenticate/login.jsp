<!doctype html>
<html lang="en">

    <!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:02 GMT -->
    <%@include file="../include/header.jsp" %>
    <body class="green-theme">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script>
            // Check if the message variable and message type are set or not
            document.addEventListener("DOMContentLoaded", (event) => {
                var message = "${message}"; // Message content
                var messageType = "${messageType}"; // Message type, e.g., 'success' or 'error'

                if (message != "") {
                    swal({
                        title: messageType === "success" ? "Success!" : "Error!",
                        text: message,
                        icon: messageType === "success" ? "success" : "error",
                        button: "OK!",
                    });
                }
            });
        </script>
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <div id="preloader">
            <div class="preloader"><span></span><span></span></div>
        </div>

        <!-- ============================================================== -->
        <!-- Main wrapper - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper">

            <!-- ============================================================== -->
            <!-- Top header  -->
            <!-- ============================================================== -->
            <!-- Start Navigation -->
            <%@include file="../include/nav.jsp" %>
            <!-- End Navigation -->
            <div class="clearfix"></div>
            <!-- ============================================================== -->
            <!-- Top header  -->
            <!-- ============================================================== -->
            <c:if test="${not empty message}">
                <%
                    session.removeAttribute("message");
                    session.removeAttribute("messageType");
                %>
            </c:if>
            <!-- ============================ Page Title Start================================== -->
            <section class="bg-cover primary-bg-dark" style="background:url(../../webapp/assets/img/bg2.png)no-repeat;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <h2 class="ipt-title text-light">Create An Account</h2>
                            <span class="text-light opacity-75">Create an account or signin</span>
                        </div>
                    </div>
                </div>
            </section>
            <!-- ============================ Page Title End ================================== -->

            <!-- ============================ Login Form Start ================================== -->
            <section class="gray-simple">
                <div class="container">
                    <!-- row Start -->
                    <div class="row justify-content-center">
                        <!-- Single blog Grid -->
                        <div class="col-xl-6 col-lg-8 col-md-12">
                            <div class="vesh-detail-bloc">
                                <div class="vesh-detail-bloc-body pt-3">
                                    <ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist">
                                        <li class="nav-item">
                                            <button class="nav-link active" id="signin-tab" data-bs-toggle="pill"
                                                    data-bs-target="#signin" type="button" role="tab" aria-controls="signin"
                                                    aria-selected="true">Login Account
                                            </button>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="pills-tabContent">
                                        <div class="tab-pane fade show active" id="signin" role="tabpanel"
                                             aria-labelledby="signin-tab" tabindex="0">
                                            <div class="row gx-3 gy-4">
                                                <div class="modal-login-form">
                                                    <form action="${pageContext.request.contextPath}/login" method="post">
                                                        <div class="form-floating mb-4">
                                                            <input type="email" class="form-control" name="email"
                                                                   placeholder="name@example.com" required value="nguyenvana@example.com">
                                                            <label>Email</label>
                                                        </div>

                                                        <div class="form-floating mb-4">
                                                            <input type="password" class="form-control" name="password"
                                                                   placeholder="Password" required value="password123">
                                                            <label>Password</label>
                                                        </div>

                                                        <label class="form-label">Login as:</label>
                                                        <div class="d-flex justify-content-around align-items-center form-group mb-4">
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="userType" id="jobSeeker" value="jobSeeker" required>
                                                                <label class="form-check-label" for="jobSeeker">Job Seeker</label>
                                                            </div>
                                                            <div class="form-check">
                                                                <input class="form-check-input" type="radio" name="userType" id="employer" value="employer">
                                                                <label class="form-check-label" for="employer">Employer</label>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <button type="submit"
                                                                    class="btn btn-primary full-width font--bold btn-lg">Log In
                                                            </button>
                                                        </div>

                                                        <div class="modal-flex-item mb-3">
                                                            <div class="modal-flex-first">
                                                                <div class="form-check form-check-inline">
                                                                    <input class="form-check-input" type="checkbox"
                                                                           id="savepassword1" value="option1">
                                                                    <label class="form-check-label" for="savepassword1">Save
                                                                        Password</label>
                                                                </div>
                                                            </div>
                                                            <div class="modal-flex-last">
                                                                <a href="${pageContext.request.contextPath}/forgotpass">Forget Password?</a>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="social-login">
                                                    <ul>
                                                        <li><a href="JavaScript:Void(0);" class="btn connect-fb"><i
                                                                    class="fa-brands fa-facebook"></i>Facebook</a></li>
                                                        <li><a href="JavaScript:Void(0);" class="btn connect-google"><i
                                                                    class="fa-brands fa-google"></i>Google+</a></li>
                                                    </ul>
                                                </div>
                                                <div class="modal-footer">
                                                    <p>Don't have an account yet?<a
                                                            href="${pageContext.request.contextPath}/signup"
                                                            class="text-primary font--bold ms-1">Sign
                                                            Up</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- /row -->
                </div>
            </section>
            <!-- ============================ Login Form End ================================== -->

            <!-- ============================ Call To Action ================================== -->
            <section class="bg-cover primary-bg-dark"
                     style="background:url(../../webapp/assets/img/footer-bg-dark.png)no-repeat;">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-7 col-lg-10 col-md-12 col-sm-12">

                            <div class="call-action-wrap">
                                <div class="sec-heading center">
                                    <h2 class="lh-base mb-3 text-light">Find The Perfect Job<br>on Job Stock That is Superb For
                                        You</h2>
                                    <p class="fs-6 text-light">At vero eos et accusamus et iusto odio dignissimos ducimus qui
                                        blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas
                                        molestias</p>
                                </div>
                                <div class="call-action-buttons mt-3">
                                    <a href="JavaScript:Void(0);" class="btn btn-lg btn-dark fw-medium px-xl-5 px-lg-4 me-2">Upload
                                        resume</a>
                                    <a href="JavaScript:Void(0);"
                                       class="btn btn-lg btn-whites fw-medium px-xl-5 px-lg-4 text-primary">Join Our Team</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <!-- ============================ Call To Action End ================================== -->

            <!-- ============================ Footer Start ================================== -->
            <%@include file="../include/footer.jsp" %>
            <!-- ============================ Footer End ================================== -->

            <!-- Log In Modal -->
            <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="loginmodal" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered login-pop-form" role="document">
                    <div class="modal-content" id="loginmodal">
                        <span class="mod-close" data-bs-dismiss="modal" aria-hidden="true"><i class="fas fa-close"></i></span>
                        <div class="modal-header">
                            <div class="mdl-thumb"><img src="../../webapp/assets/img/ico.png" class="img-fluid" width="70"
                                                        alt=""></div>
                            <div class="mdl-title"><h4 class="modal-header-title">Hello, Again</h4></div>
                        </div>
                        <div class="modal-body">
                            <div class="modal-login-form">
                                <form>

                                    <div class="form-floating mb-4">
                                        <input type="email" class="form-control" placeholder="name@example.com">
                                        <label>User Name</label>
                                    </div>

                                    <div class="form-floating mb-4">
                                        <input type="password" class="form-control" placeholder="Password">
                                        <label>Password</label>
                                    </div>

                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary full-width font--bold btn-lg">Log In
                                        </button>
                                    </div>

                                    <div class="modal-flex-item mb-3">
                                        <div class="modal-flex-first">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="savepassword"
                                                       value="option1">
                                                <label class="form-check-label" for="savepassword">Save Password</label>
                                            </div>
                                        </div>
                                        <div class="modal-flex-last">
                                            <a href="${pageContext.request.contextPath}/forgotpass">Forget Password?</a>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="social-login">
                                <ul>
                                    <li><a href="JavaScript:Void(0);" class="btn connect-fb"><i
                                                class="fa-brands fa-facebook"></i>Facebook</a></li>
                                    <li><a href="JavaScript:Void(0);" class="btn connect-google"><i
                                                class="fa-brands fa-google"></i>Google+</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <p>Don't have an account yet?<a href="signup.html" class="text-primary font--bold ms-1">Sign Up</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Modal -->

            <!-- Filter Modal -->
            <div class="modal fade" id="filter" tabindex="-1" role="dialog" aria-labelledby="filtermodal" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered filter-popup" role="document">
                    <div class="modal-content" id="filtermodal">
                        <span class="mod-close" data-bs-dismiss="modal" aria-hidden="true"><i class="fas fa-close"></i></span>
                        <div class="modal-header">
                            <h4 class="modal-header-sub-title">Start Your Filter</h4>
                        </div>
                        <div class="modal-body p-0">
                            <div class="filter-content">
                                <div class="full-tabs-group">
                                    <div class="single-tabs-group">
                                        <div class="single-tabs-group-header"><h5>Job Match Score</h5></div>

                                        <div class="single-tabs-group-content">
                                            <div class="d-flex flex-wrap">
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="msix">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="msix">6.0</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="msixfive">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="msixfive">6.5</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="mseven">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="mseven">7.0</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="msevenfive">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="msevenfive">7.5</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="meight">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="meight">8.0</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="meightfive">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="meightfive">8.5</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="mnine">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="mnine">9.0</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="mninefive">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="mninefive">9.5</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="mten">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="mten">10</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-tabs-group">
                                        <div class="single-tabs-group-header"><h5>Job Value Score</h5></div>

                                        <div class="single-tabs-group-content">
                                            <div class="d-flex flex-wrap">
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="vsix">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="vsix">6.0</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="vsixfive">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="vsixfive">6.5</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="vseven">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="vseven">7.0</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="vsevenfive">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="vsevenfive">7.5</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="veight">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="veight">8.0</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="veightfive">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="veightfive">8.5</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="vnine">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="vnine">9.0</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="vninefive">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="vninefive">9.5</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="vten">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="vten">10</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-tabs-group">
                                        <div class="single-tabs-group-header"><h5>Place Of Work</h5></div>

                                        <div class="single-tabs-group-content">
                                            <div class="d-flex flex-wrap">
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="anywhere" checked>
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="anywhere">Anywhere</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="onsite">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="onsite">On Site</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="remote">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="remote">Fully Remote</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-tabs-group">
                                        <div class="single-tabs-group-header"><h5>Type Of Contract</h5></div>

                                        <div class="single-tabs-group-content">
                                            <div class="d-flex flex-wrap">
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="employee1">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="employee1">Employee</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="frelancers1">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="frelancers1">Freelancer</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="contractor1">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="contractor1">Contractor</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="internship1">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="internship1">Internship</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-tabs-group">
                                        <div class="single-tabs-group-header"><h5>Type Of Employment</h5></div>

                                        <div class="single-tabs-group-content">
                                            <div class="d-flex flex-wrap">
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="fulltime">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="fulltime">Full Time</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="parttime">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="parttime">Part Time</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="freelance2" checked>
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="freelance2">Freelance</label>
                                                </div>
                                                <div class="sing-btn-groups">
                                                    <input type="checkbox" class="btn-check" id="internship2">
                                                    <label class="btn btn-md btn-outline-primary font--bold rounded-5"
                                                           for="internship2">Internship</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-tabs-group">
                                        <div class="single-tabs-group-header"><h5>Radius In Miles</h5></div>

                                        <div class="single-tabs-group-content">
                                            <div class="rg-slider">
                                                <input type="text" class="js-range-slider" name="my_range" value="">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-tabs-group">
                                        <div class="single-tabs-group-header"><h5>Explore Top Categories</h5></div>

                                        <div class="single-tabs-group-content">
                                            <ul class="row p-0 m-0">
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-1" class="form-check-input" name="s-1" type="checkbox">
                                                        <label for="s-1" class="form-check-label">IT Computers</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-2" class="form-check-input" name="s-2" type="checkbox">
                                                        <label for="s-2" class="form-check-label">Web Design</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-3" class="form-check-input" name="s-3" type="checkbox">
                                                        <label for="s-3" class="form-check-label">Web development</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-4" class="form-check-input" name="s-4" type="checkbox">
                                                        <label for="s-4" class="form-check-label">SEO Services</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-5" class="form-check-input" name="s-5" type="checkbox">
                                                        <label for="s-5" class="form-check-label">Financial Service</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-6" class="form-check-input" name="s-6" type="checkbox">
                                                        <label for="s-6" class="form-check-label">Art, Design, Media</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-7" class="form-check-input" name="s-7" type="checkbox">
                                                        <label for="s-7" class="form-check-label">Coach & Education</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-8" class="form-check-input" name="s-8" type="checkbox">
                                                        <label for="s-8" class="form-check-label">Apps Developements</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-9" class="form-check-input" name="s-9" type="checkbox">
                                                        <label for="s-9" class="form-check-label">IOS Development</label>
                                                    </div>
                                                </li>
                                                <li class="col-lg-6 col-md-6 p-0">
                                                    <div class="form-check form-check-inline">
                                                        <input id="s-10" class="form-check-input" name="s-10" type="checkbox">
                                                        <label for="s-10" class="form-check-label">Android Development</label>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="single-tabs-group">
                                        <div class="single-tabs-group-header"><h5>Keywords</h5></div>

                                        <div class="single-tabs-group-content">
                                            <div class="form-group">
                                                <input type="text" class="form-control"
                                                       placeholder="Design, Java, Python, WordPress etc...">
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div class="filt-buttons-updates">
                                <button type="button" class="btn btn-dark">Clear Filter</button>
                                <button type="button" class="btn btn-primary">Search</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Modal -->


            <a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>

        </div>
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->

        <!-- Color Switcher -->
        <div class="style-switcher">
            <div class="css-trigger shadow"><a href="#"><i class="fa-solid fa-paintbrush"></i></a></div>
            <div>
                <ul id="themecolors" class="m-t-20">
                    <li><a href="javascript:void(0)" data-skin="green-theme" class="green-theme">1</a></li>
                    <li><a href="javascript:void(0)" data-skin="red-theme" class="red-theme">2</a></li>
                    <li><a href="javascript:void(0)" data-skin="blue-theme" class="blue-theme">3</a></li>
                    <li><a href="javascript:void(0)" data-skin="yellow-theme" class="yellow-theme">4</a></li>
                    <li><a href="javascript:void(0)" data-skin="purple-theme" class="purple-theme">5</a></li>
                    <li><a href="javascript:void(0)" data-skin="orange-theme" class="orange-theme">6</a></li>
                    <li><a href="javascript:void(0)" data-skin="brown-theme" class="brown-theme">7</a></li>
                    <li><a href="javascript:void(0)" data-skin="cadmium-theme" class="cadmium-theme">8</a></li>
                </ul>
            </div>
        </div>

        <!-- ============================================================== -->
        <!-- All Jquery -->
        <!-- ============================================================== -->
        <%@include file="../include/jquery_footer.jsp" %>
        <!-- ============================================================== -->
        <!-- This page plugins -->
        <!-- ============================================================== -->

    </body>

    <!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:02 GMT -->
</html>
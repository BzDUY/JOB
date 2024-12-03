<!doctype html>
<html lang="en">

    <!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/job-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:02 GMT -->
    <%@include file="../include/header.jsp" %>
    <body class="green-theme">

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

            <%@include file="../include/nav.jsp" %>
            <div class="clearfix"></div>
            <!-- ============================================================== -->
            <!-- Top header  -->
            <!-- ============================================================== -->

            <!-- ============================ Banner Top Start================================== -->
            <section class="bg-cover bg-dark position-relative py-4">
                <div class="position-absolute end-0 top-0 bottom-0 d-lg-block d-none"><img src="../../assets/img/banner-1.jpg"
                                                                                           class="img-fluid rounded-start-pill h-100"
                                                                                           alt=""></div>
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-9 col-md-12">
                            <div class="bread-wraps breadcrumbs light">

                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                        <li class="breadcrumb-item"><a href="grid-style-1.html">Career</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Sr. Front-end Designer</li>
                                    </ol>
                                </nav>
                            </div>

                            <div class="jbs-head-bodys-top my-5">
                                <div class="jbs-roots-y1 flex-column justify-content-start align-items-start">
                                    <div class="jbs-roots-y1-last">
                                        <div class="jbs-urt mb-2"><span class="label text-light primary-2-bg">${job.workType}</span>
                                        </div>
                                        <div class="jbs-title-iop mb-1"><h2 class="m-0 fs-2 text-light">${job.jobTitle}</h2></div>
                                        <div class="jbs-locat-oiu text-sm-muted text-light d-flex align-items-center">
                                            <span><i class="fa-solid fa-location-dot opacity-75 me-1"></i>${job.location}</span>
                                            <div class="jbs-kioyer-groups ms-3">
                                                <span class="fa-solid fa-star active"></span>
                                                <span class="fa-solid fa-star active"></span>
                                                <span class="fa-solid fa-star active"></span>
                                                <span class="fa-solid fa-star active"></span>
                                                <span class="fa-solid fa-star"></span>
                                                <span class="aal-reveis text-light opacity-75">4.6</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="jbs-roots-y6 py-3">
                                        <p class="text-light">${job.jobDescription}.</p>
                                    </div>
                                    <div class="jbs-roots-y6 py-3">
                                        <button class="btn btn-primary fw-medium px-lg-5 px-4 me-3" type="button"
                                                data-bs-toggle="modal" data-bs-target="#applyjob">Apply Job
                                        </button>
                                        <c:choose>
                                            <c:when test="${isJobSaved}">
                                                <form action="/job/disSave-job/${job.id}" method="post" style="display: inline-block;">
                                                <button class="btn btn-secondary fw-medium px-lg-5 px-4" type="submit">
                                                    Saved
                                                </button>
                                            </c:when>
                                            <c:otherwise>
                                                <form action="/job/save-job/${job.id}" method="post" style="display: inline-block;">
                                                    <button class="btn btn-whites fw-medium px-lg-5 px-4" type="submit">
                                                        Save job
                                                    </button>
                                                </form>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div>

                            <div class="explot-info-details d-inline-flex flex-wrap">
                                <div class="single-explot d-flex align-items-center me-md-5 me-3 my-2">
                                    <div class="single-explot-first">
                                        <i class="fa-solid fa-business-time text-primary fs-1"></i>
                                    </div>
                                    <div class="single-explot-last ps-2">
                                        <span class="text-light opacity-75">Department</span>
                                        <p class="text-light fw-bold fs-6 m-0">${job.jobCategory}</p>
                                    </div>
                                </div>
                                <div class="single-explot d-flex align-items-center me-md-5 me-3 my-2">
                                    <div class="single-explot-first">
                                        <i class="fa-solid fa-location-dot text-primary fs-1"></i>
                                    </div>
                                    <div class="single-explot-last ps-2">
                                        <span class="text-light opacity-75">Location</span>
                                        <p class="text-light fw-bold fs-6 m-0">${job.location}</p>
                                    </div>
                                </div>
                                <div class="single-explot d-flex align-items-center">
                                    <div class="single-explot-first">
                                        <i class="fa-solid fa-sack-dollar text-primary fs-1"></i>
                                    </div>
                                    <div class="single-explot-last ps-2">
                                        <span class="text-light opacity-75">Sallary</span>
                                        <p class="text-light fw-bold fs-6 m-0">${job.salary} VND</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <!-- ============================ Banner Top End ================================== -->

            <!-- ================================  Job Detail ========================== -->
            <section class="gray-simple">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">

                            <div class="jbs-blocs style_03 b-0 mb-md-4 mb-sm-4">
                                <div class="jbs-blocs-body px-4 py-4">
                                    <div class="jbs-content mb-4">
                                        <h5>Job Description</h5>
                                        <p>Themezhub Web provides equal employment opportunities to all qualified individuals
                                            without regard to race, color, religion, sex, gender identity, sexual orientation,
                                            pregnancy, age, national origin, physical or mental disability, military or veteran
                                            status, genetic information, or any other protected classification. Equal employment
                                            opportunity includes, but is not limited to, hiring, training, promotion, demotion,
                                            transfer, leaves of absence, and termination. Thynk Web takes allegations of
                                            discrimination, harassment, and retaliation seriously, and will promptly investigate
                                            when such behavior is reported.</p>
                                        <p>Our company is seeking to hire a skilled Web Developer to help with the development
                                            of our current projects. Your duties will primarily revolve around building software
                                            by writing code, as well as modifying software to fix errors, adapt it to new
                                            hardware, improve its performance, or upgrade interfaces. You will also be involved
                                            in directing system testing and validation procedures, and also working with
                                            customers or departments on technical issues including software system design and
                                            maintenance.</p>
                                        <p class="m-0">We are looking for a Senior Web Developer to build and maintain
                                            functional web pages and applications. Senior Web Developer will be leading junior
                                            developers, refining website specifications, and resolving technical issues. He/She
                                            should have extensive experience building web pages from scratch and in-depth
                                            knowledge of at least one of the following programming languages: Javascript, Ruby,
                                            or PHP. He/She will ensure our web pages are up and running and cover both internal
                                            and customer needs.</p>
                                    </div>
                                    <div class="jbs-content-body mb-4">
                                        <h5 class="mb-3">Job Requirements</h5>
                                        <div class="jbs-content mb-3">
                                            <h6>Requirements:</h6>
                                            <ul class="simple-list">
                                                <li>Candidate must have a Bachelors or Masters degree in Computer. (B.tech, Bsc
                                                    or BCA/MCA)
                                                </li>
                                                <li>Candidate must have a good working knowledge of Javascript and Jquery.</li>
                                                <li>Good knowledge of HTML and CSS is required.</li>
                                                <li>Experience in Word press is an advantage</li>
                                                <li>Jamshedpur, Jharkhand: Reliably commute or planning to relocate before
                                                    starting work (Required)
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="jbs-content mb-4">
                                            <h6>Responsibilities:</h6>
                                            <ul class="simple-list">
                                                <li>Write clean, maintainable and efficient code.</li>
                                                <li>Design robust, scalable and secure features.</li>
                                                <li>Collaborate with team members to develop and ship web applications within
                                                    tight timeframes.
                                                </li>
                                                <li>Work on bug fixing, identifying performance issues and improving application
                                                    performance
                                                </li>
                                                <li>Write unit and functional testcases.</li>
                                                <li>Continuously discover, evaluate, and implement new technologies to maximise
                                                    development efficiency. Handling complex technical iss
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="jbs-content">
                                            <h6>Qualifications and Skills</h6>
                                            <ul class="colored-list">
                                                <li>${job.skillsRequired}</li>
                                                <li>${job.experienceRequired}</li>
                                                <li>${job.educationRequired}</li>
                                                <li>${job.languagesRequired}</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="jbs-blox-footer">
                                    <div class="blox-first-footer">
                                        <div class="ftr-share-block">
                                            <ul>
                                                <li><strong>Share This Job:</strong></li>
                                                <li><a href="JavaScript:Void(0);"><i class="fa-brands fa-facebook"></i></a></li>
                                                <li><a href="JavaScript:Void(0);"><i class="fa-brands fa-linkedin"></i></a></li>
                                                <li><a href="JavaScript:Void(0);"><i class="fa-brands fa-google-plus"></i></a>
                                                </li>
                                                <li><a href="JavaScript:Void(0);"><i class="fa-brands fa-twitter"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <%--Start Right Nav Ready to Apply --%>
                        <div class="col-lg-4 col-md-12">
                            <div class="detail-side-block bg-white mb-4">
                                <div class="detail-side-heads mb-2">
                                    <h3>Ready To Apply?</h3>
                                    <p>Complete the eligibities checklist now and get started with your online application</p>
                                </div>


                                <%--Start From Apply --%>

                                <div class="detail-side-middle">
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" placeholder="">
                                        <label>Name:</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input type="text" class="form-control" placeholder="">
                                        <label>Email:</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="upload-btn-wrapper full-width">
                                            <button class="btn full-width">Upload Resume</button>
                                            <input type="file" name="myfile">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="elsoci"><label>Are you authorised to work in India?</label></div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="workindia" id="wyes"
                                                   value="option1">
                                            <label class="form-check-label" for="wyes">Yes</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="workindia" id="wno"
                                                   value="option1">
                                            <label class="form-check-label" for="wno">No</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="elsoci"><label>Do you have master degree?</label></div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="degree" id="dyed"
                                                   value="option1">
                                            <label class="form-check-label" for="dyed">Yes</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="degree" id="dno" value="option1">
                                            <label class="form-check-label" for="dno">No</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="checkbox" id="jobalert" value="option1">
                                            <label class="form-check-label" for="jobalert">Create Job Alert</label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <button type="button" class="btn btn-primary full-width fw-medium font-sm">Submit
                                            Application
                                        </button>
                                    </div>
                                </div>
                                <%--End From Apply --%>

                            </div>


                            <%--            Start Information of Company --%>
                            <div class="side-jbs-info-blox bg-white mb-4">
                                <div class="side-jbs-info-header">
                                    <div class="side-jbs-info-thumbs">
                                        <figure><img src="../../assets/img/l-12.png" class="img-fluid" alt=""></figure>
                                    </div>
                                    <div class="side-jbs-info-captionyo ps-3">
                                        <div class="sld-info-title">
                                            <h5 class="rtls-title mb-1">Google Inc.</h5>
                                            <div class="jbs-locat-oiu text-sm-muted">
                                                <span class="me-1"><i class="fa-solid fa-location-dot me-1"></i>California, USA</span>.<span
                                                    class="ms-1">Software & Consultancy</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="side-jbs-info-middle">
                                    <div class="side-full-info-groups">
                                        <div class="single-side-info">
                                            <span class="text-sm-muted sld-subtitle">Company Founder:</span>
                                            <h6 class="sld-title">Mr. Daniel Mark</h6>
                                        </div>
                                        <div class="single-side-info">
                                            <span class="text-sm-muted sld-subtitle">Industry:</span>
                                            <h6 class="sld-title">Technology</h6>
                                        </div>
                                        <div class="single-side-info">
                                            <span class="text-sm-muted sld-subtitle">Founded:</span>
                                            <h6 class="sld-title">1997</h6>
                                        </div>
                                        <div class="single-side-info">
                                            <span class="text-sm-muted sld-subtitle">Head Office:</span>
                                            <h6 class="sld-title">London, UK</h6>
                                        </div>
                                        <div class="single-side-info">
                                            <span class="text-sm-muted sld-subtitle">Revenue</span>
                                            <h6 class="sld-title">$70B+</h6>
                                        </div>
                                        <div class="single-side-info">
                                            <span class="text-sm-muted sld-subtitle">Company Size:</span>
                                            <h6 class="sld-title">20,000+ Emp.</h6>
                                        </div>
                                        <div class="single-side-info">
                                            <span class="text-sm-muted sld-subtitle">Min Exp.</span>
                                            <h6 class="sld-title">02 Years</h6>
                                        </div>
                                        <div class="single-side-info">
                                            <span class="text-sm-muted sld-subtitle">Openings</span>
                                            <h6 class="sld-title">06 Openings</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--            End Information of Company --%>

                            <%--   Start   Job Tuong Tu --%>

                            <div class="side-rtl-jbs-block">
                                <div class="side-rtl-jbs-head">
                                    <h5 class="side-jbs-titles">Related Jobs</h5>
                                </div>
                                <div class="side-rtl-jbs-body">
                                    <div class="side-rtl-jbs-groups">

                                        <div class="single-side-rtl-jbs">
                                            <div class="single-fliox">
                                                <div class="single-rtl-jbs-thumb">
                                                    <a href="job-detail.html">
                                                        <figure><img src="../../assets/img/l-1.png" class="img-fluid" alt="">
                                                        </figure>
                                                    </a>
                                                </div>
                                                <div class="single-rtl-jbs-caption">
                                                    <div class="hjs-rtls-titles">
                                                        <div class="jbs-types mb-1"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <h5 class="rtls-title"><a href="joob-detail.html">Sr. Front-end
                                                                Designer</a></h5>
                                                        <div class="jbs-locat-oiu text-sm-muted">
                                                            <span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>California, USA</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-rtl-jbs-hot">
                                                <div class="single-tag-rtls"><span
                                                        class="label text-warning bg-light-warning"><i
                                                            class="fa-brands fa-hotjar me-1"></i>New</span></div>
                                                <div class="single-tag-rtls"><span
                                                        class="label text-success bg-light-success"><i
                                                            class="fa-solid fa-star me-1"></i>Featured</span></div>
                                            </div>
                                        </div>

                                        <div class="single-side-rtl-jbs">
                                            <div class="single-fliox">
                                                <div class="single-rtl-jbs-thumb">
                                                    <a href="job-detail.html">
                                                        <figure><img src="../..-INF/assets/img/l-2.png" class="img-fluid"
                                                                     alt=""></figure>
                                                    </a>
                                                </div>
                                                <div class="single-rtl-jbs-caption">
                                                    <div class="hjs-rtls-titles">
                                                        <div class="jbs-types mb-1"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <h5 class="rtls-title"><a href="joob-detail.html">Jr. PHP Developer</a>
                                                        </h5>
                                                        <div class="jbs-locat-oiu text-sm-muted">
                                                            <span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-rtl-jbs-hot">
                                                <div class="single-tag-rtls"><span
                                                        class="label text-success bg-light-success"><i
                                                            class="fa-solid fa-star me-1"></i>Featured</span></div>
                                            </div>
                                        </div>

                                        <div class="single-side-rtl-jbs">
                                            <div class="single-fliox">
                                                <div class="single-rtl-jbs-thumb">
                                                    <a href="job-detail.html">
                                                        <figure><img src="../..-INF/assets/img/l-3.png" class="img-fluid"
                                                                     alt=""></figure>
                                                    </a>
                                                </div>
                                                <div class="single-rtl-jbs-caption">
                                                    <div class="hjs-rtls-titles">
                                                        <div class="jbs-types mb-1"><span
                                                                class="label text-danger bg-light-danger">Internship</span>
                                                        </div>
                                                        <h5 class="rtls-title"><a href="joob-detail.html">Project Manager For
                                                                PHP</a></h5>
                                                        <div class="jbs-locat-oiu text-sm-muted">
                                                            <span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Liverpool, UK</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-rtl-jbs-hot">
                                                <div class="single-tag-rtls"><span
                                                        class="label text-warning bg-light-warning"><i
                                                            class="fa-brands fa-hotjar me-1"></i>New</span></div>
                                                <div class="single-tag-rtls"><span
                                                        class="label text-success bg-light-success"><i
                                                            class="fa-solid fa-star me-1"></i>Featured</span></div>
                                            </div>
                                        </div>

                                        <div class="single-side-rtl-jbs">
                                            <div class="single-fliox">
                                                <div class="single-rtl-jbs-thumb">
                                                    <a href="job-detail.html">
                                                        <figure><img src="../..-INF/assets/img/l-5.png" class="img-fluid"
                                                                     alt=""></figure>
                                                    </a>
                                                </div>
                                                <div class="single-rtl-jbs-caption">
                                                    <div class="hjs-rtls-titles">
                                                        <div class="jbs-types mb-1"><span
                                                                class="label text-warning bg-light-warning">Full Time</span>
                                                        </div>
                                                        <h5 class="rtls-title"><a href="joob-detail.html">Sr. Magento Developer
                                                                2.0</a></h5>
                                                        <div class="jbs-locat-oiu text-sm-muted">
                                                            <span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>California, USA</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-rtl-jbs-hot">
                                                <div class="single-tag-rtls"><span
                                                        class="label text-success bg-light-success"><i
                                                            class="fa-solid fa-star me-1"></i>Featured</span></div>
                                            </div>
                                        </div>

                                        <div class="single-side-rtl-jbs">
                                            <div class="single-fliox">
                                                <div class="single-rtl-jbs-thumb">
                                                    <a href="job-detail.html">
                                                        <figure><img src="../..-INF/assets/img/l-6.png" class="img-fluid"
                                                                     alt=""></figure>
                                                    </a>
                                                </div>
                                                <div class="single-rtl-jbs-caption">
                                                    <div class="hjs-rtls-titles">
                                                        <div class="jbs-types mb-1"><span
                                                                class="label text-danger bg-light-danger">Internship</span>
                                                        </div>
                                                        <h5 class="rtls-title"><a href="joob-detail.html">Shopify Developer
                                                                Fresher</a></h5>
                                                        <div class="jbs-locat-oiu text-sm-muted">
                                                            <span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>New York, USA</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="single-rtl-jbs-hot">
                                                <div class="single-tag-rtls"><span
                                                        class="label text-warning bg-light-warning"><i
                                                            class="fa-brands fa-hotjar me-1"></i>New</span></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <%--   End Job Tuong Tu --%>

                        </div>
                    </div>
                </div>
            </section>
            <!-- =============================== Job Detail ================================== -->



            <!-- ============================ Footer Start ================================== -->
            <%@include file="../modal/footer-job.jsp"%>
            <!-- ============================ Footer End ================================== -->

            <!-- Log In Modal -->
            <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="loginmodal" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered login-pop-form" role="document">
                    <div class="modal-content" id="loginmodal">
                        <span class="mod-close" data-bs-dismiss="modal" aria-hidden="true"><i class="fas fa-close"></i></span>
                        <div class="modal-header">
                            <div class="mdl-thumb"><img src="../..-INF/assets/img/ico.png" class="img-fluid" width="70"
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
                                            <a href="JavaScript:Void(0);">Forget Password?</a>
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

            <!-- Apply Job Modal -->
            <div class="modal fade" id="applyjob" tabindex="-1" role="dialog" aria-labelledby="applyjobs" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered applyjob-pop-form" role="document">
                    <div class="modal-content" id="applyjobs">
                        <span class="mod-close" data-bs-dismiss="modal" aria-hidden="true"><i class="fas fa-close"></i></span>
                        <div class="modal-body">
                            <div class="detail-side-heads mb-2 mt-4">
                                <h3>Ready To Apply?</h3>
                                <p>Complete the eligibities checklist now and get started with your online application</p>
                            </div>
                            <div class="detail-side-middle">
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" placeholder="">
                                    <label>Name:</label>
                                </div>
                                <div class="form-floating mb-3">
                                    <input type="text" class="form-control" placeholder="">
                                    <label>Email:</label>
                                </div>
                                <div class="form-group">
                                    <div class="upload-btn-wrapper full-width">
                                        <button class="btn full-width">Upload Resume</button>
                                        <input type="file" name="myfile">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="elsoci"><label>Are you authorised to work in India?</label></div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="workindia" id="wyes" value="option1">
                                        <label class="form-check-label" for="wyes">Yes</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="workindia" id="wno" value="option1">
                                        <label class="form-check-label" for="wno">No</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="elsoci"><label>Do you have master degree?</label></div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="degree" id="dyed" value="option1">
                                        <label class="form-check-label" for="dyed">Yes</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="degree" id="dno" value="option1">
                                        <label class="form-check-label" for="dno">No</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="jobalert" value="option1">
                                        <label class="form-check-label" for="jobalert">Create Job Alert</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <button type="button" class="btn btn-primary full-width fw-medium font-sm">Submit
                                        Application
                                    </button>
                                </div>
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





            <a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>


        </div>
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->

        <!-- Color Switcher -->
        <%@include file="../include/color_switch.jsp"%>

        <!-- ============================================================== -->
        <!-- All Jquery -->
        <!-- ============================================================== -->
        <%@include file="../include/jquery_footer.jsp" %>
        <!-- ============================================================== -->
        <!-- This page plugins -->
        <!-- ============================================================== -->

    </body>

    <!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/job-detail.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:02 GMT -->
</html>
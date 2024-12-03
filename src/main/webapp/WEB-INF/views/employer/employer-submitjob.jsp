<!doctype html>
<html lang="en">

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/employer-submit-job.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:13 GMT -->
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

    <!-- ======================= dashboard Detail ======================== -->
    <div class="dashboard-wrap bg-light">
        <a class="mobNavigation" data-bs-toggle="collapse" href="#MobNav" role="button" aria-expanded="false"
           aria-controls="MobNav">
            <i class="fas fa-bars mr-2"></i>Dashboard Navigation
        </a>
        <%@include file="dashboard-nav.jsp" %>

        <div class="dashboard-content">
            <div class="dashboard-tlbar d-block mb-4">
                <div class="row">
                    <div class="colxl-12 col-lg-12 col-md-12">
                        <h1 class="mb-1 fs-3 fw-medium">Post Jobs</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Employer</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">Post Jobs</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="dashboard-widg-bar d-block">

                <!-- Card Row -->
                <div class="card">
                    <div class="card-header">
                        <h4>Basic Detail</h4>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row">

                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="dash-prf-start justify-content-start align-items-start mb-2">
                                        <div class="dash-prf-start-upper mb-2">
                                            <div class="dash-prf-start-thumb">
                                                <figure class="mb-0"><img src="../../webapp/assets/img/l-5.png"
                                                                          class="img-fluid rounded" alt=""></figure>
                                            </div>
                                        </div>
                                        <div class="dash-prf-start-bottom">
                                            <div class="upload-btn-wrapper small">
                                                <button class="btn">Company Logo</button>
                                                <input type="file" name="myfile">
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <label>Job Title</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <label>Job Description</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Job Category</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">Web & Application</option>
                                                <option value="2">Banking Services</option>
                                                <option value="3">UI/UX Design</option>
                                                <option value="4">IOS/App Application</option>
                                                <option value="5">Education</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Job Type</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">Full Time</option>
                                                <option value="2">Part Time</option>
                                                <option value="3">Freelance</option>
                                                <option value="4">Internship</option>
                                                <option value="5">Contract</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Job Lavel</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">Team Leader</option>
                                                <option value="2">Manager</option>
                                                <option value="3">Junior</option>
                                                <option value="4">Senior</option>
                                                <option value="5">Other</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Experience</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">Fresher</option>
                                                <option value="2">1+ Years</option>
                                                <option value="3">2+ Years</option>
                                                <option value="4">3+ Years</option>
                                                <option value="5">4+ Years</option>
                                                <option value="6">5+ Years</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Qualification</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">10th Class</option>
                                                <option value="2">12th Class</option>
                                                <option value="3">Bachelore Degree</option>
                                                <option value="4">Master Degree</option>
                                                <option value="5">Post Graduate</option>
                                                <option value="6">Any Other</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Gender</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">Male</option>
                                                <option value="2">Female</option>
                                                <option value="3">Other</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Min. Sallary</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Max. Sallary</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Job Expired Date<</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Job Fee Type</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">Normal</option>
                                                <option value="2">Premium</option>
                                                <option value="3">Urgent</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <label>Skills, Use Commas for saperate</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <label>Permanent Address</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <label>Temporary Address</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Country</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">India</option>
                                                <option value="2">United State</option>
                                                <option value="3">United kingdom</option>
                                                <option value="4">Austrailia</option>
                                                <option value="5">Russia</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>State/City</label>
                                        <div class="select-ops">
                                            <select>
                                                <option value="1">California</option>
                                                <option value="2">Denver</option>
                                                <option value="3">New York</option>
                                                <option value="4">Canada</option>
                                                <option value="5">Poland</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Zip Code</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Video URL</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>Latitude</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-6 col-lg-6 col-md-12">
                                    <div class="form-group">
                                        <label>longitude</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>

                                <div class="col-xl-12 col-lg-12">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3560.383810516784!2d80.8789037751729!3d26.827742176697985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399bfe8bc34b51bb%3A0xa3ca86eec63f6f8!2sINFOSYS%20DIGITAL%20COMPUTER%20(Prabhat%20Computer%20Classes)!5e0!3m2!1sen!2sin!4v1681402268551!5m2!1sen!2sin"
                                            width="100%" height="450" style="border:0;" allowfullscreen=""
                                            loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
                <!-- Card Row End -->

                <!-- Submit Busston -->
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <button type="submit" class="btn ft--medium btn-primary">Save & Preview</button>
                    </div>
                </div>

            </div>

            <!-- footer -->
            <div class="row">
                <div class="col-md-12">
                    <div class="py-3 text-center">© 2015 - 2023 Job Stock® Themezhub.</div>
                </div>
            </div>

        </div>

    </div>
    <!-- ======================= dashboard Detail End ======================== -->

    <a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>


</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->

<!-- Color Switcher -->
<%@include file="../include/color_switch.jsp" %>

<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<%@include file="../include/jquery_footer.jsp" %>
<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->

</body>

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/employer-submit-job.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:53:13 GMT -->
</html>
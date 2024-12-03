<!doctype html>
<html lang="en">

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/candidate-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:52:38 GMT -->
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
        <%@include file="left_nav.jsp" %>

        <section class="dashboard-content">
            <div class="dashboard-tlbar d-block mb-5">
                <div class="row">
                    <div class="colxl-12 col-lg-12 col-md-12">
                        <h1 class="mb-1 fs-3 fw-medium">Candidate Dashboard</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Candidate</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">Candidate Statistics</a>
                                </li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="dashboard-widg-bar d-block">

                <!-- Row Start -->
                <div class="row align-items-center gx-4 gy-4 mb-4">
                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                        <div class="dash-wrap-bloud">
                            <div class="dash-wrap-bloud-icon">
                                <div class="bloud-icon text-success bg-light-success">
                                    <i class="fa-solid fa-business-time"></i>
                                </div>
                            </div>
                            <div class="dash-wrap-bloud-caption">
                                <div class="dash-wrap-bloud-content">
                                    <h5 class="ctr">523</h5>
                                    <p>Applied jobs</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                        <div class="dash-wrap-bloud">
                            <div class="dash-wrap-bloud-icon">
                                <div class="bloud-icon text-warning bg-light-warning">
                                    <i class="fa-solid fa-bookmark"></i>
                                </div>
                            </div>
                            <div class="dash-wrap-bloud-caption">
                                <div class="dash-wrap-bloud-content">
                                    <h5 class="ctr">523</h5>
                                    <p>Saved Jobs</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                        <div class="dash-wrap-bloud">
                            <div class="dash-wrap-bloud-icon">
                                <div class="bloud-icon text-danger bg-light-danger">
                                    <i class="fa-solid fa-eye"></i>
                                </div>
                            </div>
                            <div class="dash-wrap-bloud-caption">
                                <div class="dash-wrap-bloud-content">
                                    <h5 class="ctr">523</h5>
                                    <p>Viewed Jobs</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
                        <div class="dash-wrap-bloud">
                            <div class="dash-wrap-bloud-icon">
                                <div class="bloud-icon text-info bg-light-info">
                                    <i class="fa-sharp fa-solid fa-comments"></i>
                                </div>
                            </div>
                            <div class="dash-wrap-bloud-caption">
                                <div class="dash-wrap-bloud-content">
                                    <h5 class="ctr">523</h5>
                                    <p>Total Review</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row End -->

                <!-- Row Start -->
                <div class="row gx-4 gy-4 mb-4">
                    <div class="col-xl-8 col-lg-12 col-md-12 col-sm-12">
                        <div class="card d-none d-lg-block">
                            <div class="card-header">
                                <h4 class="mb-0">Extra Area Chart</h4>
                            </div>
                            <div class="card-body">
                                <ul class="list-inline text-center m-t-40">
                                    <li>
                                        <h5><i class="fa fa-circle me-1 text-warning"></i>Applied jobs</h5>
                                    </li>
                                    <li>
                                        <h5><i class="fa fa-circle me-1 text-danger"></i>Viewed Jobs</h5>
                                    </li>
                                    <li>
                                        <h5><i class="fa fa-circle me-1 text-success"></i>Saved jobs</h5>
                                    </li>
                                </ul>
                                <div class="chart full-width" id="line-chart" style="height:300px;"></div>
                            </div>
                        </div>
                    </div>

                    <div class="col-xl-4 col-lg-12 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>Notifications</h4>
                            </div>
                            <div class="ground-list ground-list-hove">
                                <div class="ground ground-single-list">
                                    <a href="JavaScript:Void(0);">
                                        <div class="btn-circle-40 text-warning bg-light-warning"><i
                                                class="fas fa-home"></i></div>
                                    </a>

                                    <div class="ground-content">
                                        <h6><a href="JavaScript:Void(0);"><strong>Kr. Shaury Preet</strong> Replied your
                                            message</a></h6>
                                        <span class="small">Just Now</span>
                                    </div>
                                </div>

                                <div class="ground ground-single-list">
                                    <a href="JavaScript:Void(0);">
                                        <div class="btn-circle-40 text-danger bg-light-danger"><i
                                                class="fa-solid fa-comments"></i></div>
                                    </a>

                                    <div class="ground-content">
                                        <h6><a href="JavaScript:Void(0);">Mortin Denver accepted your resume on <strong>Job
                                            Stock</strong></a></h6>
                                        <span class="small">20 min ago</span>
                                    </div>
                                </div>

                                <div class="ground ground-single-list">
                                    <a href="JavaScript:Void(0);">
                                        <div class="btn-circle-40 text-info bg-light-info"><i
                                                class="fa-solid fa-heart"></i></div>
                                    </a>

                                    <div class="ground-content">
                                        <h6><a href="JavaScript:Void(0);">Your job #456256 expired yesterday <strong>View
                                            More</strong></a></h6>
                                        <span class="small">1 day ago</span>
                                    </div>
                                </div>

                                <div class="ground ground-single-list">
                                    <a href="JavaScript:Void(0);">
                                        <div class="btn-circle-40 text-danger bg-light-danger"><i
                                                class="fa-solid fa-thumbs-up"></i></div>
                                    </a>

                                    <div class="ground-content">
                                        <h6><a href="JavaScript:Void(0);"><strong>Daniel Kurwa</strong> has been
                                            approved your resume!.</a></h6>
                                        <span class="small">10 days ago</span>
                                    </div>
                                </div>

                                <div class="ground ground-single-list">
                                    <a href="JavaScript:Void(0);">
                                        <div class="btn-circle-40 text-success bg-light-success"><i
                                                class="fa-solid fa-comment-dots"></i></div>
                                    </a>

                                    <div class="ground-content">
                                        <h6><a href="JavaScript:Void(0);">Khushi Verma left a review on <strong>Your
                                            Message</strong></a></h6>
                                        <span class="small">Just Now</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row End -->

                <!-- Row Start -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="mb-0">Shortlisted Jobs</h4>
                            </div>
                            <div class="card-body px-4 py-4">
                                <!-- Start All List -->
                                <div class="row justify-content-start gx-3 gy-4">

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a
                                                            href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-1.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Product
                                                            Designer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Tripadvisor</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>California</span>.<span>07 Apr 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$85K - 95K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-2.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Product
                                                            Designer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Pinterest</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Allahabad</span>.<span>2 Apr 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$90K - 100K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-3.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Product
                                                            Designer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Shopify</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>.<span>15 March 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$90K - 115K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a
                                                            href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-4.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Jr.
                                                            Laravel Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Dreezoo</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Liverpool, UK</span>.<span>20 March 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$85K - 110K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-5.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Enternship</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Java
                                                            & Python Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Photoshop</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>California</span>.<span>20 Feb 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$90K - 120K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-6.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Sr.
                                                            Code Ignetor Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Firefox</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>.<span>18 Feb 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$80K - 90K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-7.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Part Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Sr.
                                                            Magento Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Airbnb</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>London, UK</span>.<span>15 Feb 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$75K - 85K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a
                                                            href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-8.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">New
                                                            Shopify Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Snapchat</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Denver, USA</span>.<span>15 Feb 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$70K - 95K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb"><a href="job-detail.html">
                                                        <figure><img src="../../WEB-INF/assets/img/l-9.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Front-end
                                                            Developer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Dribbble</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>New York, USA</span>.<span>7 March 2023</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$60K - 70K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Single Item -->
                                    <div class="col-xl-12 col-lg-12 col-md-12">
                                        <div class="jbs-list-box border">
                                            <div class="jbs-list-head">
                                                <div class="jbs-list-head-thunner">
                                                    <div class="jbs-list-emp-thumb jbs-verified"><a
                                                            href="job-detail.html">
                                                        <figure><img src="../../assets/img/l-10.png"
                                                                     class="img-fluid" alt=""></figure>
                                                    </a></div>
                                                    <div class="jbs-list-job-caption">
                                                        <div class="jbs-job-types-wrap"><span
                                                                class="label text-success bg-light-success">Full Time</span>
                                                        </div>
                                                        <div class="jbs-job-title-wrap"><h4><a href="job-detail.html"
                                                                                               class="jbs-job-title">Technical
                                                            Content Writer</a></h4></div>
                                                        <div class="jbs-job-mrch-lists">
                                                            <div class="single-mrch-lists">
                                                                <span>Skype</span>.<span><i
                                                                    class="fa-solid fa-location-dot me-1"></i>Canada, USA</span>.<span>10 March 2022</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="jbs-list-head-middle">
                                                    <div class="elsocrio-jbs">
                                                        <div class="ilop-tr"><i class="fa-solid fa-sack-dollar"></i>
                                                        </div>
                                                        <h5 class="jbs-list-pack">$80K - 100K<span
                                                                class="patype">\PA</span></h5></div>
                                                </div>
                                                <div class="jbs-list-head-last">
                                                    <a href="job-detail.html"
                                                       class="btn btn-md btn-outline-secondary px-3 me-2">View
                                                        Detail</a>
                                                    <a href="JavaScript:Void(0);" class="btn btn-md btn-primary px-3">Quick
                                                        Apply</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End All Job List -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row End -->
            </div>
        </section>
    </div>
    <!-- ======================= dashboard Detail End ======================== -->
    <a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>


</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->


<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<%@include file="../include/jquery_footer.jsp" %>


<!-- Morris.js charts -->
<script src="../../assets/js/raphael/raphael.min.js"></script>
<script src="../../assets/js/morris.js/morris.min.js"></script>
<!-- Custom Chart JavaScript -->
<script src="../../assets/js/custom/dashboard.js"></script>
<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->

</body>

<!-- Mirrored from shreethemes.net/jobstock-landing-2.2/jobstock/candidate-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 26 Sep 2024 02:52:42 GMT -->
</html>
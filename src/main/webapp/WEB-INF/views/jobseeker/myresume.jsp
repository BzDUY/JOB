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

        <div class="dashboard-content">
            <div class="dashboard-tlbar d-block mb-4">
                <div class="row">
                    <div class="colxl-12 col-lg-12 col-md-12">
                        <h1 class="mb-1 fs-3 fw-medium">My Resume</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item text-muted"><a href="#">Candidate</a></li>
                                <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="#" class="text-primary">My Resume</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>

            <div class="dashboard-widg-bar d-block">

                <!-- Row Start -->
                <div class="card">
                    <div class="card-header">
                        <h4>My Resume</h4>
                    </div>
                    <div class="card-body">
                        <div class="row gx-4 gy-4 mb-3">
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="cd-resume-wraps">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                    <div class="cd-resume-caption">
                                        <div class="cd-resume-content">
                                            <p>new-resume-123</p>
                                            <h5>PDF</h5>
                                        </div>
                                        <div class="cd-resume-icon"><i class="fa-solid fa-file-pdf"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="cd-resume-wraps">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                    <div class="cd-resume-caption">
                                        <div class="cd-resume-content">
                                            <p>new-resume-updated</p>
                                            <h5>DOCS</h5>
                                        </div>
                                        <div class="cd-resume-icon"><i class="fa-regular fa-file-word"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-lg-4 col-md-6">
                                <div class="cd-resume-wraps">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                    <div class="cd-resume-caption">
                                        <div class="cd-resume-content">
                                            <p>new-resume-new</p>
                                            <h5>PDF</h5>
                                        </div>
                                        <div class="cd-resume-icon"><i class="fa-solid fa-file-pdf"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row gx-4 gy-4">
                            <div class="col-xl-12 col-lg-12 col-md-12">
                                <div class="upload-btn-wrapper">
                                    <button class="btn">Upload a file</button>
                                    <input type="file" name="myfile">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Row -->

                <!-- Row Start -->
                <div class="card">
                    <div class="card-header">
                        <h4>Education</h4>
                    </div>
                    <div class="card-body">

                        <!-- Single Education Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#secondarySchool"
                                       role="button" aria-expanded="false" aria-controls="secondarySchool">Secondary
                                        School</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="secondarySchool">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Education Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="High School">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Academy Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control"
                                                           value="Awadh Primary School">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Passing year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="2008">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Education Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#intermediate"
                                       role="button" aria-expanded="false" aria-controls="intermediate">Intermediate</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="intermediate">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Education Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="Intermidiate">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Academy Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control"
                                                           value="Awadh Primary School">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Passing year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="2010">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Education Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#bachelorDegree"
                                       role="button" aria-expanded="false" aria-controls="bachelorDegree">Bachelor
                                        Degree</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="bachelorDegree">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Education Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control"
                                                           value="Bachelor Appliation Of Computer">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Academy Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control"
                                                           value="Swami Vivekanand University">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Passing year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="2013">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Education Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#masterDegree"
                                       role="button" aria-expanded="false" aria-controls="masterDegree">Master
                                        Degree</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="masterDegree">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Education Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control"
                                                           value="Master Application Of Computer">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Academy Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="Awadh University">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Passing year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="2016">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="single-edc-wrap">
                            <a href="JavaScript:Void(0);" data-bs-toggle="modal" data-bs-target="#education"
                               class="add-light-btn">Add More Education</a>
                        </div>

                    </div>
                </div>
                <!-- End Row -->

                <!-- Row Start -->
                <div class="card">
                    <div class="card-header">
                        <h4>Experience</h4>
                    </div>
                    <div class="card-body">
                        <!-- Single Experience Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#exp1" role="button"
                                       aria-expanded="false" aria-controls="exp1">Front-End Developer</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="exp1">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Job Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="Front-End Developer">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Joinin Date</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="10-06-2008">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">End Date</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="15-04-2010">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Company Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control"
                                                           value="Themezhub Technology">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Experience Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#exp2" role="button"
                                       aria-expanded="false" aria-controls="exp2">WordPress Developer</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="exp2">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Job Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="WordPress Developer">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Joinin Date</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="01-12-2011">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">End Date</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="15-05-2015">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Company Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="Google Inc">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Experience Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#exp3" role="button"
                                       aria-expanded="false" aria-controls="exp3">Magento Developer</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="exp3">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Job Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control"
                                                           value="Sr. magento Developer">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Joinin Date</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="01-12-2016">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">End Date</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="15-05-2022">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Company Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="Google Inc">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="single-edc-wrap">
                            <a href="JavaScript:Void(0);" data-bs-toggle="modal" data-bs-target="#experience"
                               class="add-light-btn">Add More Experience</a>
                        </div>
                    </div>
                </div>
                <!-- End Row -->

                <!-- Row Start -->
                <div class="card">
                    <div class="card-header">
                        <h4>Award</h4>
                    </div>
                    <div class="card-body">
                        <!-- Single Award Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#BCPIL" role="button"
                                       aria-expanded="false" aria-controls="BCPIL">BCPIL Award</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="BCPIL">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="BCPIL Award">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="01-12-2012">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Award Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#RIZZA" role="button"
                                       aria-expanded="false" aria-controls="RIZZA">RIZZA Award</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="RIZZA">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="RIZZA Award">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="01-12-2016">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Single Award Wrap -->
                        <div class="single-edc-wrap">
                            <div class="single-edc-box">
                                <div class="single-edc-remove-box">
                                    <div class="cd-resume-cancel"><a href="JavaScript:Void(0);" class="cancel-link"><i
                                            class="fa-solid fa-xmark"></i></a></div>
                                </div>
                                <div class="single-edc-title-box">
                                    <a class="btn btn-collapse" data-bs-toggle="collapse" href="#FIFFA" role="button"
                                       aria-expanded="false" aria-controls="FIFFA">FIFFA Award</a>
                                </div>
                            </div>
                            <div class="single-edc-caption">
                                <div class="collapse" id="FIFFA">
                                    <div class="card card-body">
                                        <form>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="FIFFA ICL">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Award Year</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" value="01-12-2022">
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <label class="col-md-2 col-form-label">Description</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control ht-80">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries</textarea>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="single-edc-wrap">
                            <a href="JavaScript:Void(0);" data-bs-toggle="modal" data-bs-target="#award"
                               class="add-light-btn">Add More Award</a>
                        </div>
                    </div>
                </div>
                <!-- End Row -->

                <!-- Submit Busston -->
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <button type="submit" class="btn ft--medium btn-primary">Save Resume</button>
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
<!doctype html>
<html lang="en">
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                                <h1 class="mb-1 fs-3 fw-medium">JobSeeker Profile</h1>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item text-muted"><a href="#">JobSeeker</a></li>
                                        <li class="breadcrumb-item text-muted"><a href="#">Dashboard</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="text-primary">Job Seeker Profile</a></li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>

                    <div class="dashboard-widg-bar d-block">
                        <div class="dashboard-profle-wrapper mb-4">
                            <div class="dash-prf-start">
                                <div class="dash-prf-start-upper">
                                    <div class="dash-prf-start-thumb">
                                        <figure>
                                            <img src="${user.profilePicture != null ? user.profilePicture : '/assets/img/img.png'}"
                                                 class="img-fluid circle" alt="Profile Picture">
                                        </figure>
                                    </div>
                                </div>
                                <form action="${pageContext.request.contextPath}/jobseeker/changeProfilePicture" method="post"
                                      enctype="multipart/form-data">
                                    <div class="dash-prf-start-bottom">
                                        <div class="upload-btn-wrapper small">
                                            <!-- Nút để chọn tệp -->
                                            <input type="file" name="profilePicture" required accept="image/*" id="fileInput"
                                                   style="display: none;" onchange="this.form.submit();">
                                            <button type="button" class="btn upload-button"
                                                    onclick="document.getElementById('fileInput').click();">Choose Picture
                                            </button>

                                            <button type="button" class="btn upload-button" id="editProfileBtn">Edit Profile
                                            </button> <!-- Nút chỉnh sửa -->

                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="dash-prf-end">
                                <div class="dash-prfs-caption">
                                    <div class="dash-prfs-title">
                                        <h4>${user.fullName}</h4>
                                    </div>
                                    <div class="dash-prfs-subtitle">
                                        <div class="jbs-job-mrch-lists">
                                            <div class="single-mrch-lists">
                                                <span>Developer</span>.<span><i
                                                        class="fa-solid fa-location-dot me-1"></i>${user.address}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="jbs-grid-job-edrs-group mt-1">
                                        <span>HTML</span>
                                        <span>CSS3</span>
                                        <span>Bootstrap</span>
                                        <span>Redux</span>
                                    </div>
                                </div>
                                <div class="dash-prf-caption-end">
                                    <div class="dash-prf-infos">
                                        <div class="single-dash-prf-infos">
                                            <div class="single-dash-prf-infos-icons"><i
                                                    class="fa-solid fa-envelope-open-text"></i></div>
                                            <div class="single-dash-prf-infos-caption">
                                                <p class="text-sm-muted mb-0">Email</p>
                                                <h5>${user.email}</h5>
                                            </div>
                                        </div>
                                        <div class="single-dash-prf-infos">
                                            <div class="single-dash-prf-infos-icons"><i class="fa-solid fa-phone-volume"></i>
                                            </div>
                                            <div class="single-dash-prf-infos-caption">
                                                <p class="text-sm-muted mb-0">Call</p>
                                                <h5>${user.phone}</h5>
                                            </div>
                                        </div>
                                        <div class="single-dash-prf-infos">
                                            <div class="single-dash-prf-infos-icons"><i class="fa-solid fa-briefcase"></i></div>
                                            <div class="single-dash-prf-infos-caption">
                                                <p class="text-sm-muted mb-0">Exp.</p>
                                                <h5>${user.experienceYears}</h5>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="dash-prfs-flexends">
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" role="switch"
                                                   id="flexSwitchCheckChecked" checked>
                                            <label class="form-check-label" for="flexSwitchCheckChecked">Show Profile</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="container" id="showProfileForm" >
                            <h3>View JobSeeker Profile</h3>

                            <div class="card">
                                <div class="card-header">
                                    <h4>Basic Detail</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Full Name</label>
                                                <p>${user.fullName}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <p>${user.address}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Phone Number</label>
                                                <p>${user.phone}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Bio</label>
                                                <p>${user.bio}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Date of Birth</label>
                                                <p>${user.dateOfBirth}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <p>${user.gender}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Experience Years</label>
                                                <p>${user.experienceYears}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Education</label>
                                                <p>${user.education}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-12 col-lg-12 col-md-12">
                                            <div class="form-group">
                                                <label>Skills</label>
                                                <p>${user.skills}</p>
                                            </div>
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Languages</label>
                                                <p>${user.languages}</p>
                                            </div>
                                        </div>

                                        <div class="card">
                                            <div class="card-header">
                                                <h4>Social Login</h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-xl-6 col-lg-6 col-md-12">
                                                        <div class="form-group">
                                                            <label>Linkedin Profile</label>
                                                            <p>${user.linkedinProfile}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xl-6 col-lg-6 col-md-12">
                                                        <div class="form-group">
                                                            <label>Portfolio</label>
                                                            <p>${user.portfolio}</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Card Row -->
                        <form id="editProfileForm" action="${pageContext.request.contextPath}/jobseeker/save" method="post" style="display: none;">

                            <div class="card">
                                <div class="card-header">
                                    <h4>Basic Detail</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">

                                        <!-- Full Name -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Full Name</label>
                                                <input type="text" name="fullName" class="form-control" required value="${user.fullName}">
                                            </div>
                                        </div>

                                        <!-- Address -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Address</label>
                                                <input type="text" name="address" class="form-control" required value="${user.address}">
                                            </div>
                                        </div>

                                        <!-- Phone Number -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Phone Number</label>
                                                <input type="text" name="phone" class="form-control" required value="${user.phone}">
                                            </div>
                                        </div>

                                        <!-- Bio -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Bio</label>
                                                <input type="text" name="bio" class="form-control" required value="${user.bio}">
                                            </div>
                                        </div>

                                        <!-- Date of Birth -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Date of Birth</label>
                                                <input type="date" name="dateOfBirth" class="form-control" required value="${user.dateOfBirth}">
                                            </div>
                                        </div>

                                        <!-- Gender -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Gender</label>
                                                <select name="gender" class="form-control">
                                                    <option value="Male" ${user.gender == 'Male' ? 'selected' : ''}>Male</option>
                                                    <option value="Female" ${user.gender == 'Female' ? 'selected' : ''}>Female</option>
                                                    <option value="Other" ${user.gender == 'Other' ? 'selected' : ''}>Other</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!-- Experience Years -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Experience Years</label>
                                                <select name="experienceYears" class="form-control">
                                                    <option value="0" ${user.experienceYears == 0 ? 'selected' : ''}>Fresher</option>
                                                    <option value="1" ${user.experienceYears == 1 ? 'selected' : ''}>1+ Year</option>
                                                    <option value="2" ${user.experienceYears == 2 ? 'selected' : ''}>2+ Years</option>
                                                    <option value="4" ${user.experienceYears == 4 ? 'selected' : ''}>4+ Years</option>
                                                    <option value="5" ${user.experienceYears == 5 ? 'selected' : ''}>5+ Years</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!-- Education -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Education</label>
                                                <select name="education" class="form-control">
                                                    <option value="High School" ${user.education == 'High School' ? 'selected' : ''}>High School</option>
                                                    <option value="Intermediate" ${user.education == 'Intermediate' ? 'selected' : ''}>Intermediate</option>
                                                    <option value="Bachelor Degree" ${user.education == 'Bachelor Degree' ? 'selected' : ''}>Bachelor Degree</option>
                                                    <option value="Master Degree" ${user.education == 'Master Degree' ? 'selected' : ''}>Master Degree</option>
                                                    <option value="Post Graduate" ${user.education == 'Post Graduate' ? 'selected' : ''}>Post Graduate</option>
                                                </select>
                                            </div>
                                        </div>

                                        <!-- Skills -->
                                        <div class="col-xl-12 col-lg-12 col-md-12">
                                            <div class="form-group">
                                                <label>Skills</label>
                                                <textarea name="skills" class="form-control ht-80" required>${user.skills}</textarea>
                                            </div>
                                        </div>

                                        <!-- Languages -->
                                        <div class="col-xl-6 col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label>Languages</label>
                                                <input type="text" name="languages" class="form-control" required value="${user.languages}">
                                            </div>
                                        </div>

                                        <!-- Social Login Section -->
                                        <div class="card">
                                            <div class="card-header">
                                                <h4>Social Login</h4>
                                            </div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <!-- Linkedin Profile -->
                                                    <div class="col-xl-6 col-lg-6 col-md-12">
                                                        <div class="form-group">
                                                            <label>Linkedin Profile</label>
                                                            <input type="text" name="linkedinProfile" class="form-control" required value="${user.linkedinProfile}">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <!-- Portfolio -->
                                                    <div class="col-xl-6 col-lg-6 col-md-12">
                                                        <div class="form-group">
                                                            <label>Portfolio</label>
                                                            <input type="text" name="portfolio" class="form-control" required value="${user.portfolio}">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Submit Button -->
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12">
                                                <button type="submit" class="btn ft--medium btn-primary">Save Profile</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>

                        <script>
                            // JavaScript để xử lý sự kiện nút "Edit Profile"
                            document.getElementById('editProfileBtn').onclick = function () {
                                var form = document.getElementById('editProfileForm');
                                form.style.display = form.style.display === 'none' ? 'block' : 'none'; // Chuyển đổi hiển thị của form
                            };
                            // Lắng nghe sự kiện thay đổi trạng thái của checkbox
                            document.getElementById("flexSwitchCheckChecked").addEventListener("change", function () {
                                const editProfileForm = document.getElementById("showProfileForm");

                                if (this.checked) {
                                    // Hiển thị form khi checkbox được bật
                                    editProfileForm.style.display = "block";
                                } else {
                                    // Ẩn form khi checkbox được tắt
                                    editProfileForm.style.display = "none";
                                }
                            });
                        </script>


                        <!-- footer -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="py-3 text-center">© 2023 - 2024 7Job.</div>
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
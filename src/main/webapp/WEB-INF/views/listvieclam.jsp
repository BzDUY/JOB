<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/newstyle.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css" integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>  
        <title>Hop Dong List</title>
    </head>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hop Dong List</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>

        <!-- Navbar Header -->
        <header class="navbar">
            <div class="navbar-container">
                <a href="#" class="navbar-logo">LOGO</a>
                <nav class="navbar-menu">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/lamthem/add">Dang Ky Viec Lam</a></li>
                        <li><a href="${pageContext.request.contextPath}/lamthem/list">DS Viec Lam</a></li>
<!--                        <li><a href="${pageContext.request.contextPath}/lichtrinh/list">Lịch Trình</a></li>
                        <li><a href="${pageContext.request.contextPath}/lichtrinh/add">Thêm Lịch Trình</a></li>
                        <li><a href="${pageContext.request.contextPath}/xe/getprice">Tính Tiền</a></li>-->
                    </ul>
                </nav>
            </div>
        </header>

        <!-- Main Content -->
        <main>
            <div class="content-container">
                <h1>Danh Sách Xe</h1>
                <a href="${pageContext.request.contextPath}/lamthem/add" class="add-button">Add New</a>
                <form action="${pageContext.request.contextPath}/lamthem/search"
                      method="get">
                    <div>
                        <lable>Search Name</lable>
                        <input type="text" name="searchKey1" value="${searchKey1}"> 

                    </div>

                    <div>
                        <lable>Search Ma CV</lable>
                        <input type="text" name="searchKey2" value="${searchKey2}"> 

                    </div>
                    <input type="submit" value="Search">
                </form>

                <table>
                    <thead>
                        <tr>
                            <th>Ma DK</th>
                            <th>Ma NV</th>
                            <th>Ho Ten</th>
                            <th>Gioi Tinh</th>
                            <th>Cap Bac</th>
                            <th>Ma VL</th>
                            <th>So Ngay Cong</th>
                            <th>Tong Tien</th>
                            <th>Trang Thai</th>
                            <th>Chinh Sua</th>



                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="lamviec" items="${list}">
                            <tr>
                                <td>${lamviec.maDK}</td>
                                <td>${lamviec.maNV}</td>
                                <td>${lamviec.hoVaTen}</td>
                                <td>${lamviec.gioiTinh}</td>
                                <td>${lamviec.capBac}</td>
                                <td>${lamviec.maVL.maVL}</td>
                                <td>${lamviec.soNgayCong}</td>
                                <td>${lamviec.tongTien}</td>
                                <td>${lamviec.maVL.trangThai}</td>
                                <td><a href="${pageContext.request.contextPath}/lamthem/edit/${lamviec.maDK}">Edit</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </main>

        <script>
            function handlerDeleteJob(id) {
                if (confirm("Do you really want to delete this xe?")) {
                    window.location.href = "${pageContext.request.contextPath}/xe/delete/" + id;
                }
            }
        </script>
    </body>


</html>

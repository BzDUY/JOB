<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add new Xe Form</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/newstyle.css">

        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            .form-container {
                background: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                width: 400px;
            }

            .form-container h2 {
                text-align: center;
                margin-bottom: 20px;
                color: #333;
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-group label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
                color: #555;
            }

            .form-group input, .form-group select {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 5px;
                font-size: 14px;
                background: #f9f9f9;
            }

            .form-group button {
                width: 100%;
                padding: 10px;
                background: #007bff;
                color: #fff;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
            }

            .form-group a {
                display: block;
                text-align: center;
                margin-top: 10px;
                color: #007bff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <header class="navbar">
            <div class="navbar-container">
                <a href="#" class="navbar-logo">LOGO</a>
                <nav class="navbar-menu">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/hopdong/add">Thêm Hop Dong</a></li>
                        <li><a href="${pageContext.request.contextPath}/hopdong/list">DS Hop Dong</a></li>
<!--                        <li><a href="${pageContext.request.contextPath}/lichtrinh/list">Lịch Trình</a></li>
                        <li><a href="${pageContext.request.contextPath}/lichtrinh/add">Thêm Lịch Trình</a></li>
                        <li><a href="${pageContext.request.contextPath}/xe/getprice">Tính Tiền</a></li>-->
                    </ul>
                </nav>
            </div>
        </header>
        <div class="form-container">
            <h2>Add Xe Form</h2>
            <form:form action="${pageContext.request.contextPath}/hopdong/create" method="post" modelAttribute="hopdong">

                <div class="form-group">
                    <form:label path="maKH.id">Chon Khach Hang</form:label>
                    <form:select path="maKH.id" items="${khachhang}" itemValue="id" itemLabel="tenKH">

                    </form:select>

                    <form:errors path="maKH.id" cssClass="error" />
                </div>

                <div class="form-group">
                    <form:label path="bienSoXe">Bien So Xe</form:label>
                    <form:input  path="bienSoXe" type="text" placeholder="Enter Bien So Xe" />
                    <form:errors path="bienSoXe" cssClass="error" />
                </div>

                <div class="form-group">
                    <form:label path="ngayHopDong">Ngay Hop Dong</form:label>
                    <form:input path="ngayHopDong" type="date" placeholder="Ngay Hop Dong" />
                    <form:errors path="ngayHopDong" cssClass="error" />
                </div>
                <div class="form-group">
                    <form:label path="thoiHanHopDong">Thoi Han Hop Dong</form:label>
                    <form:input path="thoiHanHopDong" type="date" placeholder="Thoi Han Hop Dong" />
                    <form:errors path="thoiHanHopDong" cssClass="error" />
                </div>


                <div class="form-group">
                    <form:label path="giaTriHopDong">Gia Tri Hop Dong</form:label>
                    <form:input oninput="handleCheck(this.value);" path="giaTriHopDong" type="number" placeholder="Gia Tri Hop Dong" />
                    <form:errors path="giaTriHopDong" cssClass="error" />
                    <h5 id="loi"></h5>
                </div>
<!--                <div class="form-group">
                    <form:label path="giaTriThanhToan">Gia Tri Thanh Toan</form:label>
                    <form:input path="giaTriThanhToan" type="number" placeholder="Gia Tri Thanh Toan" />
                    <form:errors path="giaTriThanhToan" cssClass="error" />
                </div>-->


                <div class="form-group">
                    <form:button>Submit</form:button>
                    <a href="${pageContext.request.contextPath}/hopdong/list">Back to Hop Dong List</a>
                </div>
            </form:form>
        </div>
    </body>

    <script>

        function handleCheck(id) {
            var loi = document.getElementById('loi');
            if (id < 5000000) {
                console.log("Wrong")
              loi.innerHTML = 'Gia tri hop dong phai lon hon 5.000.000VND';
            } else {
                              loi.innerHTML = 'Ok';

                
            }

        }

    </script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Edit Bao Hiem Form</title>
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
                        <li><a href="${pageContext.request.contextPath}/lamthem/add">Dang Ky Viec Lam</a></li>
                        <li><a href="${pageContext.request.contextPath}/lamthem/list">DS Viec Lam</a></li>
<!--                        <li><a href="${pageContext.request.contextPath}/lichtrinh/list">Lịch Trình</a></li>
                        <li><a href="${pageContext.request.contextPath}/lichtrinh/add">Thêm Lịch Trình</a></li>
                        <li><a href="${pageContext.request.contextPath}/xe/getprice">Tính Tiền</a></li>-->
                    </ul>
                </nav>
            </div>
        </header>
        <div class="form-container">
            <h2>Add Xe Form</h2>
            <form:form action="${pageContext.request.contextPath}/lamthem/update" method="post" modelAttribute="lamviec">
                <form:hidden path="maDK" /> 

                <div class="form-group">
                    <!--               Id của User-->

                    <form:label path="maNV" >Ma Nhan Vien</form:label>
                    <form:input path="maNV"  placeholder="Nhap Ma NV" />
                    <form:errors path="maNV" cssClass="error" />
                </div>


                <div class="form-group">
                    <form:label path="hoVaTen" >Ho Va Ten</form:label>
                    <form:input path="hoVaTen"  placeholder="Nhap Ho Va Ten" />
                    <form:errors path="hoVaTen" cssClass="error" />
                </div>


                <div class="form-group">
                    <form:label path="gioiTinh">Gioi Tinh</form:label>
                    <form:select path="gioiTinh" cssClass="form-control">
                        <form:option value="">-- Chon Gioi Tinh --</form:option>
                        <form:option value="Nam">Nam</form:option>
                        <form:option value="Nữ">Nu</form:option>
                        <form:option value="Khác">Khac</form:option>
                    </form:select>
                    <form:errors path="gioiTinh" cssClass="error" />
                </div>

                <div class="form-group">
                    <form:label path="capBac">Cap Bac</form:label>
                    <form:input type="number" path="capBac" placeholder="Nhap Cap Bac" />
                    <form:errors path="capBac" cssClass="error" />
                </div>


                <div class="form-group">
                    <form:label path="maVL.maVL">Nhap Ma Viec Lam</form:label>
                    <form:input path="maVL.maVL" placeholder="Nhap Ma Viec Lam" />
                    <form:errors path="maVL.maVL" cssClass="error" />
                </div>

              

                <div class="form-group">
                    <form:label path="soNgayCong">Nhap So Ngay Cong</form:label>
                    <form:input oninput="handleCheck(this.value);" path="soNgayCong" type="number" placeholder="Nhap So Ngay Cong" />
                    <form:errors path="soNgayCong" cssClass="error" />
                </div>
                  <c:if test="${not empty error}">
                    <div class="error">${error}</div>
                </c:if>
                <h5 id="loi" ></h5>

                <!--                <div class="form-group">
                <form:label path="tongTien">Tong Tien</form:label>
                <form:input path="tongTien" type="number" placeholder="Nhap Tong Tien" />
                <form:errors path="tongTien" cssClass="error" />
            </div>-->

                <div class="form-group">
                    <form:button>Submit</form:button>
                    <a href="${pageContext.request.contextPath}/lamthem/list">Back to Lam Viec List</a>
                </div>
            </form:form>
        </div>
    </body>

    <script>
        function handleCheck(id) {
            var loi = document.getElementById('loi');
            if (id < 0 || id > 20) {
                console.log("Wrong")
                loi.innerHTML = 'So ngay cong phai la so lon hon 0 va nho hon hoac bang 20';
             } else {
                loi.innerHTML = '';

            }

        }
    </script>
</html>

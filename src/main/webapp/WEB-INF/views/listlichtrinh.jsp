<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.0/css/all.min.css" integrity="sha512-3PN6gfRNZEX4YFyz+sIyTF6pGlQiryJu9NlGhu9LrLMQ7eDjNgudQoFDK3WSNAayeIKc6B8WXXpo4a7HqxjKwg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>  
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/newstyle.css">

        <title> Lich Trinh Xe List</title>
    </head>


    <style>
        /* Cơ bản */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #4CAF50;
        }

        form {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        form input[type="text"] {
            padding: 10px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-right: 10px;
        }

        form input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            display: block;
            text-align: center;
            margin: 20px 0;
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            width: 150px;
            margin: 0 auto;
        }

        a:hover {
            background-color: #0056b3;
        }

        /* Bảng */
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            overflow: hidden;
        }

        thead {
            background-color: #4CAF50;
            color: white;
        }

        thead th {
            padding: 15px;
            text-align: center;
        }

        tbody tr {
            border-bottom: 1px solid #ddd;
        }

        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tbody tr:hover {
            background-color: #f1f1f1;
        }

        tbody td {
            text-align: center;
            padding: 10px;
        }

        /* Nút xóa */
        .delete-btn {
            padding: 5px 10px;
            background-color: #f44336;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .delete-btn:hover {
            background-color: #d32f2f;
        }
    </style>
    <header class="navbar">
        <div class="navbar-container">
            <a href="#" class="navbar-logo">LOGO</a>
            <nav class="navbar-menu">
                <ul>
                    <li><a href="${pageContext.request.contextPath}/xe/add">Thêm Xe</a></li>
                    <li><a href="${pageContext.request.contextPath}/xe/list">DS Xe</a></li>
                    <li><a href="${pageContext.request.contextPath}/lichtrinh/list">Lịch Trình</a></li>
                    <li><a href="${pageContext.request.contextPath}/lichtrinh/add">Thêm Lịch Trình</a></li>
                    <li><a href="${pageContext.request.contextPath}/xe/getprice">Tính Tiền</a></li>
                </ul>
            </nav>
        </div>
    </header>
    <body>
        <h1>Lich Trinh List</h1> 

        <form action="${pageContext.request.contextPath}/lichtrinh/search"
              method="get">
            <input type="text" name="searchKey" value="${searchKey}"> 
            <input type="submit" value="Search">
        </form>

        <a href="${pageContext.request.contextPath}/lichtrinh/add">Add new</a>
        <table border="1">
            <thead>
                <tr>
                    <th>Ma Xe</th>
                    <th>Bien So</th>
                    <th>Ten Tai Xe</th>
                    <th>Ten Nha Xe</th>    
                    <th>Ma Tuyen</th>      
                    <th>Ten Tuyen</th>   
                    <th>Ngay Xuat Ben</th>      
                    <th>Gio Xuat Ben</th>          

                </tr>
            </thead>
            <tbody>
                <!-- Lặp qua danh sách người dùng -->
                <c:forEach var="lichtrinh" items="${list}">
                    <tr>
                        <td>${lichtrinh.maXe.id}</td>
                        <td>${lichtrinh.maXe.bienSo}</td>
                        <td>${lichtrinh.tenTaiXe}</td>
                        <td>${lichtrinh.maXe.maNhaxe.tenNhaXe}</td>
                        <td>${lichtrinh.maTuyen.id}</td>
                        <td>${lichtrinh.maTuyen.tenTuyen}</td>

                        <td>${lichtrinh.id.ngayXuatBen}</td>
                        <td>${lichtrinh.id.gioXuatBen}</td>



                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>

    <script>

        function handlerDeleteJob(id) {
            if (confirm("Do you really want to delete this xe?")) {
                window.location.href = "${pageContext.request.contextPath}/xe/delete/" + id;
            }
        }


    </script>
</html>

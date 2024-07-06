<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/admin/static" var="url"></c:url>
<%@ page buffer="64kb" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Danh sách khuyến mãi | Quản trị Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="${url}/css/main.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!-- or -->
    <link rel="stylesheet" href=https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">

</head>

<body onload="time()" class="app sidebar-mini rtl">
<jsp:include page="/view/admin/view/mainbar.jsp"></jsp:include>
<main class="app-content">
    <div class="app-title">
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item active"><a href="#"><b>Danh sách khuyến mãi</b></a></li>
        </ul>
        <div id="clock"></div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div class="row element-button">
                        <div class="col-sm-2">

                            <a class="btn btn-add btn-sm" href="${pageContext.request.contextPath}/view/admin/view/form-add-discount.jsp" title="Thêm"><i
                                    class="fas fa-plus"></i>
                                Tạo mới khuyến mãi</a>
                        </div>
                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm nhap-tu-file" type="button" title="Nhập"
                               onclick="myFunction(this)"><i
                                    class="fas fa-file-upload"></i> Tải từ file</a>
                        </div>

                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm print-file" type="button" title="In"
                               onclick="myApp.printTable()"><i
                                    class="fas fa-print"></i> In dữ liệu</a>
                        </div>
                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm print-file js-textareacopybtn" type="button"
                               title="Sao chép"><i
                                    class="fas fa-copy"></i> Sao chép</a>
                        </div>

                        <div class="col-sm-2">
                            <a class="btn btn-excel btn-sm" href="" title="In"><i class="fas fa-file-excel"></i> Xuất
                                Excel</a>
                        </div>
                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm pdf-file" type="button" title="In"
                               onclick="myFunction(this)"><i
                                    class="fas fa-file-pdf"></i> Xuất PDF</a>
                        </div>
                        <div class="col-sm-2">
                            <a class="btn btn-delete btn-sm" type="button" title="Xóa" onclick="myFunction(this)"><i
                                    class="fas fa-trash-alt"></i> Xóa tất cả </a>
                        </div>
                    </div>
                    <table class="table table-hover table-bordered" id="sampleTable">
                        <thead>
                        <tr>
                            <th width="15"><input type="checkbox" id="all"></th>
                            <th>Mã khuyến mãi</th>
                            <th>Tên khuyến mãi</th>
                            <th>Mô tả</th>
                            <th>Phần trăm</th>
                            <th>Ngày bắt đầu</th>
                            <th>Ngày kết thúc</th>
                            <th>Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listDiscount}" var="dis">
                            <tr>
                                <td width="10"><input type="checkbox" name="check1"  value="${dis.id}"></td>
                                <td>${dis.id}</td>
                                <td>${dis.name}</td>
                                <td>${dis.description}</td>
                                <td>${dis.discountPercent}</td>
                                <td>${dis.startDate}</td>
                                <td>${dis.endDate}</td>
                                <td class="table-td-center">
                                    <button class="btn btn-primary btn-sm trash delete-dis" data-id="${dis.id}" type="button" title="Xóa"
                                            onclick="confirmDelete(${dis.id})"><i class="fas fa-trash-alt"></i>
                                    </button>
                                    <a href="${pageContext.request.contextPath}/Admin/discount/edit?id=${dis.id}">
                                        <button class="btn btn-primary btn-sm edit" type="button" title="Sửa"
                                                id="show-emp"
                                                data-toggle="modal" data-target="#ModalUP"><i class="fas fa-edit"></i>
                                        </button>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>

<%--<!----%>
<%--  MODAL--%>
<%---->--%>
<%--<div class="modal fade" id="ModalUP" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static"--%>
<%--     data-keyboard="false">--%>
<%--    <div class="modal-dialog modal-dialog-centered" role="document">--%>
<%--        <div class="modal-content">--%>

<%--            <div class="modal-body">--%>
<%--                <div class="row">--%>
<%--                    <div class="form-group  col-md-12">--%>
<%--          <span class="thong-tin-thanh-toan">--%>
<%--            <h5>Chỉnh sửa thông tin khuyến mãi cơ bản</h5>--%>
<%--          </span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="row">--%>
<%--                    <div class="form-group col-md-6">--%>
<%--                        <label class="control-label">Mã khuyến mãi </label>--%>
<%--                        <input class="form-control" type="number" value="1">--%>
<%--                    </div>--%>
<%--                    <div class="form-group col-md-6">--%>
<%--                        <label class="control-label">Tên Khuyến mãi</label>--%>
<%--                        <input class="form-control" type="text" required value="Khuyến mãi tồn kho">--%>
<%--                    </div>--%>
<%--                    <div class="form-group  col-md-6">--%>
<%--                        <label class="control-label">Mô tả</label>--%>
<%--                        <input class="form-control" type="text" required value="Tất cả sản phẩm tồn kho được giảm">--%>
<%--                    </div>--%>
<%--                    <div class="form-group col-md-6">--%>
<%--                        <label class="control-label">Phần trăm</label>--%>
<%--                        <input class="form-control" type="text" value="30%">--%>
<%--                    </div>--%>
<%--                    <div class="form-group col-md-6">--%>
<%--                        <label class="control-label">Ngày băt đầu</label>--%>
<%--                        <input class="form-control" type="date" required value="20/10/2023">--%>
<%--                    </div>--%>
<%--                    <div class="form-group  col-md-6">--%>
<%--                        <label class="control-label">Ngày kết thúc</label>--%>
<%--                        <input class="form-control" type="date" required value="1/11/2023">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <BR>--%>
<%--                <BR>--%>
<%--                <BR>--%>
<%--                <button class="btn btn-save" type="button">Lưu lại</button>--%>
<%--                <a class="btn btn-cancel" data-dismiss="modal" href="#">Hủy bỏ</a>--%>
<%--                <BR>--%>
<%--            </div>--%>
<%--            <div class="modal-footer">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!--
MODAL
-->

<!-- Essential javascripts for application to work-->
<script src="${url}/js/jquery-3.2.1.min.js"></script>
<script src="${url}/js/popper.min.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="${url}/src/jquery.table2excel.js"></script>
<script src="${url}/js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="${url}/js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
<!-- Data table plugin-->
<script type="text/javascript" src="${url}/js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${url}/js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">$('#sampleTable').DataTable();

    //Thời Gian
    function time() {
        var today = new Date();
        var weekday = new Array(7);
        weekday[0] = "Chủ Nhật";
        weekday[1] = "Thứ Hai";
        weekday[2] = "Thứ Ba";
        weekday[3] = "Thứ Tư";
        weekday[4] = "Thứ Năm";
        weekday[5] = "Thứ Sáu";
        weekday[6] = "Thứ Bảy";
        var day = weekday[today.getDay()];
        var dd = today.getDate();
        var mm = today.getMonth() + 1;
        var yyyy = today.getFullYear();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        m = checkTime(m);
        s = checkTime(s);
        nowTime = h + " giờ " + m + " phút " + s + " giây";
        if (dd < 10) {
            dd = '0' + dd
        }
        if (mm < 10) {
            mm = '0' + mm
        }
        today = day + ', ' + dd + '/' + mm + '/' + yyyy;
        tmp = '<span class="date"> ' + today + ' - ' + nowTime +
            '</span>';
        document.getElementById("clock").innerHTML = tmp;
        clocktime = setTimeout("time()", "1000", "Javascript");

        function checkTime(i) {
            if (i < 10) {
                i = "0" + i;
            }
            return i;
        }
    }
</script>
<script>

    $(document).ready(function () {
        // Sử dụng delegated event cho các nút xóa
        $(document).on('click', '.delete-product', function (e) {
            e.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
            var username = '${sessionScope.account.username}'; // Lấy thông tin người dùng từ phiên
            var deleteUserButton = $(this); // Lưu trữ phần tử .delete-user ban đầu
            var logId = $(this).data('id'); // Lấy id người dùng từ thuộc tính data-id
            console.log(username);
            // Hiển thị hộp thoại xác nhận trước khi xóa
            if (confirm("Bạn có chắc chắn muốn xóa sản phẩm này không?")) {
                // Gửi yêu cầu AJAX để xóa người dùng
                $.ajax({
                    url: '${pageContext.request.contextPath}/Admin/discount/delete?id=' + logId + '&username=' + username,
                    type: 'DELETE', // Sử dụng phương thức DELETE
                    success: function (response) {
                        // Xóa dòng chứa nút xóa được nhấn
                        deleteUserButton.closest('tr').remove();
                        // Hiển thị thông báo hoặc thực hiện các hành động khác
                        alert("Xóa sản phẩm thành công");
                    },
                    error: function (xhr, status, error) {
                        console.error("Error deleting user:", error);
                        // Xử lý lỗi nếu cần
                    }
                });
            }
        });
    });

    var selectedLogs = [];
    $(document).ready(function() {
        // Hàm để cập nhật trạng thái của các dòng đã chọn khi trang được tải lại hoặc khi checkbox thay đổi
        function updateSelectedLogs() {
            selectedLogs = [];
            $('input[name="check1"]:checked').each(function() {
                selectedLogs.push($(this).val());
            });
        }

        // Xử lý sự kiện khi checkbox được chọn hoặc bỏ chọn
        $(document).on('change', 'input[name="check1"]', function() {
            updateSelectedLogs();
        });

        // Xử lý sự kiện khi nút xóa được nhấn
        $('#deleteSelected').click(function (e) {
            e.preventDefault();

            if (selectedLogs.length === 0) {
                alert("Vui lòng chọn ít nhất một sản phẩm để xóa.");
                return;
            }

            if (confirm("Bạn có chắc chắn muốn xóa những sản phẩm đã chọn không?")) {
                // Gửi yêu cầu AJAX với dữ liệu là mảng các ID đã chọn
                $.ajax({
                    url: '${pageContext.request.contextPath}/Admin/discount/deleteSelected',
                    type: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify(selectedLogs),
                    success: function (response) {
                        alert("Xóa sản phẩm đã chọn thành công");
                        // Xóa các dòng từ bảng mà không cần tải lại trang
                        selectedLogs.forEach(function(logId) {
                            $('input[name="check1"][value="' + logId + '"]').closest('tr').remove();
                        });
                        // Sau khi xóa thành công, cập nhật lại trạng thái của các dòng đã chọn
                        updateSelectedLogs();
                    },
                    error: function (xhr, status, error) {
                        console.error("Error deleting logs:", error);
                        alert("Đã xảy ra lỗi khi xóa log.");
                    }
                });
            }
        });

        // Cập nhật trạng thái của các dòng đã chọn khi trang được tải lại
        updateSelectedLogs();
    });
</script>


</body>

</html>
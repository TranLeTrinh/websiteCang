<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/layouts/taglib.jsp"%>
<head>
<title>Sửa đơn hàng</title>
</head>
<body>
	<main id="main">

		<!-- ======= Breadcrumbs ======= -->
		<section class="breadcrumbs">
			<div class="container">

				<div class="d-flex justify-content-between align-items-center">
					<button class="btn-back">
						<a href="<c:url value="/khach-hang/don-hang" />"
							style="color: #ffffff;">Quay lại</a>
					</button>
					<h2
						style="color: rgb(0, 0, 0); font-size: 32px; font-style: normal;">Cập
						nhật thông tin hàng hóa</h2>
					<ol>
						<li><a href="<c:url value="/" />">Trang chủ</a></li>
						<li><a href="<c:url value="/khach-hang/don-hang" />">Thông
								tin đơn hàng</a></li>
						<li>Cập nhật</li>
					</ol>
				</div>

			</div>
		</section>
		<!-- End Breadcrumbs -->

		<section id="contact" class="contact">
			<div class="container">

				<div class="form">
					<form:form modelAttribute="donHang" method="post"
						action="/QuanLyCang/khach-hang/sua-don-hang" role="form">
						<!-- id don hang -->
						<form:hidden path="trangThai" />
						<form:hidden path="ngayTao" />
						<form:hidden path="id" />
						<div class="form-group col-md-3">
							<input type="text" class="form-control" name="id_dh" id="id_dh"
								placeholder="ID Đơn hàng" readonly value="${donHang.id}" />
						</div>

						<!-- Nguoi nhan -->
						<div class="row">
							<div class="col-md-6 form-group">
								<form:input path="tenNguoiNhan" type="text" name="receiver_name"
									class="form-control" id="receiver_name"
									placeholder="Họ và tên người nhận" />
							</div>
							<div class="col-md-3 form-group">
								<form:input path="sdtNguoiNhan" type="text" class="form-control"
									name="tel" id="tel" placeholder="Số điện thoại người nhận" />
							</div>
						</div>
						<div class="form-group col-md-5">
							<form:input path="diaChiNguoiNhan" type="text"
								class="form-control" name="address" id="address"
								placeholder="Địa chỉ người gửi" />
						</div>

						<div class="col-md-2 form-group">
							<form:input path="trongLuong" type="number" class="form-control"
								name="number" id="number" placeholder="Trọng lượng(Kg)" />
						</div>
						<div class="col-md-2 form-group">
							<form:input path="theTich" type="number" class="form-control"
								name="number" id="number" placeholder="Thể tích(L)" />
						</div>

						<div class="form-group mt-3">
							<form:textarea path="moTa" class="form-control" name="describe"
								rows="5" placeholder="Mô tả" />
						</div>
						<!-- <div class="my-3">
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Thông tin của bạn đã được cập nhật. Cảm ơn!</div>
            </div> -->
						<div class="text-center">
							<button type="submit">Cập nhật</button>
						</div>
					</form:form>
				</div>
		</section>

	</main>
	<!-- End #main -->
</body>
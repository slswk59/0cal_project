<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
	$(document).ready(function() {
		$('#editModal').on('show.bs.modal', function(event) {
			var button = $(event.relatedTarget); // 클릭한 버튼
			var delKey = button.data('delkey'); // data-delkey 값 가져오기
			var modal = $(this); // 모달 창

			// 폼 데이터 초기화
			modal.find('#editDelKey').val(delKey);
			modal.find('#editReceiverName').val(button.closest('tr').find('.recevier_name_td').text());
			modal.find('#editDelPhone').val(button.closest('tr').find('.del_phone_td').text());
			modal.find('#editDelAddress').val(button.closest('tr').find('.del_address_td').text());
		});

		$(".delete_address_btn").on("click", function(e) {
			e.preventDefault();
			console.log($(this).attr("data-del_key"));
			$("input[name=del_key]").val($(this).attr("data-del_key"));
			$(".del_form").submit();
		});
	});

	function closePopup() {
		console.log($("input[name=delivery]").val());
		window.opener.document.getElementById("address").value = $("input[name=delivery]").val();
		window.close();
	}
</script>
</head>

<body style="background-color: #f2e6d9">
	<hr class="container" />
	<div class="delivery-heading">
		<h2 style="color: #444444">배송지</h2>
		<span style="color: #777777">배송지에 따라 상품정보 및 배송유형이 달라질 수 있습니다.</span>
	</div>
	<table class="delivery-table" style="background-color: #f9f6f0">
		<thead>
			<tr>
				<th class="del_check">선택</th>
				<th class="recevier_name">배송지명</th>
				<th class="del_phone">연락처</th>
				<th class="del_address">주소</th>
				<th class="del_delete">삭제</th>

			</tr>
		</thead>
		<tbody>
			<form method="post"
				action="${pageContext.request.contextPath}/shopping/deleteDelivery.do"
				class="del_form">
				<input type="hidden" name="del_key" class="del_key" value="" />
				<c:forEach items="${aList}" var="dto">
					<tr>
						<td class="del_check_td" style="text-align: center"><input
							type="radio" name="delivery" value="${dto.del_address }" /></td>
						<td class="recevier_name_td">${dto.receiver_name}</td>
						<td class="del_phone_td">${dto.del_phone }</td>
						<td class="del_address_td">${dto.del_address }</td>
						<td class="del_delete_td">
							<button type="button" class="btn btn-danger delete_address_btn"
								data-del_key="${dto.del_key}" data-testid="delete"
								value="${dto.del_key}">삭제</button>
						</td>
					</tr>
				</c:forEach>
			</form>
		</tbody>
	</table>
	<div class="no-delivery-info" style="color: #777777">
		<p>상품 구매를 위한 배송지를 설정해주세요.</p>
		<button class="btn-add-delivery" style="cursor: pointer"
			onclick="window.open('http://localhost:8090/shopping/post.do', 'btn-add-delivery', 'width=900, height=600')"
			style="background-color: #cccccc; color: #444444">새 배송지 추가</button>
		<button class="btn-select-delivery" style="cursor: pointer"
			onclick="javascript:closePopup();"
			style="background-color: #cccccc; color: #444444">배송지 선택</button>
	</div>
</body>
</html>

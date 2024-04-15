<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CutstomerList</title>
<!-- 은별 공통 css. JS -->
<link rel="stylesheet" href="/alphaknow/css/eunbyeol_header,main.css">
<script src="/alphaknow/js/eunbyeol.js"></script>


<style>

/* new_register_pop , 신규등록 팝업 css */
#new_register_pop_wrap {
	width: 50%;
	max-height: 80%;
	position: fixed;
	top: 30%;
	right: 20%;
}




</style>
<script>
	
</script>
</head>
<body>
	<%@ include file="../mainheader.jsp"%>

	<div id="content">


		<!-- content header 헤더 영역 -->
		<div id="main_header">
			<div id="content_header_title">거래처 리스트</div>
			<div id="content_header_search">
				<input type="text" id="list_search_text" value=""
					placeholder="입력 후 [Enter]">
				<button type="button" id="content_header_search_button"
					class="change_button">Search</button>
			</div>
		</div>


		<!-- content main 메인 영역 페이지네이션까지-->
		<div id=main_content_wrap>

			<!-- content main table, 메인 테이블 -->
			<table id="main_board">
				<!-- 테이블 너비 조절 -->
				<colgroup>
					<col style="width: 5%" />
					<col style="width: 10%" />
					<col style="width: 30%" />
					<col style="width: 15%" />
					<col style="width: 15%" />
					<col style="width: 15%" />
					<col style="width: 10%" />

				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox"></th>
						<th>거래처코드</th>
						<th>거래처명</th>
						<th>대표자명</th>
						<th>전화</th>
						<th>담당자 번호</th>
						<th>재직여부</th>
					</tr>

				</thead>
				<tbody>
					<!-- 게시물 추가 예정 -->
				</tbody>

			</table>
			<div id="content_main_button">
				<!-- 신규등록 및 수정버튼-->
				<button id="new_register" class="change_button">신규등록</button>
				<button id="edit" class="button_basic">수정하기</button>
				<button id="delete" class="button_basic">선택삭제</button>
			</div>
			<div id=pagenation></div>
			<!-- content main wrap div 끝 -->
		</div>





		<!-- content div 끝 -->
	</div>

	<!-- new_register 신규등록 팝업 div -->
	<div class="pop_wrap" id="new_register_pop_wrap">
		<div class="pop_header">
			<div class="pop_header_title">거래처등록</div>
		</div>
		<div class="pop_content_wrap">
			<div class="pop_content_header">
				<div class="pop_content_title">거래처 등록</div>
			</div>
			<div class="pop_content_com">
				<div class="wrapper_ul">
					<ul class="wrapper_li">
						<li id="customer_code" class="whole_row">
							<div class="title">거래처코드</div>
							<div class="form">
								<div class="control_set">
									<button type="button" class="button_basic">사업자번호조회</button>
									<input type="text" placeholder="사업자 번호 입력">
								</div>
							</div>
						</li>
						<li id="customer_name" class="whole_row">
							<div class="title">상호(이름)</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="상호명 입력">
								</div>
							</div>
						</li>
						<li id="ceo_name" class="whole_row">
							<div class="title">대표자명</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="대표자명 입력">
								</div>
							</div>
						</li>
						<li id="business_type" class="whole_row">
							<div class="title">업태</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="업태 입력">
								</div>
							</div>
						</li>
						<li id="business_type" class="whole_row">
							<div class="title">업태</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="업태 입력">
								</div>
							</div>
						</li>
						<li id="tel_no" class="whole_row">
							<div class="title">전화</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="전화번호 입력">
								</div>
							</div>
						</li>
						<li id="phone_no" class="whole_row">
							<div class="title">담당자번호</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="담당자 번호 입력">
								</div>
							</div>
						</li>
						<li id="fax" class="whole_row">
							<div class="title">Fax</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="팩스 번호 입력">
								</div>
							</div>
						</li>
						<li id="email" class="whole_row">
							<div class="title">Email</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="이메일 주소 입력">
								</div>
							</div>
						</li>
						<li id="post" class="whole_row">
							<div class="title">주소1 우편번호</div>
							<div class="form">
								<div class="control_set">
									<button type="button" class="button_basic">주소검색</button>
									<input type="text" placeholder="주소1 우편번호">
								</div>
							</div>
						</li>
						<li id="address" class="whole_row">
							<div class="title">주소1</div>
							<div class="form">
								<div class="control_set">
									<input type="text" placeholder="주소1">
								</div>
							</div>
						</li>
						<li id="employment_status" class="whole_row">
							<div class="title">재직여부</div>
							<div class="form">
								<div class="control_set">
								<div class="use_check">
									<input type="radio" name="use" value="Yes" checked>재직
									<input type="radio" name="use" value="No">퇴사
								</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="pop_footer_wrap">
				<div class="pop_footer">
					<button type="button" class="change_button">저장</button>
					<button type="button" class="button_basic">다시쓰기</button>
					<button type="button" class="button_basic">닫기</button>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
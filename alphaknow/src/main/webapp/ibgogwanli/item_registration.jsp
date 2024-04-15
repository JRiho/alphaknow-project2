<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/alphaknow/css/star.css">

<!-- jQuery 라이브러리를 불러오는 코드 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!--  jQuery UI 라이브러리를 불러오는 코드 ex. 달력,드래그 // 압축x버전 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <style>
        #main_content {
            display: flex;
            flex-direction: column;
        }

        #nav {
            width: 100%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #nav ul {
            display: flex;
            list-style: none;
        }

        #nav ul li {
            background-color: #6495ED;
            color: #fff;
            font-size: 0.8em;
            border-radius: 10px;
            margin: 2px;
            padding: 5px;
            cursor: pointer;
        }

        #nav_ul {
            width: 50%;
        }

        /* 메인창 달력 */

        #start-date-select {
            display: flex;
        }

        #end-date-select {
            display: flex;
        }



        /* 사원검색 pop */
        #employee_search_pop {
            /* display: none; */
            width: 30%;
            height: 60%;
            background-color: #e0dcdc;
            border-radius: 5px;
            position: fixed;
            top: 10%;
            right: 20%;
        }

        #employee_search_title {
            width: 100%;
            font-size: 2em;
            background-color: #4169E1;
        }

        #employee_head {
            width: 100%;
            height: 10%;
            font-size: 1em;
            /* padding: 3px; */
            margin: 2% 0 0 0;
            display: flex;
        }

        #employee_wrap {
            width: 95%;
            height: 65%;
            background-color: #fff;
            margin: 0 auto;
            /* padding : 2%; */
            overflow-y: auto;
        }


        #employee_search_pop_button {
            margin: 3% 0 2% 5%;
        }

        /* 사원 등록 pop */
        #new_employee_pop {
            /* display: none; */
            width: 60%;
            height: 60%;
            background-color: #e0dcdc;
            border-radius: 5px;
            position: fixed;
            top: 10%;
            right: 20%;
        }

        #new_employee_title {
            width: 100%;
            font-size: 2em;
            background-color: #4169E1;
        }

        #new_employee_head {
            width: 100%;
            height: 10%;
            font-size: 1em;
            /* padding: 3px; */
            margin: 2% 0 0 0;
        }

        #new_employee_wrap {
            width: 95%;
            height: 60%;
            background-color: #fff;
            margin: 0 auto;
            overflow-y: auto;
        }

        #new_employee_table {
            width: 100%;
        }

        #new_employee_pop_button {
            margin: 3% 0 2% 5%;
        }
    </style>

    <script>
        // 팝업 이동 jquery
        $(function () {
            $(".div_pop").draggable();

        });
        $(document).ready(function () {
            // 발주 버튼 클릭 이벤트
            $('#place_an_order').click(function () {
                let registrationPop = $('#registration_pop').val().trim(); // 입력값 공백 제거

                if (registrationPop == "") { // 입력값이 없는 경우
                    showAlert('내용을 입력해주세요.');
                } else { // 입력값이 있는 경우
                    showAlert('발주하시겠습니까?');
                }
                $('#alert_close').click(function () {
                    $('#alert_div').hide(); // 팝업창 숨기기
                });
            });
        });


        // 알림 보여주기 함수
        function showAlert(message) {
            $('#alert_message').text(message); // 메시지 설정
            $('#alert_div').show(); // 알림 창 보여주기
        }
    </script>
</head>
<body>
	<%@ include file="../mainheader.jsp"%>

	<div id="content">


		<div id="main_header">
			<div id="list_title">품목등록리스트</div>
			<div id="list_search">
				<input type="text" class="list_search_text" value=""
					placeholder="입력 후 enter">
				<div id="searchImg">
					<img
						src="https://cdn-icons-png.freepik.com/512/2311/2311526.png?ga=GA1.1.1347059133.1702859932&"
						class="list_search_img" alt="검색">
				</div>
			</div>
		</div>

		<!-- 메인시작 -->
		<div id="main_content">

			<table id="main_board">
				<!-- 테이블 너비 조절 -->
				<colgroup>
					<col style="width: 5%" />
					<col style="width: 10%" />
					<col style="width: 15%" />
					<col style="width: 10%" />
					<col style="width: 10%" />
					<col style="width: 10%" />
					<col style="width: 10%" />
					<col style="width: 10%" />
					<col style="width: 10%" />
					<col style="width: 10%" />
				</colgroup>
				<thead>
					<tr>
						<th><input type="checkbox"></th>
						<th>품목코드</th>
						<th>품목명</th>
						<th>품목구분</th>
						<th>규격명</th>
						<th>생산공정명</th>
						<th>단위</th>
						<th>사용구분</th>
						<th>입고단가</th>
						<th>출고단가</th>
					</tr>

				</thead>
				<tbody>
					<!-- 게시물 추가 예정 -->
				</tbody>

			</table>
		</div>
		<div id="main_button">
			<!-- 신규등록 및 수정버튼-->
			<button id="new_register" class="change_button">신규등록</button>
			<button id="edit" class="button_basic">변경하기</button>
			<button type="button" class="button_basic">선택삭제</button>

		</div>
		<div id="registration_pop" class="div_pop">
			<div id="registration_pop_title">
				품목등록
				<!-- 이미지 넣을수 있음 넣기<img id ="close_icon" src="https://images-ext-1.discordapp.net/external/2wxOzU_u31lZ2Gy1ymL2C93sDKD_G1VOeeBPynOlkh4/https/e1.pngegg.com/pngimages/288/836/png-clipart-black-n-white-x-mark.png?format=webp&quality=lossless&width=705&height=401"> -->
			</div>
			<div id="pop_title">품목등록</div>


			<div id="registration_pop_table_wrap">

				<table id="new_registration">
					<colgroup>
						<col style="width: 25%;" />
						<col style="width: 75%;" />
					</colgroup>

					<tr>
						<td>품목코드</td>
						<td><input type="text" name="text" class="text"
							placeholder="품목코드"></td>
					</tr>
					<tr>
						<td>품목명</td>
						<td><input type="text" name="text" class="text"
							placeholder="품목명"></td>
					</tr>
					<tr>
						<td>규격</td>
						<td><input type="text" name="text" class="text"
							placeholder="규격"></td>
					</tr>
					<tr>
						<td>단위</td>
						<td><input type="text" name="text" class="text"
							placeholder="단위"></td>
					</tr>
					<tr>
						<td>품목구분</td>
						<td><input type="radio" name="item_classification">원재료
							<input type="radio" name="item_classification">부재료 <input
							type="radio" name="item_classification">제품 <input
							type="radio" name="item_classification">사용안함</td>
					</tr>
					<tr>
						<td>생성공정</td>
						<td><input type="text" name="text" class="text"
							placeholder="더블클릭시 공정 팝업"></td>
					</tr>
					<tr>
						<td>입고단가</td>
						<td><input type="text" name="text" class="text"
							placeholder="입고단가"></td>
					</tr>
					<tr>
						<td>출고단계</td>
						<td><input type="text" name="text" class="text"
							placeholder="출고단계"></td>
					</tr>
					<tr>
						<td>품질검사방법</td>
						<td><input type="radio" name="quality_inspection">전수
							<input type="radio" name="quality_inspection">샘플링(%)</td>
					</tr>
				</table>
			</div>
			<div id="setting_button">
				<button type="button" class="change_button">저장</button>

				<button type="button" class="button_basic">다시쓰기</button>
				<button type="button" class="button_basic">닫기</button>
			</div>
		</div>


		<div id="footer">
			<!-- 페이지 넘버 , 페이지네이션 추가예정, 1차는 기본 박스로 -->
			<div id="pagination">
				<ul class="page-box">
					<li><<</li>
					<li>1</li>
					<li>>></li>
				</ul>
			</div>
		</div>





		<!-- main conntent div 끝 -->
	</div>
<body>

</body>

</html>

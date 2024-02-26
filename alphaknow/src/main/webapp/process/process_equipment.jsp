<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>장비정보관리</title>
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="../css/process_equipment.css">
  <script>
    $(function () {
      $("#datepicker1").datepicker({
        dateFormat: "yy-mm-dd", // 날짜 형식 설정
        changeMonth: true, // 월 변경 가능
        changeYear: true, // 연도 변경 가능
        showButtonPanel: true, // 오늘 날짜로 이동 및 달력 닫기 버튼 표시
        onClose: function (selectedDate) {
          // 시작 날짜 선택 후, 종료 날짜의 minDate 설정
          $("#datepicker2").datepicker("option", "minDate", selectedDate);
        }
      });
    });
    $(function () {
      $("#datepicker2").datepicker({
        dateFormat: "yy-mm-dd", // 날짜 형식 설정
        changeMonth: true, // 월 변경 가능
        changeYear: true, // 연도 변경 가능
        showButtonPanel: true // 오늘 날짜로 이동 및 달력 닫기 버튼 표시
      });
    });
  </script>
</head>

<body>
  <%@ include file="../mainheader.jsp"%>
    <div>
      <h1>공정기준 - 장비정보관리</h1>
      <table class="equipment_table">
        <tr>
          <td><span>장비명:</span></td>
          <td><input type="text"></td>
          <td><span>관리번호:</span></td>
          <td><input type="text"></td>
          <td><span>제조사:</span></td>
          <td><input type="text"></td>
          <td rowspan="2"> <button type="button" class="change_button">추가하기</button></td>
        </tr>
        <tr>
          <td><span>구입업체명:</span></td>
          <td><input type="text"></td>
          <td><span>수리업체명:</span></td>
          <td><input type="text"></td>
          <td><span>관리지정:</span></td>
          <td><input type="text"></td>
        </tr>
        <tr>
          <td><span>위치:</span></td>
          <td><input type="text"></td>
          <td><span>용도:</span></td>
          <td><input type="text"></td>
          <td><span>사용여부:</span></td>
          <td>
            <select>
              <option>True</option>
              <option>False</option>
            </select>
          </td>
          <td rowspan="2"><button type="button" class="change_button">삭제하기</button></td>
        </tr>
        <tr>
          <td><span>구매일:</span></td>
          <td colspan="2"><input type="text" id="datepicker1"></td>
          <td><span>이력등록일:</span></td>
          <td colspan="2"><input type="text" id="datepicker2"></td>
        </tr>
      </table>
    </div>


    <div id="main_content">
      <table id="equipment_board">
        <!-- 테이블 너비 조절 -->
        <colgroup>
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
          <col style="width:8.3%" />
        </colgroup>
        <thead>
          <tr>
            <th>고유번호</th>
            <th>장비명</th>
            <th>관리번호</th>
            <th>제조사</th>
            <th>구입업체명</th>
            <th>수리업체명</th>
            <th>관리자</th>
            <th>위치</th>
            <th>용도</th>
            <th>사용여부</th>
            <th>구매일</th>
            <th>이력등록일</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
          </tr>
          <tr>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
          </tr>
          <tr>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
          </tr>
        </tbody>

      </table>

    </div>
</body>

</html>
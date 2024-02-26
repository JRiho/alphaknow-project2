<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MainPage</title>
        <link rel="stylesheet" href="../css/employee_schedule.css">
        <script src="../js/employee_schedule.js"></script>
    </head>
    <style>

    </style>

    <body>

        <%@ include file="../mainheader.jsp" %>
            <div id="content">

                <!-- div id=headerj 시작 -->
                <div id=headerj>
                    작업자별일정현황
                </div>
                <!-- div id=headerj 끝 -->



                <!-- updiv -->
                <div class="updiv">


                    <!-- selbox_searchInfo_table_wrap -->
                    <div id="selbox_searchInfo_table_wrap">

                        <div id="selbox">
                            <!-- department_name select 박스 -->
                            <select name="department_name" id="dname">
                                <option value="select" style="display:none;">부서명</option>
                                <option value="1">장비관리조1</option>
                                <option value="2">장비관리조2</option>
                                <option value="3">생산조</option>
                                <option value="4">검수조</option>


                            </select>
                            <!-- department_name select 박스 끝 -->
                            <!-- employee_name select 박스 -->
                            <select name="employee_name" id="ename">
                                <option value="select" style="display:none;">사원명</option>

                            </select>
                            <!-- employee_name select 박스 끝 -->

                            <button type="button" id="search_btn">찾기</button>
                        </div>
                        <!-- selbox div 끝 -->

                        <!-- searchInfo table container -->
                        <div id="searchInfo_table_container">
                            <!-- searchInfo table -->
                            <table id="searchInfo_table">
                                <tr>
                                    <th>부서명</th>
                                    <td id="dept_name"></td>
                                    <th>출근상황</th>
                                    <td id="work_now"></td>
                                </tr>
                                <tr>
                                    <th>사원번호</th>
                                    <td id="emp_num"></td>
                                    <th>담당장비</th>
                                    <td id="my_eqm"></td>
                                </tr>
                                <tr>
                                    <th>사원명</th>
                                    <td id="emp_name"></td>
                                    <th>담당업무</th>
                                    <td id="my_job"></td>
                                </tr>
                            </table>
                            <!-- searchInfo table 끝 -->
                        </div>
                        <!-- searchInfo table container 끝 -->

                    </div>
                    <!-- selbox_searchInfo_table_wrap 끝 -->


                    <!-- emp_status_table_header -->
                    <div id="emp_status_table_header">
                        부서별작업자현황
                    </div>

                    <!-- emp_status_container -->
                    <div id="emp_status_container">
                        <!-- emp_status_table_title -->
                        <table id="emp_status_table">
                            <!-- thead -->
                            <thead id="emp_status_table_thead">

                            </thead>
                            <!-- thead 끝 -->

                            <!-- tbody -->
                            <tbody id="emp_status_table_tbody">

                            </tbody>
                            <!-- tbody 끝 -->
                        </table>
                        <!-- emp_status_table_body 끝 -->
                    </div>
                    <!-- emp_status_container 끝 -->





                </div>
                <!-- updiv 끝 -->



                <!-- 중앙 구분선 -->
                <div id="center_line">
                </div>
                <!-- 중앙 구분선 끝 -->










                <!-- downdiv -->
                <div class="downdiv">



                    <div id="month_table_header">

                        <div id="selbox_month_div">
                            <select name="month" id="selbox_month">
                                <option value="select">월 선택</option>

                            </select>
                        </div>

                        <div id="month_table_header_text">

                        </div>

                    </div>



                    <div id="month_list_container">
                        <table id="month_list_table">
                            <thead id="month_list_table_thead">

                            </thead>
                            <!-- </table> -->

                            <!-- <table id="month_list_table_body"> -->
                            <tbody id="month_list_table_tbody">

                            </tbody>
                        </table>
                    </div>



                </div>
                <!-- downdiv 끝 -->

            </div>
    </body>

    </html>
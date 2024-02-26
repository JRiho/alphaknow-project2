<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="ko">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MainPage</title>
        <link rel="stylesheet" href="../css/equipment_plan.css">
        <script src="../js/equipment_plan.js"></script>
    </head>
    <style>

    </style>

    <body>

        <%@ include file="../mainheader.jsp" %>

            <div id="content">

                <!-- div id="headerj" 시작 -->
                <div id="headerj">
                    생산장비계획현황관리
                </div>
                <!-- div id="headerj" 끝 -->


                <!-- updiv -->
                <div class="updiv">




                    <!-- header1 div -->
                    <div id="header1_div">
                        <!-- 생산장비계획현황 div -->
                        <div id="header1_div_text">
                            생산장비계획현황
                        </div>
                        <!-- 생산장비계획현황 끝 div -->
                        <!-- 버튼 div -->
                        <div id="btn_wrap_div">

                            <button type="button" id="btn_eqcheck">선택장비수리신청</button>

                            <button type="button" id="btn_eqfix">선택장비점검신청</button>

                            <button type="button" id="btn_modify">선택장비계획수정</button>

                            <button type="button" id="btn_req">선택일정신청</button>

                        </div>
                        <!-- 버튼 div 끝 -->
                    </div>
                    <!-- header1 div 끝 -->


                    <!-- plan_req_div -->
                    <div id="plan_req_div">
                        <!-- plan_req_table -->
                        <table id="plan_req_table">
                            <!-- thead -->
                            <thead id="plan_req_table_thead">

                            </thead>

                            <!-- tbody -->
                            <tbody id="plan_req_table_tbody">

                            </tbody>
                        </table>
                        <!-- plan_req_table -->
                    </div>
                    <!-- plan_req_div -->




                </div>
                <!-- updiv 끝 -->








                <!-- 중앙 구분선 -->
                <div id="center_line">
                </div>
                <!-- 중앙 구분선 끝 -->













                <!-- downdiv -->
                <div class="downdiv">





                    <!-- header2 div -->
                    <div id="header2_div">
                        <!-- 생산장비수리점검현황 div -->
                        <div id="header2_div_text">
                            생산장비수리점검현황
                        </div>
                        <!-- 버튼 div -->
                        <div id="btn_wrap_div">

                            <button type="button" id="btn_reqcancel">선택계획취소</button>

                            <button type="button" id="btn_accept">선택계획확정</button>

                        </div>
                        <!-- 버튼 div 끝 -->
                    </div>
                    <!-- header2 div 끝 -->



                    <!-- plan_accept_div -->
                    <div id="plan_accept_div">
                        <!-- plan_accept_table -->
                        <table id="plan_accept_table">
                            <!-- thead -->
                            <thead id="plan_accept_table_thead">

                            </thead>

                            <!-- tbody -->
                            <tbody id="plan_accept_table_tbody">

                            </tbody>
                        </table>
                        <!-- plan_accept_table -->
                    </div>
                    <!-- plan_accept_div -->`





                </div>
                <!-- downdiv 끝 -->

            </div>
            <!-- container 끝 -->
















            <div id="alarm_wrap">
                <div id="alarm_content">
                    <div id="alarm_content_text">

                    </div>
                </div>
                <div id="alarm_btn">
                    <button type="button" class="cancelOut">취소</button>
                    <button type="button" class="acceptIn">확인</button>
                </div>
            </div>











            <div id="overlay"></div>
    </body>

    </html>
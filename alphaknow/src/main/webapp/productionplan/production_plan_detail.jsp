<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MainPage</title>
    <link rel="stylesheet" href="../css/production_plan_detail.css">
    <script src="../js/production_plan_detail.js"></script>
</head>
<style>

</style>

<body>

    <%@ include file="../mainheader.jsp"%>

        <div id="content">
            
            <!-- div id="headerj" 시작 -->
    <div id="headerj">
        세부공정생산계획관리
    </div>
    <!-- div id="headerj" 끝 -->


    <!-- updiv -->
    <div class="updiv">




        <!-- header1 div -->
        <div id="header1_div">
            <!-- 계획수립란 div -->
            <div id="header1_div_text">
                계획수립란
            </div>
            <!-- 선택계획수립 div -->
            <div id="btn_req_div">
                <button type="button" id="btn_req">선택계획수립</button>
            </div>
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
            <!-- 계획확정란 div -->
            <div id="header2_div_text">
                계획확정란
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
</body>

</html>
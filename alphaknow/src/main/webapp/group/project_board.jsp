<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/boardWrite.css">
    <link rel="stylesheet" href="../css/styles.css">
    <script src="../js/script.js"></script>
</head>

<style>
    #boardContent {
        width: 90%;
        height: 83vh;
        margin: 0 auto;
        box-sizing: border-box;
        position: relative;
    }

    #boardWrite {
        display: inline-block;
        position: relative;
        align-items: center;
        width: 20%;
        margin-top: 5%;
        margin-left: 3%;
    }

    #boardWrite span {
        position: absolute;
        margin-top: 11%;
        margin-left: 1%;
        font-weight: bold;
        cursor: pointer;
    }

    #boardWrite_btn {
        align-items: center;
        justify-content: center;
        width: 40px;
        height: 40px;
        padding: 0;
        cursor: pointer;
        background-color: white;
        border: none;
        margin-top: 5%;
        margin-left: 4%;
    }

    #boardWrite_btn img {
        max-width: 100%;
        max-height: 100%;
    }

    .boardSearch {
        display: inline-block;
        position: relative;
        align-items: center;
        width: 30%;
        margin-top: 5%;
        margin-left: 46%;
    }

    #searchOption {
        height: 25px;
        border: 1px solid rgba(0, 0, 0, 0.2);
        border-radius: 5px;
        outline: none;
    }

    #searchOption:hover {
        outline: none;
        border: 1px solid rgb(50, 50, 230);
        cursor: pointer;
    }

    #searchOption:focus {
        outline: none;
        border: 1px solid rgb(50, 50, 230);
    }

    #searchText {
        width: 50%;
        height: 25px;
        border: 1px solid rgba(0, 0, 0, 0.2);
        border-radius: 5px;
    }

    #searchText:hover {
        outline: none;
        border: 1px solid rgb(50, 50, 230);
    }

    #searchText:focus {
        outline: none;
        border: 1px solid rgb(50, 50, 230);
    }

    #searchBtn {
        width: 16%;
        height: 25px;
        background-color: #6495ED;
        border: none;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        /* 배경 이미지 애니메이션*/
        transition: background-color 0.3s ease;
    }

    #searchBtn:hover {
        background-color: #4169E1;
    }

    #boardList {
        width: 100%;
        height: 40px;
        line-height: 40px;
        margin-top: 1%;
        border-top: 1px solid #999;
        border-bottom: 1px solid #999;
        background-color: #cecece;
        text-align: center;
    }

    .page_wrap {
        text-align: center;
        font-size: 0;
        margin-top: 45%;
    }

    .page_nation {
        display: inline-block;
    }

    .page_nation .none {
        display: none;
    }

    .page_nation a {
        display: block;
        margin: 0 3px;
        float: left;
        border: 1px solid #e6e6e6;
        width: 28px;
        height: 28px;
        line-height: 28px;
        text-align: center;
        background-color: #fff;
        font-size: 13px;
        color: #999999;
        text-decoration: none;
    }

    .page_nation a:hover {
        border: 1px solid #1f48d4;
    }

    .page_nation .arrow {
        border: 1px solid #ccc;
    }

    .page_nation .pprev {
        background: #f8f8f8 url('../img/page_pprev.png') no-repeat center center;
        margin-left: 0;
    }

    .page_nation .prev {
        background: #f8f8f8 url('../img/page_prev.png') no-repeat center center;
        margin-right: 7px;
    }

    .page_nation .next {
        background: #f8f8f8 url('../img/page_next.png') no-repeat center center;
        margin-left: 7px;
    }

    .page_nation .nnext {
        background: #f8f8f8 url('../img/page_nnext.png') no-repeat center center;
        margin-right: 0;
    }

    .page_nation a.active {
        background-color: #1f48d4;
        color: #fff;
        border: 1px solid #1f48d4;
    }
</style>

<script>
    window.addEventListener('load', function () {
        let pop_main = document.getElementById("pop_main");
        document.getElementById("boardWrite_btn").addEventListener("click", function () {
            pop_main.style.display = "block";
        });

        document.querySelector("#pop_main #close").addEventListener("click", function () {
            pop_main.style.display = "none";
        });
    });
</script>

<body>
	
	<%@ include file="../mainheader.jsp"%>

        <div id="boardContent">

            <div class="main">

                <div id="boardWrite">
                    <button type="button" id="boardWrite_btn">
                        <img src="../img/boardWrite_icon.png">
                    </button>
                    <label for="boardWrite_btn"><span>새글쓰기</span></label>
                </div>

                <div class="boardSearch">
                    <select id="searchOption">
                        <option value="title">제목</option>
                        <option value="title">작성자</option>
                    </select>
                    <input type="text" id="searchText">
                    <button id="searchBtn">검색</button>
                </div>

                <div>
                    <table id="boardList">
                        <thead>
                            <tr>
                                <td align="center" width="5%">
                                    <input type="checkbox">
                                </td>
                                <td width="10%">번호</td>
                                <td>제목</td>
                                <td width="10%">첨부</td>
                                <td width="10%">작성자</td>
                                <td width="20%">작성일</td>
                                <td width="10%">조회</td>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>

                <div class="page_wrap">
                    <div class="page_nation">
                        <a class="pprev" href="#"></a>
                        <a class="prev" href="#"></a>
                        <a href="#" class="active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a class="next" href="#"></a>
                        <a class="nnext" href="#"></a>
                    </div>
                </div>

            </div>

            <div id="pop_main">

                <div id="pop_header">
                    <span>게시글 작성</span>
                </div>

                <div id="pop_title">게시글 작성</div>

                <div id="pop_content">
                    <div class="wrapper_ul">
                        <ul class="wrapper_li">
                            <li id="write_title" class="whole_row">
                                <div class="title">제목</div>
                                <div class="form">
                                    <div class="control_set">
                                        <input type="text">
                                    </div>
                                </div>
                            </li>
                            <li id="write_writer" class="whole_row">
                                <div class="title">작성자</div>
                                <div class="form">
                                    <div class="control_set">
                                        <input type="text">
                                    </div>
                                </div>
                            </li>
                            <li id="write_email" class="whole_row">
                                <div class="title">이메일</div>
                                <div class="form">
                                    <div class="control_set">
                                        <input type="text">
                                    </div>
                                </div>
                            </li>
                            <li id="write_content" class="whole_row">
                                <div class="title">내용</div>
                                <div class="form">
                                    <div class="control_set">
                                        <textarea></textarea>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <div id="btns">
                    <button id="save">저장</button>
                    <button id="reset">다시쓰기</button>
                    <button id="close">닫기</button>
                </div>

            </div>

        </div>
</body>

</html>
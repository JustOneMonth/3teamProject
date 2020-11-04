<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1 게시글 보기</title>
    <link rel="stylesheet" href="/css/board1v1.css">
    <script src="./jquery-3.5.1.min.js"></script>
    <script src="/js/jq1.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <%@include file="user_header.jsp"%>
</head>
<body>
<div id="contentWrapper">
    <div id="contentWrap">
        <div id="content">
            <div id="board1v1">
                <h2 class="tit-page">1:1 문의</h2>
                <div class="page-body">
                    <div class="table-d2-view">
                        <table summary="제목, 파일, 이메일, 핸드폰, 답변, 질문내용, 질문답변">
                            <caption>상담내역</caption>
                            <colgroup>
                                <col width="150"/>
                                <col width="*"/>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th scope="row">
                                    <div class="tb-center">제목</div>
                                </th>
                                <td>
                                    <div class="tb-left tb-bold">[상품문의] 사이즈 문의</div>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="tb-center">이메일</div>
                                </th>
                                <td>
                                    <div class="tb-left">haryang1992@naver.com</div>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="tb-center">연락처</div>
                                </th>
                                <td>
                                    <div class="tb-left">01062031306</div>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="tb-center">답변</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <span class="CSSbuttonGray">Y</span> 답변이 작성되었습니다.
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="tb-center">질문내용</div>
                                </th>
                                <td>
                                    <div class="tb-left tb-cont">사이즈 문의</div>
                                </td>
                            </tr>
                            <tr>
                                <th scope="row">
                                    <div class="tb-center">질문답변</div>
                                </th>
                                <td>
                                    <div class="tb-left tb-cont">안녕하세요~고객님<br/><br/>상품명 미확인으로 확인이 어려우세요 <br/><br/>제품설명에
                                        보시면 정사이즈여부 기재 되어있으신데요<br/><br/>우선 상품명 고객님 사이즈정보 남겨주시구요<br/><br/>사이즈관련은 개인체형마다 달라
                                        <br/>정확한 사이즈 측정은 다소 어려우시니<br/>실측사이즈표 비교 부탁드려요<br/><br/>감사합니다.<br/></div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="btn-foot">
                        <a href="mypage_1v1list.jsp"><span class="CSSbuttonB">목록보기</span></a>
                    </div>
                </div><!-- .page-body -->
            </div><!-- #board1v1 -->
        </div><!-- #content -->
    </div><!-- #contentWrap -->
</div><!-- #contentWrapper-->
<footer>
    <%@include file="user_footer.jsp" %>
</footer>
</body>
</html>
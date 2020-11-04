<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1 게시판 공지 보기</title>
    <link rel="stylesheet" href="/css/board1v1.css">
    <script src="./jquery-3.5.1.min.js"></script>
    <script src="/js/jq1.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <%@include file="user_header.jsp" %>
</head>
<body>
<div id="contentWrapper">
    <div id="contentWrap">
        <div id="content">
            <div id="board1v1">
                <h2 class="tit-page">1:1 문의</h2>
                <div class="page-body">
                    <fieldset>
                        <legend>상담 내역 폼</legend>
                        <div class="table-d2-view">
                            <table summary="제목">
                                <caption>공지사항</caption>
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
                                        <div class="tb-left tb-bold"> 배 / 송 / 공 / 지</div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">
                                        <div class="tb-center">내용</div>
                                    </th>
                                    <td>
                                        <div class="tb-left tb-cont">평균 배송기간은 주문결제 후 약 1-5일 소요되고 있으며<br/><br/>상품에 따라
                                            주문폭주 및 거래처 제작 사정으로 인해 평균 배송기간보다 <br/>2~4일 더 지연될 수도 있습니다. <br/><br/>시간적 여유를
                                            가지고 넉넉히 주문 넣어주시면 최대한 준비되는대로 <br/>발송해드리겠습니다 :D<br/></div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="btn-foot"><a href="mypage_1v1list.jsp"><span class="CSSbuttonB">목록보기</span></a>
                        </div>
                    </fieldset>
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
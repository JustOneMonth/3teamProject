<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="admin_head.jsp" %>
<html>
<head>
    <title>관리자 페이지</title>
    <link rel="stylesheet" href="css/order_and_delivery.css">
</head>
<body>
<div class="box">
    <%--    검색박스 부분--%>
    <div class="search_box">
        <table class="no_margin" width="1000" height="100" align="center" >
            <tr class="color_lightgray">
                <td width="200" class="color_gray">기간 선택</td>
                <td colspan="3"><input type="date"> ~ <input type="date"></td>
            </tr>
            <tr class="color_lightgray">
                <td class="color_gray">처리 단계</td>
                <td width="250">
                    <select name="delivery_status">
                        <option value="배송대기(발송 준비)">배송대기(발송 준비)</option>
                        <option value="배송">배송</option>
                        <option value="주문 취소">주문 취소</option>
                        <option value="반송">반송</option>
                    </select>
                </td>
                <td>검색어</td>
                <td>
                    <select name="delivery_status">
                        <option value="상품명">상품명</option>
                        <option value="주문 번호">주문 번호</option>
                        <option value="구매자 ID">구매자 ID</option>
                        <option value="구매자 성명">구매자 성명</option>
                    </select>
                    <%--   action에 데이터 처리할 페이지 추가  --%>
                    <form method="get" action="">
                        <input id="search" type="text">
                        <input type="button" value="검색">
                    </form>
                </td>
            </tr>
        </table>
    </div>
    <%--  검색 조회 부분--%>
    <div class="order_lookup">
        <table width="900" align="center">
            <tr style="font-size: smaller">
                <td colspan="8" align="right">
                    출력갯수:
                    <select>
                        <option value="10">10</option>
                        <option value="30">30</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                    총 주문 수 : 0건
                </td>
            </tr>
            <tr class="category">
                <td width="110">주문 일자</td>
                <td width="110">주문자 정보</td>
                <td width="300">상품명</td>
                <td width="50">수량</td>
                <td width="110">판매 금액</td>
                <td width="110">처리 여부</td>
                <td width="110" style="border-right: 1px solid black;">결제 상태</td>
            </tr>
        </table>
        <div>
            <%--        검색 결과 출력부분     --%>
            <table width="1000" align="center" class="post">
                <tr style="text-align: center">
                    <td width="110"><input type="checkbox"> 2020-10-20</td>
                    <td width="110">hi_im_user</td>
                    <td width="300">겨울 자켓 나이키 어쩌고저쩌고12342342323432</td>
                    <td width="50">1</td>
                    <td width="110">499,000</td>
                    <td width="110">발송 대기</td>
                    <td width="110">결제 완료</td>
                    <td>
                        <button>삭제</button>
                    </td>
                </tr>
            </table>
            <form method="post" action="">
                <input type="button" value="발송대기 일괄배송처리">
            </form>
        </div>
    </div>
</div>
</body>
</html>

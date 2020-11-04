<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>저스트원: 주문조회</title>
    <link rel="stylesheet" href="./css/ordercheck.css">
    <%@include file="user_header.jsp" %>
    <script>
        /*
        * 구현할 스크립트
        * 1. 주문 검색결과 페이징처리, 결과 없으면 없다는 메세지 표시
        * 2. 주문조회, 1:1문의, 회원탈퇴 버튼 클릭 이벤트 처리
        * */
    </script>
</head>
<body>
<div id="contentWrap-myOrder">
    <div id="content-myOrder">
        <div id="myOrder">
            <h2 class="tit-page">주문조회</h2>
            <div class="page-body">
                <div class="mypage_menu">
                    <ul>
                        <li><a href="">주문조회</a></li>
                        <li><a href="">1:1 문의</a></li>
                        <li><a href="">회원탈퇴</a></li>
                    </ul>
                </div>
                <div class="table-d2-list">
                    <table>
                        <colgroup>
                            <col width="70">
                            <col width="90">
                            <col width="*">
                            <col width="100">
                            <col width="95">
                            <col width="90">
                            <col width="90">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>
                                <div class="tb-center">번호</div>
                            </th>
                            <th>
                                <div class="tb-center">주문일자</div>
                            </th>
                            <th>
                                <div class="tb-center">상품명</div>
                            </th>
                            <th>
                                <div class="tb-center">결제금액</div>
                            </th>
                            <th>
                                <div class="tb-center">주문현황</div>
                            </th>
                            <th>
                                <div class="tb-center">상세조회</div>
                            </th>
                            <th>
                                <div class="tb-center">배송조회</div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="tb-center">1</div>
                            </td>
                            <td>
                                <div class="tb-center">2020.10.26</div>
                            </td>
                            <td>
                                <div class="tb-left">상품명</div>
                            </td>
                            <td>
                                <div class="tb-center tb-bold">40,400원</div>
                            </td>
                            <td>
                                <div class="tb-center"><a href="">결제대기</a></div>
                            </td>
                            <td>
                                <div class="tb-center"><a href=""><span class="CSSbuttonGray">조회</span></a></div>
                            </td>
                            <td>
                                <div class="tb-center"><a href=""><span class="CSSbutton">조회</span></a></div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="paginate">
                    <a href="" class="now">1</a>
                    <a href="">2</a>
                    <a href="">3</a>
                    <a href="" class="btn_last">>></a>
                </div>
                <ul class="foot-dsc">
                    <p>
                    <li>상품명 또는 주문상세의 조회 버튼을 클릭하시면, 주문상세내역을 확인하실 수 있습니다.</li>
                    </p>
                    <p>
                    <li>배송현황의 조회 버튼을 클릭하시면, 해당 주문의 배송 현황을 한눈에 확인하실 수 있습니다.</li>
                    </p>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
<footer>
    <%@include file="user_footer.jsp" %>
</footer>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>저스트원 관리자</title>
    <%@ include file="admin_head.jsp" %>
    <link rel="stylesheet" href="/css/admin_main.css">
</head>
<body>
<div class="box">
    <%--    매출 현황 부분--%>
    <%--    현재시각 넣을 부분--%>
    <div style="height: 1px"></div>
    <h4>오늘의 매출 현황<a class="font_small" id="current_time">(현재 시각)</a></h4>
    <script>
        let time_txt = document.getElementById('current_time');
        let today = new Date();
        time_txt.textContent = "(" + today.toLocaleString() + " 기준)";
    </script>
    <div class="lookup">
        <div class="cancel_cnt">
            <div class="box_1">
                <div class="img_frame"><img class="img" src="images/order.JPG">
                    <%--        이미지 링크삽입할 것--%>
                </div>
                <div class="box_2"><b>주문</b><a class="font_small">(0건)</a>
                    <%--                db에서 불러온 취소 개수는 b태그에 삽입--%>
                    <div class="font_large"><b>0</b><a class="font_small">원</a></div>
                </div>
            </div>
        </div>
        <div class="cancel_cnt">
            <div class="box_1">
                <div class="img_frame"><img class="img" src="images/payment.JPG">
                    <%--        이미지 링크삽입할 것--%>
                </div>
                <div class="box_2"><b>결제</b><a class="font_small">(0건)</a>
                    <%--                db에서 불러온 교환 개수는 b태그에 삽입--%>
                    <div class="font_large"><b>0</b><a class="font_small">원</a></div>
                </div>
            </div>
        </div>
        <div class="cancel_cnt">
            <div class="box_1">
                <div class="img_frame"><img class="img" src="images/refund.JPG">
                    <%--        이미지 링크삽입할 것--%>
                </div>
                <div class="box_2"><b>환불</b><a class="font_small">(0건)</a>
                    <%--                db에서 불러온 반품 개수는 b태그에 삽입--%>
                    <div class="font_large"><b>0</b><a class="font_small">원</a></div>
                </div>
            </div>
        </div>
    </div>
    <%--  주문 현황 부분  --%>
    <h4>주문 현황<a class="font_small">(최근 1달 기준)</a></h4>
    <div class="lookup">
        <div class="order_lookup">
            <div class="margin_auto small_box">
                <h3 align="center"><b>0</b></h3>
                <p align="center" class="order_txt" c>입금 전</p>
            </div>
        </div>
        <div class="order_lookup">
            <div class="margin_auto small_box">
                <h3 align="center"><b>0</b></h3>
                <p align="center" class="order_txt">배송 준비</p>
            </div>
        </div>
        <div class="order_lookup">
            <div class="margin_auto small_box">
                <h3 align="center"><b>0</b></h3>
                <p align="center" class="order_txt">배송 대기</p>
            </div>
        </div>
        <div class="order_lookup">
            <div class="margin_auto small_box">
                <h3 align="center"><b>0</b></h3>
                <p align="center" class="order_txt">배송 중</p>
            </div>
        </div>
    </div>
    <%--취소/ 교환/ 반품 현황--%>
    <h4>취소 / 교환 / 반품 현황<a class="font_small">(최근 1달 기준)</a></h4>
    <div class="lookup">
        <div class="order_lookup">
            <div class="margin_auto small_box">
                <h3 align="center"><b>0</b></h3>
                <p align="center" class="cancel_txt">취소</p>
            </div>
        </div>
        <div class="order_lookup">
            <div class="margin_auto small_box">
                <h3 align="center"><b>0</b></h3>
                <p align="center" class="cancel_txt">교환</p>
            </div>
        </div>
        <div class="order_lookup">
            <div class="margin_auto small_box">
                <h3 align="center"><b>0</b></h3>
                <p align="center" class="cancel_txt">환불</p>
            </div>
        </div>
        <div class="order_lookup" style="background-color: #C6E8FF">
        </div>
    </div>
</div>

</body>
</html>

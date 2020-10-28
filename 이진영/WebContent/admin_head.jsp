
<%--

작업할 페이지에 <%@ include file="admin_head.jsp" %> 적어주면 파일 적용됨.
헤드파일을 적용할 페이지에서는 charset=utf-8 입력할때 UTF 대문자로 통일시켜줘야 함
사이드바 크기가 210px이기 때문에 margin-left: 210px 최상위 태그에 적용시켜줘야함

--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>저스트원 관리자</title>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .w3-sidebar a {font-family: "Roboto", sans-serif}
    body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
    .admin {
        font-size: small;
        font-weight: bold;
    }
    .underline_del {
        text-decoration: none;
    }
</style>
</head>
<body class="w3-content" style="max-width:2000px">
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-top" style="z-index:3;width:210px" id="mySidebar">
    <div class="w3-container w3-display-container w3-padding-16">
                                <!--        ***이동 링크 달기 -->
        <h3 class="w3-wide"><b><a class="underline_del" href="#">JustOne 홈</a></b></h3>
    </div>
    <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
<!--        커뮤니티-->
        <a name="community" onclick="myAccFunc(this.name)" href="#" class="w3-bar-item w3-button">커뮤니티</a>
        <div id="community" class="w3-bar-block w3-hide w3-padding-large w3-medium">
            <a href="#" class="w3-bar-item w3-button">공지 사항</a>
            <a href="#" class="w3-bar-item w3-button">상담 게시판</a>
            <a href="#" class="w3-bar-item w3-button">상품 리뷰 관리</a>
        </div>
<!--        상품 관리-->
        <a name="product" onclick="myAccFunc(this.name)" href="#" class="w3-bar-item w3-button">상품 관리</a>
        <div id="product" class="w3-bar-block w3-hide w3-padding-large w3-medium">
            <a href="#" class="w3-bar-item w3-button">상품 등록</a>
            <a href="#" class="w3-bar-item w3-button">내 상품 관리</a>
            <a href="#" class="w3-bar-item w3-button">재고 관리</a>
        </div>
<!--        주문 배송 관리-->
        <a name="order_delivery" onclick="myAccFunc(this.name)" href="javascript:void(0)" class="w3-bar-item w3-button" id="myBtn">
            주문/배송관리</a>
        <div id="order_delivery" class="w3-bar-block w3-hide w3-padding-large w3-medium">
            <a href="#" class="w3-bar-item w3-button">주문조회/배송</a>
            <a href="#" class="w3-bar-item w3-button">취소 / 교환 / 반품</a>
            <a href="#" class="w3-bar-item w3-button">예약 판매 주문 관리</a>
        </div>
        <a name="member" onclick="myAccFunc(this.name)" href="#" class="w3-bar-item w3-button">회원 관리</a>
        <div id="member" class="w3-bar-block w3-hide w3-padding-large w3-medium">
            <a href="#" class="w3-bar-item w3-button">회원정보 관리</a>
            <a href="#" class="w3-bar-item w3-button">회원활동 관리</a>
            <a href="#" class="w3-bar-item w3-button">회원정보 일괄 등록</a>
            <a href="#" class="w3-bar-item w3-button">휴면회원 관리</a>
            <a href="#" class="w3-bar-item w3-button">회원 탈퇴</a>
        </div>
<!--        게시판-->
<!--        온클릭이벤트에 게시판 FAQ 페이지로 이동할 함수 만들어 넣기-->
        <a href="#" class="w3-bar-item w3-button">게시판(QnA)</a>
<!--        결제 관리-->
        <a name="payment" onclick="myAccFunc(this.name)" href="#" class="w3-bar-item w3-button">결제 관리</a>
        <div id="payment" class="w3-bar-block w3-hide w3-padding-large w3-medium">
            <a href="#" class="w3-bar-item w3-button">결제 환경설정</a>
            <a href="#" class="w3-bar-item w3-button">예치금 결제리스트</a>
            <a href="#" class="w3-bar-item w3-button">현금영수증 발급/조회</a>
        </div>
<!--        할인 쿠폰 관리-->
        <a name="coupon" onclick="myAccFunc(this.name)" href="#" class="w3-bar-item w3-button">할인쿠폰 관리</a>
            <div id="coupon" class="w3-bar-block w3-hide w3-padding-large w3-medium">
                <a href="#" class="w3-bar-item w3-button">쿠폰 생성하기</a>
                <a href="#" class="w3-bar-item w3-button">쿠폰 개별 발급</a>
                <a href="#" class="w3-bar-item w3-button">자동발급 쿠폰 관리</a>
                <a href="#" class="w3-bar-item w3-button">발급 완료 쿠폰 관리</a>
            </div>
<!--        정산 매출 관리-->
        <a name="sales" onclick="myAccFunc(this.name)" href="#" class="w3-bar-item w3-button">정산/매출 관리</a>
        <div id="sales" class="w3-bar-block w3-hide w3-padding-large w3-medium">
            <a href="#" class="w3-bar-item w3-button">판매상품 매출조회</a>
            <a href="#" class="w3-bar-item w3-button">쿠폰 개별 발급</a>
        </div>
<!--        사이트 접속자 현황-->
        <a href="#" class="w3-bar-item w3-button">사이트 접속자 현황</a>
    </div>
</nav>

<div class="w3-main" style="margin-left:250px">
    <!-- Push down content on small screens -->
    <div class="w3-hide-large" style="margin-top:83px"></div>

    <!-- Top header -->
    <header class="w3-container w3-xlarge">
        <p class="w3-right">
            <a href="#" class="underline_del admin" style="margin-right: 30px">로그인</a>
            <a href="#" class="underline_del admin">회원가입</a>
        </p>
    </header>
    <!-- End page content -->
</div>

<script>
    //클릭시 하위 버튼
    function myAccFunc(clicked_id) {
        let x = document.getElementById(clicked_id);
        console.log(x);
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }

</script>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>저스트원 결제창</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
    <script>
        let IMP = window.IMP; // 생략가능
        IMP.init('imp90010320');  // 가맹점 식별 코드
        /*
        IMP.request_pay를 호출하기 전에 여러분의 (데이터베이스에 주문정보를 INSERT 하고
        서버가 생성한 주문 번호를 param의 merchant_uid속성에 지정하기를 권장드립니다.
        결제 완료 후 결제 위변조 여부를 검증하는 단계에서 신뢰도있는 검증을 위해
        여러분의 서버에서 주문정보를 조회해야 하기 때문입니다.
        */
        IMP.request_pay({
            pg : 'kakao', // 결제방식
            pay_method : 'card',	// 결제 수단
            merchant_uid : 'merchant_' + new Date().getTime(),  // 주문번호
            name : '주문명: 결제 테스트',	// order 테이블에 들어갈 주문명 혹은 주문 번호
            amount : '100',	// 결제 금액
            buyer_email : '',	// 구매자 email
            buyer_name :  '',	// 구매자 이름
            buyer_tel :  '',	// 구매자 전화번호
            buyer_addr :  '',	// 구매자 주소
            buyer_postcode :  '',	// 구매자 우편번호
            m_redirect_url : '/khx/payEnd.action'	// 결제 완료 후 보낼 컨트롤러의 메소드명
        }, function(rsp) {
            if ( rsp.success ) {
                // 결제 성공시 로직
                let msg = '결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '주문 번호호 :' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
            } else {
                // 결제 실패시 로직직
               let msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
        });
    </script>
</head>
<body>
</body>
</html>
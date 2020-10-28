<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="test.jsp"%>
<!DOCTYPE html>
<html>
<title>저스트원</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/member_out.css">
</head>
<body>
<div class="box">
    <div class="out_txt">
        <h2><b>회원 탈퇴 신청</b></h2>
    </div>
    <div class="margin_auto comment">
        <p>저희 쇼핑몰의 부족했던 점과 아쉬웠던 점을 적어주십시오.<br>
            더 좋은 모습으로 발전하도록 최선을 다하겠습니다.<br>
            <br>
            앞으로 더 나은 모습으로 고객님을 다시 만날 수 있도록 노력하겠습니다.<br>
            그동안 이용해주신 것을 진심으로 감사드립니다.
        </p>
    </div>
    <div class="reason_box margin_auto">
        <table align="center">
            <td class="reason_table1" width="200">사유</td>
            <td width="1000"><textarea type="text" class="write_box"></textarea></td>
        </table>
        <div class="margin_auto btn_box">
            <button class="out_btn">회원 탈퇴</button>
            <button class="cancel_btn">탈퇴 취소</button>
        </div>
    </div>
</div>

</body>
</html>
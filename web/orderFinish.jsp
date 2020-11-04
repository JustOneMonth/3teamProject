<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>저스트원: 주문완료</title>
    <link rel="stylesheet" href="./css/ordercomplete.css">
    <%--    헤드 파일 적용--%>
    <%@ include file="user_header.jsp" %>
    <script src="./jquery-3.5.1.min.js"></script>
    <script>
        /*
        * 구현할 스크립트
        * 1. 주문 확인버튼 클릭시 주문상세내역.jsp로 이동
        * 2. 목록 클릭이벤트 처리
        * */
    </script>
</head>
<body>
<div id="contentWrap-order">
    <div id="content-order">
        <div id="ordercomplete">
            <div class="page-body">
                <h3 class="stit">주문 상세 내역</h3>
                <div class="table-cart">
                    <table>
                        <colgroup>
                            <col width="150">
                            <col width="*">
                            <col width="110">
                            <col width="110">
                        </colgroup>
                        <thead>
                        <tr>
                            <th>
                                <div class="tb-center">사진</div>
                            </th>
                            <th>
                                <div class="tb-center">상품명</div>
                            </th>
                            <th>
                                <div class="tb-center">수량</div>
                            </th>
                            <th>
                                <div class="tb-center">가격</div>
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <div class="tb-center"><span style="display: inline-block; width: 70px; height: 70px;">이미지</span>
                                </div>
                            </td>
                            <td>
                                <div class="tb-left"><a href="">상품명</a></div>
                            </td>
                            <td>
                                <div class="tb-center">수량(~개)</div>
                            </td>
                            <td>
                                <div class="tb-center tb-bold">26,900원</div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <div class="tb-left" id="option">색상 : lorem 사이즈: S</div>
                            </td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="4">
                                <div class="tb-right">총 상품금액 : 53,800원 + 배송료 2,500원 = <strong>56,300원</strong></div>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
                <h3 class="stit">결제방법</h3>
                <div>
                    <table class="table-ordercomplete-info">
                        <colgroup>
                            <col width="170">
                            <col width="*">
                        </colgroup>
                        <tbody>
                        <tr>
                            <th>
                                <div class="tb-left">결제방법</div>
                            </th>
                            <td>
                                <div class="tb-left">
                                    <p><span
                                            class="pay_method">무통장 입금 : 농협중앙회 100056550050521 (예금주 : 한달짜리) <span>황준호</span></span>
                                        <span class="pay_info">&nbsp;(입금확인후 배송이 됩니다.)</span></p>
                                    <p>입금자명 : <span class="bank_name">황준호</span></p>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <h3 class="stit">구매자 정보</h3>
                <div>
                    <table class="table-ordercomplete-info">
                        <colgroup>
                            <col width="170">
                            <col width="*">
                        </colgroup>
                        <tbody>
                        <tr class="nbg">
                            <th>
                                <div class="tb-left">이름</div>
                            </th>
                            <td>
                                <div class="tb-left">황준호</div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div class="tb-left">이메일</div>
                            </th>
                            <td>
                                <div class="tb-left">ssmm0205@naver.com</div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div class="tb-left">연락처</div>
                            </th>
                            <td>
                                <div class="tb-left">010-3539-5626</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <h3 class="stit">배송지 정보</h3>
                <div>
                    <table class="table-ordercomplete-info">
                        <colgroup>
                            <col width="170">
                            <col width="*">
                        </colgroup>
                        <tbody>
                        <tr class="nbg">
                            <th>
                                <div class="tb-left">이름</div>
                            </th>
                            <td>
                                <div class="tb-left">황준호</div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div class="tb-left">연락처1</div>
                            </th>
                            <td>
                                <div class="tb-left">055-1234-1234</div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div class="tb-left">연락처2</div>
                            </th>
                            <td>
                                <div class="tb-left">010-1234-1234</div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div class="tb-left">주소</div>
                            </th>
                            <td>
                                <div class="tb-left">서울 광진구 00대로 123</div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <div class="tb-left">주문메시지<em class="d-block">(100자내외)</em></div>
                            </th>
                            <td>
                                <div class="tb-left">안녕하세요</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="admin-msg">
                    <p><label>황준호</label>님의 주문이 완료되었습니다.</p>
                    <br>
                    <p>귀하의 주문확인 번호는 <span>20201026123456-12345678910</span>입니다.</p>
                    <p>입금방법이 무통장입금의 경우 계좌번호를 메모하세요.</p>
                    <p>입금 확인 후 상품을 준비하여 배송해 드리겠습니다.</p>
                    <br>
                </div>
                <div class="btn-foot">
                    <a href="" class="CSSbuttonLog">주문확인</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<footer>
    <%@ include file="user_footer.jsp" %>
</footer>
</html>

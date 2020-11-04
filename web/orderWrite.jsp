<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>저스트원: 주문서</title>
    <link rel="stylesheet" href="./css/orderlist.css?ver=1">
    <script src="./js/jquery-1.10.2.js" />
    <script src="./js/orderlist.js"/>
    <script>
        /*
        * 구현할 기능
        * 1. 주문자 정보에서 이메일 입력불가 처리. 입력하려면 직접입력 선택해야만 하게.
        * 3. 주소 검색 api 연동
        * 4. 체크박스, 빈칸 검색하고 주문하기 버튼 클릭가능하게 처리
        * */
    </script>
    <%@include file="user_header.jsp"%>
</head>
<body>
<div class="contentWrap-order">
    <div id="content-order">
        <div id="order">
            <h2 class="tit-page">주문서작성</h2>
            <div class="page-body">
                <fieldset>
                    <legend>주문 폼</legend>
                    <h3>주문리스트</h3>
                    <div class="table-order">
                        <table>
                            <caption>주문리스트</caption>
                            <colgroup>
                                <col style="width: 100px;">
                                <col style="width: 600px;">
                                <col style="width: 100px;">
                                <col style="width: 100px;">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>사진</th>
                                <th>상품명</th>
                                <th>수량</th>
                                <th>가격</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="tb-center">사진</div>
                                </td>
                                <td>
                                    <div class="tb-left"><a href="">상품명</a></div>
                                </td>
                                <td>
                                    <div class="tb-center">수량</div>
                                </td>
                                <td>
                                    <div class="tb-center tb-bold">가격</div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <div id="option">[옵션] : 색상 : 중청, 사이즈 : S</div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <h3 class="tit-cart2">주문자정보</h3>
<%--                    회원 정보(이름, 이메일, 전화번호 불러와서 세팅)                  --%>
                    <div class="table-order">
                        <table>
                            <colgroup>
                                <col style="width: 150px;">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>
                                    <div class="txt-l">이름</div>
                                </th>
                                <td>황준호</td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="txt-l">이메일</div>
                                </th>
                                <td><input type="text" maxlength="20" class="MS_input_txt box"><span>@</span>
                                    <span><input type="text" id="emailbox" value="naver.com" class="box"
                                                 style="margin-top: 3px; display: inline-block;"></span>
                                    <select name="emailsel" id="emailsel" class="MS_email" onchange="selectEmail(this)" readonly="true">
                                        <option value="naver.com">naver.com</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hotmail.com">hotmail.com</option>
                                        <option value="nate.com">nate.com</option>
                                        <option value="direct" id="direct">직접입력</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="txt-l">연락처</div>
                                </th>
                                <td>
                                    <select name="emergency11" id="emergency11" class="MS_tel box">
                                        <option value>선택</option>
                                        <option value="010">010</option>
                                        <option value="02">02</option>
                                        <option value="031">031</option>
                                        <option value="032">032</option>
                                        <option value="033">033</option>
                                        <option value="034">034</option>
                                        <option value="041">041</option>
                                        <option value="042">042</option>
                                        <option value="043">043</option>
                                        <option value="044">044</option>
                                        <option value="051">051</option>
                                        <option value="052">052</option>
                                        <option value="052">052</option>
                                        <option value="054">054</option>
                                        <option value="055">055</option>
                                        <option value="061">061</option>
                                        <option value="062">062</option>
                                        <option value="063">063</option>
                                        <option value="064">064</option>
                                        <option value="0502">0502</option>
                                        <option value="0503">0503</option>
                                        <option value="0504">0504</option>
                                        <option value="0505">0505</option>
                                        <option value="0507">0507</option>
                                        <option value="0508">0508</option>
                                        <option value="070">070</option>
                                        <option value="080">080</option>
                                    </select>
                                    <span>-</span>
                                    <input type="text" size="4" maxlength="4" class="widthbox box">
                                    <span>-</span>
                                    <input type="text" size="4" maxlength="4" minlength="4" class="widthbox box">
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <h3 class="tit-cart2">배송정보
<%--                        체크시 배송정보 이름, 연락처 항목에 값 세팅--%>
                        <label> <input type="checkbox" onclick="copydata">위 정보와 같음</label>
                    </h3>
                    <div class="table-order">
                        <table>
                            <caption>배송 정보 입력</caption>
                            <colgroup>
                                <col style="width: 150px;">
                                <col>
                                <col style="width: 150px;">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>
                                    <div class="txt-l">이름</div>
                                </th>
                                <td colspan="3"><input type="text" class="box"></td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="txt-l">연락처 1</div>
                                </th>
                                <td>
                                    <select name="emergency11" id="emergency2" class="MS_tel box">
                                        <option value>선택</option>
                                        <option value="010">010</option>
                                        <option value="02">02</option>
                                        <option value="031">031</option>
                                        <option value="032">032</option>
                                        <option value="033">033</option>
                                        <option value="034">034</option>
                                        <option value="041">041</option>
                                        <option value="042">042</option>
                                        <option value="043">043</option>
                                        <option value="044">044</option>
                                        <option value="051">051</option>
                                        <option value="052">052</option>
                                        <option value="052">052</option>
                                        <option value="054">054</option>
                                        <option value="055">055</option>
                                        <option value="061">061</option>
                                        <option value="062">062</option>
                                        <option value="063">063</option>
                                        <option value="064">064</option>
                                        <option value="0502">0502</option>
                                        <option value="0503">0503</option>
                                        <option value="0504">0504</option>
                                        <option value="0505">0505</option>
                                        <option value="0507">0507</option>
                                        <option value="0508">0508</option>
                                        <option value="070">070</option>
                                        <option value="080">080</option>
                                    </select>
                                    <span>-</span>
                                    <input type="text" size="4" maxlength="4" class="widthbox box">
                                    <span>-</span>
                                    <input type="text" size="4" maxlength="4" minlength="4" class="widthbox box">
                                </td>
                                <th style="border: 1px solid #eee;">
                                    <div class="txt-c">연락처 2</div>
                                </th>
                                <td style="padding-left: 10px;">
                                    <select name="" id="" class="MS_tel box">
                                        <option value="">선택</option>
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="018">018</option>
                                    </select>
                                    <span>-</span>
                                    <input type="text" size="4" maxlength="4" class="widthbox box">
                                    <span>-</span>
                                    <input type="text" size="4" maxlength="4" minlength="4" class="widthbox box">
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="txt-l">배송지 선택</div>
                                </th>
                                <td colspan="3">
                                    <input type="radio" name="receive_place"><span>자택</span>
                                    <input type="radio" name="receive_place"><span>회사</span>
                                    <input type="radio" name="receive_place"><span>신규 배송지</span>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="txt-l">주소</div>
                                </th>
                                <td colspan="3">
                                    <input name="post1" id="post1" size="3" type="">-<input name="post2" id="post2" size="3">
                                    <a href="">우편번호</a>
                                    <div>
                                        <input type="text" name="address1" id="address2" size="50">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="txt-l">주문메세지<br><span>(100자내외)</span></div>
                                </th>
                                <td colspan="3"><textarea name="message" id="message" cols="50" rows="5"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="txt-l">무통장 입금자명</div>
                                </th>
                                <td colspan="3">
                                    <input type="text" name="bankname" size="10" maxlength="40" class="MS_input_txt">
                                    <span>(주문자와 같을경우 생략가능)</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <label class="chk-label">
                        <input type="checkbox" name="modify_address"><span> 해당 배송지 정보를 나의 회원정보로 등록합니다.</span>
                    </label>
                    <h3>결제정보</h3>
                    <div class="table-order">
                        <table>
                            <caption>결제정보</caption>
                            <colgroup>
                                <col style="width: 150px;">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>
                                    <div class="txt-l">결제방법</div>
                                </th>
                                <td>
                                    <ul>
                                        <li>
                                            <input type="radio" class="chk-rdo" name="pay" checked><span>신용카드</span>
                                        </li>
                                        <li>
                                            <input type="radio" class="chk-rdo" name="pay"><span>무통장 입금</span>
                                            <select name="pay-data" id="pay-data"
                                                    class="w280 MK_bank_select_list MK_pay_add_choice">
                                                <option value="국민은행">국민은행 : 10005655005031 (예금주: 한달짜리)</option>
                                                <option value="국민은행">하나은행 : 10005655005031 (예금주: 한달짜리)</option>
                                                <option value="국민은행">기업은행 : 10005655005031 (예금주: 한달짜리)</option>
                                            </select>
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <h3>주문자 동의</h3>
                    <div class="table-order">
                        <table>
                            <caption>주문자 동의</caption>
                            <colgroup>
                                <col style="width: 150px;">
                                <col>
                            </colgroup>
                            <tbody>
                            <tr>
                                <td colspan="2">
                                    <label class="label">
                                        <input type="checkbox" name="pay_agree">
                                        <span> 상기 결제정보를 확인하였으며, 구매진행에 동의합니다.</span>
                                    </label>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="table-order tot-order">
                        <table>
                            <colgroup>
                                <col style="width: 150px;">
                                <col>
                            </colgroup>
                            <thead>
                            <tr>
                                <th>
                                    <div>최종 결제금액</div>
                                </th>
                                <td>
                                    <strong class="price">
                                        <em>
                                            <span>29,400</span>
                                        </em>
                                        <span>원</span>
                                    </strong>
                                </td>
                            </tr>
                            </thead>
                        </table>
                    </div>
                    <div class="paybutton">
                        <button class="CSSbuttonLog">주문하기</button>
                        <button class="CSSbuttonLogW">주문취소</button>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</div>
</body>
<footer>
    <%@include file="user_footer.jsp"%>
</footer>
</html>

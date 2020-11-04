<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
    <link rel="stylesheet" href="/css/regist.css">
    <script src="./jquery-3.5.1.min.js"></script>
    <script src="./js/jq1.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <%@include file="user_header.jsp" %>
</head>
<body>

<div id="contentWrapper">
    <div id="contentWrap">
        <div id="content">
            <div id="join">
                <h2 class="tit-page">회원정보수정</h2>
                <form name="form1" method="post" id="join_form" action="/shop/idinfo.html" enctype='multipart/form-data'
                      autocomplete="off">
                    <!-- 일반회원 기본 노출 -->
                    <div class="table-order-info join-form">
                        <table class="order-table">
                            <colgroup>
                                <col width="170"/>
                                <col width="*">
                            </colgroup>
                            <tr>
                                <th>
                                    <div class="tb-left">이름</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <input type="text" name="hname" id="hname" value="" class="MS_input_txt w200"
                                               size="15" maxlength="30" disabled/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">아이디</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        아이디
                                        <input type="hidden" name="id" id="id" value="" class=""/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">비밀번호</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <input type="password" name="password1" id="password1" class="MS_input_txt w200"
                                               value="" size="15" maxlength="20"/>
                                        <span class="idpw-info">* 영문 대소문자/숫자/특수문자를 혼용하여 2종류 10~16자 또는 3종류 8~16자</span>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">비밀번호 확인</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <input type="password" name="password2" id="password2" class="MS_input_txt w200"
                                               value="" size="15" maxlength="20"/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">생일/성별</div>
                                </th>
                                <td>
                                    <div class="tb-left pl-16">
                                        <input type="text" name="birthday" id="birthday" class="MS_input_txt w200"
                                               disabled value="" size="15" maxlength="8"/>&nbsp;&nbsp;
                                        <label><input type="radio" name="gender" value="1" class="MS_radio"/>남 </label>
                                        <label><input type="radio" name="gender" value="2" class="MS_radio"/>여 </label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">우편번호</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <input type="text" name="zipcode" id="sample6_postcode"
                                               class="MS_input_txt zipcode" value="" size="5" readonly/>
                                        <input type="button" value="우편번호검색" onclick="sample6_execDaumPostcode()"
                                               class="CSSbuttonGray">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">주소</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <input type="text" name="address1" id="sample6_address"
                                               class="MS_input_txt address1 w415" value="" size='40' maxlength="100"
                                               readonly="readonly"/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">상세주소</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <input type="text" name="address2" id="sample6_detailAddress"
                                               class="MS_input_txt address2 w415" value="" size='40' maxlength="100"/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">이메일</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <input type="text" name="email1" id="email1" class="MS_input_txt w200" size="10"
                                               maxlength="20" value=""/>
                                        <span>@</span>
                                        <span id="direct_email" style="margin-top:3px;display:inline-block">
                                        <input type="text" name="email2" id="email2" class="MS_input_txt w200" value=""
                                               size="15" maxlength="25"/>
                                        </span>
                                        <select name="emailSelection" id="emailSelection" class="MS_select MS_email"
                                                style="margin-right:5px;">
                                            <option value='direct' selected="selected">직접입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="hotmail.com">hotmail.com</option>
                                            <option value="hanmail.net">hanmail.net</option>
                                            <option value="nate.com">nate.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                        </select>
                                        <a href="#" class="CSSbuttonGray">중복확인</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">휴대폰</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <input type="hidden" name="etcphone" form="join_form" value=""/>
                                        <select name="etcphone1" id="etcphone1" form="join_form"
                                                class="MS_select MS_tel">
                                            <option value=''>선택</option>
                                            <option value="010">010</option>
                                            <option value="011">011</option>
                                            <option value="016">016</option>
                                            <option value="017">017</option>
                                            <option value="018">018</option>
                                            <option value="019">019</option>
                                        </select> - <input type="text" name='etcphone2' form="join_form" id="etcphone2"
                                                           class="MS_input_tel w80" value="" size="4" maxlength="4"/> -
                                        <input type="text" name="etcphone3" form="join_form" id="etcphone3"
                                               class="MS_input_tel w80" value="" size="4" maxlength="4" minlength=4/>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">뉴스메일</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <label style="margin-right:20px;">
                                            <input type="radio" name="emailreceive" value="Y"/> 받습니다.</label>
                                        <label><input type="radio" name="emailreceive" value="N" checked/> 받지
                                            않습니다.</label>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <div class="tb-left">SMS안내</div>
                                </th>
                                <td>
                                    <div class="tb-left">
                                        <label style="margin-right:20px;"> <input type="radio" name="smsreceive"
                                                                                  form="join_form" value="Y"/>
                                            받습니다.</label>
                                        <label><input type="radio" name="smsreceive" form="join_form" value="N"
                                                      checked/> 받지 않습니다.</label>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div> <!-- #personInfo -->

                    <div class="btn-area">
                        <a href="#" class="CSSbuttonLog">확인</a>
                        <a href="#" class="CSSbuttonLogW">취소</a>
                    </div>
                    <!-- use_contract -->
                </form>
            </div><!-- #join -->
        </div><!-- #content -->
    </div><!-- #contentWrap -->
</div><!-- #contentWrapper-->
<footer>
    <%@include file="user_footer.jsp"%>
</footer>
</body>
</html>
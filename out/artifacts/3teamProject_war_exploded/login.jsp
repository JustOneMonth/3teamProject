<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원/관리자 로그인</title>
    <link rel="stylesheet" href="./css/login.css">
    <script src="./jquery-3.5.1.min.js"></script>
    <script src="/js/jq1.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <%@include file="user_header.jsp"%>
</head>
<body>
    <!-- 로그인 -->
    <script type="text/javascript" src="/shopimages/jojean/template/work/1147/header.1.js?t=202010161554"></script>
    <div id="contentWrapper">
        <div id="contentWrap">
            <div id="content">
                <div id="loginWrap">
                
                    <h2 class="tit-page">로그인</h2>
                    
                    <div class="page-body">
                        <div class="mlog-sign">
                            <div class="mlog">
                                <h3 class="log-tit">회원 로그인</h3>
                                <form action="/shop/member.html" method="post" name="form1" autocomplete="off">
<input type="hidden" name="type" value="login" />
<input type="hidden" name="code" value="" />
<input type="hidden" name="mcode" value="" />
<input type="hidden" name="scode" value="" />
<input type="hidden" name="xtype" value="" />
<input type="hidden" name="startdate" value="201911061100" />
<input type="hidden" name="auctionnum" value="" />
<input type="hidden" name="auction_uid" value="">
<input type="hidden" name="gongcode" value="" />
<input type="hidden" name="brandcode" value="" />
<input type="hidden" name="branduid" value="" />
<input type="hidden" name="sslid" value="jojean" />
<input type="hidden" name="sslip" value="www.justone.co.kr" />
<input type="hidden" name="msecure_key" />
<input type="hidden" name="returnurl" value="https://www.justone.co.kr/shop/idinfo.html?type=new&mem_type=person&first=" />                                    <fieldset>
                                        <legend>member login</legend>
                                        <ul class="frm-list">
                                            <li><label>아이디</label><input type="text" name="id" maxlength="20" onblur="document.form1.passwd.focus();"  class="MS_login_id txt-frm input-label" /></li>
                                            <li><label>비밀번호</label><input type="password" name="passwd" maxlength="20" onkeydown="CheckKey(event);" value=""  class="MS_login_pw txt-frm input-label" /></li>
                                        </ul>
                                        <div class="security">
                                            <ul>
                                                <li class="chk"><label><input type="checkbox" name="ssl" value="Y"  class="MS_security_checkbox" /> 보안접속</label></li>
                                                <li class="btn"><a href="/shop/lostpass.html">아이디/비밀번호 찾기</a></li>
                                            </ul>
                                        </div>
                                        <a href="javascript:check();" class="CSSbuttonLog">로그인</a>
                                        <a href="javascript:check();" class="CSSbuttonLog">관리자 로그인</a>
                                    </fieldset>
                                </form>                                <dl>
                                    <dt><label>아직 회원이 아니신가요?</label></dt>
                                    <dd><a href="/shop/idinfo.html?type=new&first=" class="CSSbuttonLogW">회원가입</a></dd>
                                </dl>
                            </div>
                            <div class="sign">
                                <img src="./images/login_benefit.jpg">
                            </div>
                        </div><!-- .mlog-sign -->
                    </div><!-- .page-body -->
                </div><!-- #loginWrap -->
            </div><!-- #content -->
        </div><!-- #contentWrap -->
    </div><!-- #contentWrapper-->
            <!-- # 로그인 -->
    <footer>
        <%@include file="user_footer.jsp"%>
    </footer>
</body>
</html>
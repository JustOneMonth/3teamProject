<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1:1 게시글 목록</title>
    <link rel="stylesheet" href="/css/board1v1.css">
    <script src="./jquery-3.5.1.min.js"></script>
    <script src="/js/jq1.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <%@include file="user_header.jsp"%>
</head>
<body>
<div id="contentWrapper">
    <div id="contentWrap">
        <div id="content">
            <div id="board1v1">
                <h2 class="tit-page">1:1 문의</h2>
                <div class="page-body">
                    <!-- 마이페이지 탭메뉴 -->
                    <link type="text/css" rel="stylesheet" href="#"/>
                    <!-- 마이페이지 탭메뉴 -->
                    <div class="mypage_menu">
                        <ul>
                            <li><a href="#">주문조회</a></li>
                            <li><a href="mypage_1v1list.jsp">1:1문의</a></li>
                            <li><a href="#">회원탈퇴</a></li>
                        </ul>
                    </div>
                    <div class="total-page">
                        <p class="total">총 게시글: #건</p>
                        <p class="page">PAGE 1/1</p>
                    </div>
                    <div class="table-d2-list">
                        <table summary="번호, 제목, 날짜, 답변여부">
                            <caption>1:1 상담내역</caption>
                            <colgroup>
                                <col width="65"/>
                                <col width="20"/>
                                <col width="*"/>
                                <col width="100"/>
                                <col width="100"/>
                            </colgroup>
                            <thead>
                            <tr>
                                <th scope="row">
                                    <div class="tb-center">번호</div>
                                </th>
                                <th scope="row" colspan="2">
                                    <div class="tb-center">제목</div>
                                </th>
                                <th scope="row">
                                    <div class="tb-center">작성일</div>
                                </th>
                                <th scope="row">
                                    <div class="tb-center">답변여부</div>
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="tb-center">[공지]</div>
                                </td>
                                <td></td>
                                <td colspan="3">
                                    <div class="tb-left"><a href="mypage_1v1notice.jsp"> 배 / 송 / 공 / 지</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="tb-center">[공지]</div>
                                </td>
                                <td></td>
                                <td colspan="3">
                                    <div class="tb-left"><a href="#">상품문의는 상품명과 같이 기재부탁드립니다 :)</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="tb-center">[공지]</div>
                                </td>
                                <td></td>
                                <td colspan="3">
                                    <div class="tb-left"><a href="#">입금안내</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="tb-center">[공지]</div>
                                </td>
                                <td></td>
                                <td colspan="3">
                                    <div class="tb-left"><a href="#">배송전 취소 및 변경안내</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="tb-center">[공지]</div>
                                </td>
                                <td></td>
                                <td colspan="3">
                                    <div class="tb-left"><a href="#">교환 및 반품</a></div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="tb-center">1</div>
                                </td>
                                <td>
                                    <div class="tb-center"><img src="./img/default.gif" alt="내가쓴글"/>
                                </td>
                                <td>
                                    <div class="tb-left"><a href="mypage_1v1watch.jsp">[상품문의] 사이즈 문의</a></div>
                                </td>
                                <td>
                                    <div class="tb-center">2020-10-06</div>
                                </td>
                                <td>
                                    <div class="tb-center">
                                        <span class="CSSbuttonGray">Y</span>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="paginate">
                        <a class="now" href="#">1</a>
                    </div>
                    <div class="btn-foot">
                        <a href="mypage_1v1write.jsp"><span class="CSSbuttonB">1:1 질문하기</span></a>
                    </div>
                </div><!-- .page-body -->
            </div><!-- #board1v1 -->
        </div><!-- #content -->
    </div><!-- #contentWrap -->
</div><!-- #contentWrapper-->
<hr/>
<footer>
    <%@include file="user_footer.jsp" %>
</footer>
</body>
</html>
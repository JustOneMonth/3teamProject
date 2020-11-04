<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>저스트원: 장바구니</title>
    <%@include file="user_header.jsp"%>
    <link rel="stylesheet" href="./css/cart.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="./js/jq1.js"></script>
    <script src="./js/cart.js"></script>
    <script>
        /*
        * 구현할 스크립트
        * 1. 장바구니 수량 수 조절, 수량에 따른 가격 반영
        * 2. 선택 품목만 구매 버튼 클릭 처리
        * */
    </script>
</head>
<body>
<div>
    <div id="cartWrap">
        <h2 class="tit-page">장바구니</h2>
        <div class="page-body">
            <div class="tablecart">
                <table>
                    <thead>
                    <tr>
                        <th>
                            <div><input type="checkbox" name="allcheck" checked></div>
                        </th>
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
                        <th>
                            <div class="tb-center">배송비</div>
                        </th>
                        <th>
                            <div class="tb-center">선택</div>
                        </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>
                            <div class="tb-center"><input type="checkbox" class="checkbox" checked></div>
                        </td>
                        <td>
                            <div class="tb-center">사진1</div>
                        </td>
                        <td>
                            <div class="tb-left">
                                <a href="">상품명1</a>
                            </div>
                        </td>
                        <td>
                            <div class="tb-center">
                                <div class="optspin">
                                    <a href="" class="btn-dw">-</a>
                                    <input type="text" class="txt-spin" value="1">
                                    <a href="" class="btn-up">+</a>
                                    <a href="" class="cssButtonCorrect">수정</a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="tb-center tb-bold"><span>16,900</span>원</div>
                        </td>
                        <td>
                            <div>
                                <div class="tb-center tb-delivery">
                                    <div class="MS_tb_delivery">
                                        <span> [기본배송]<br>조건</span>
                                        <div id="deliverycase0" class="MS_layer_delivery" style="display:none">
                                            <ol>
                                                <li style="font-weight: bold;">배송조건 : 기본배송(조건)</li>
                                                <li>배송비 : 2,500원이 청구됩니다.</li>
                                            </ol>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </td>
                        <td>
                            <div class="tb-center">
                                <span><a href=""></a></span>
                                <i class="xi-close"><a href=""></a></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            <div class="tb-left tb-opt">[옵션] 색상 : ~그레이, 사이즈 : FREE</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="tb-center"><input type="checkbox" class="checkbox" checked></div>
                        </td>
                        <td>
                            <div class="tb-center">사진2</div>
                        </td>
                        <td>
                            <div class="tb-left">
                                <a href="">상품명2</a>
                            </div>
                        </td>
                        <td>
                            <div class="tb-center">
                                <div class="optspin">
                                    <a href="" class="btn-dw">-</a>
                                    <input type="text" class="txt-spin" value="1">
                                    <a href="" class="btn-up">+</a>
                                    <a href="" class="cssButtonCorrect">수정</a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="tb-center tb-bold"><span>16,900</span>원</div>
                        </td>
                        <td>
                            <div>
                                <div class="tb-center tb-delivery">
                                    <div class="MS_tb_delivery">
                                        <span> [기본배송]<br>조건</span>
                                        <div id="deliverycase1" class="MS_layer_delivery" style="display:none">
                                            <ol>
                                                <li style="font-weight: bold;">배송조건 : 기본배송(조건)</li>
                                                <li>배송비 : 2,500원이 청구됩니다.</li>
                                            </ol>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </td>
                        <td>
                            <div class="tb-center">
                                <span><a href=""></a></span>
                                <i class="xi-close"><a href=""></a></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            <div class="tb-left tb-opt">[옵션] 색상 : ~그레이, 사이즈 : FREE</div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="tb-center"><input type="checkbox" class="checkbox" checked></div>
                        </td>
                        <td>
                            <div class="tb-center">사진3</div>
                        </td>
                        <td>
                            <div class="tb-left">
                                <a href="">상품명3</a>
                            </div>
                        </td>
                        <td>
                            <div class="tb-center">
                                <div class="optspin">
                                    <a href="" class="btn-dw">-</a>
                                    <input type="text" class="txt-spin" value="1">
                                    <a href="" class="btn-up">+</a>
                                    <a href="" class="cssButtonCorrect">수정</a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <div class="tb-center tb-bold"><span>16,900</span>원</div>
                        </td>
                        <td>
                            <div>
                                <div class="tb-center tb-delivery">
                                    <div class="MS_tb_delivery">
                                        <span> [기본배송]<br>조건</span>
                                        <div id="deliverycase2" class="MS_layer_delivery" style="display:none">
                                            <ol>
                                                <li style="font-weight: bold;">배송조건 : 기본배송(조건)</li>
                                                <li>배송비 : 2,500원이 청구됩니다.</li>
                                            </ol>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </td>
                        <td>
                            <div class="tb-center">
                                <span><a href=""></a></span>
                                <i class="xi-close"><a href=""></a></i>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            <div class="tb-left tb-opt">[옵션] 색상 : ~그레이, 사이즈 : FREE</div>
                        </td>
                    </tr>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="7">
                            <div class="tb-right">총 구매금액 : 35,800원 + 배송료 2,500원 = <strong>38,300원</strong></div>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>
            <div class="btnControl_1"><a onclick="removeButton();" class="cssButtonGray">선택상품 삭제</a></div>
            <div class="delivery">50,000원 미만의 주문은 배송료를 청구합니다.</div>
            <div class="deliveryFree"><p><span>14,200원</span> 이상 구매시 기본 배송비 무료</p></div>
            <div class="btnControl_2">
                <a href="" class="cssButtonBlack">전체상품 주문하기</a>
                <a href="" class="cssButtonWhite">선택상품 주문하기</a>
                <a href="" id="remove" class="cssButtonWhite">장바구니 비우기</a>
                <a href="" class="cssButtonWhite">쇼핑 계속하기</a>
            </div>
        </div>
    </div>
</div>
<footer>
    <%@include file="user_footer.jsp"%>
</footer>
</body>
</html>
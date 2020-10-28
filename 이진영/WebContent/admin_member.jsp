<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="admin_head.jsp"%>
<head>
<meta charset="UTF-8">
<title>회원정보 관리</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!-- right start -->
	<div class="rightWrap" style="margin-left: 250px; margin-right: 10px;">
		<!--title start-->
		<div class="subTitleBg">
			<p class="current">
				현재위치 : 회원관리 &gt; 회원정보 관리 &gt; <span class="2depth_select"
					style="font-weight: bold;">회원정보 관리</span>
			</p>
		</div>
		<!--title end-->

		<!-- contents start -->
		<div class="conWrap1">
			<table cellpadding="0" cellspacing="0" width="90%">
				<tr>
					<td>
						<div class="tableWrap_grayBg">
							<div class="titleWrap1">
								<p class="title">회원정보 관리</p>
								<!--help-->
								<div onMouseOver="helperView('helperBox1','open')"
									onMouseOut="helperView('helperBox1','out')" class="relative"
									style="display: inline-block;">
									<span class="questionMark">? </span>
									<div class="help width1" id="helperBox1"
										onMouseOver="helperView('helperBox1','over')"
										onMouseOut="helperView('helperBox1','out')">
										<ul>
											<li><span style="font-size: 5px;"> 회원정보 검색시 반드시
													검색조건을 선택하세요.</span></li>
											<li><span style="font-size: 5px;"> 검색어 입력시 공백 또는
													특수문자(- / ~)는 정상적으로 검색되지 않습니다. </span></li>
										</ul>
										<p
											style="position: absolute; top: 0px; left: -10px; z-index: 9999;">
											<img src="images/icon_balloon.png">
										</p>
									</div>
								</div>
								<!--help-->


							</div>
							<form name=form1 action="/admin/member_list.php" method=post>
								<input type=hidden name=type> <input type=hidden name=id>
								<input type=hidden name=email> <input type=hidden
									name="mem_name">

								<!-- 회원정보 검색 -->
								<TABLE cellSpacing=0 cellPadding=0 width="100%"
									style="background-color: white;">
									<colgroup>
										<col class="colThWidth"></col>
										<col></col>
									</colgroup>
									<TR>
										<TD class="table_cell">정렬방식</TD>
										<TD class="td_con1">
											<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
												<TR>
													<TD><input class="radio" type=radio name=sort
														value="0" id=idx_sort0 checked> <label
														style='cursor: hand; TEXT-DECORATION: none;'
														onmouseover="style.textDecoration='underline'"
														onmouseout="style.textDecoration='none'" for=idx_sort0>가입일
															기준으로 정렬</label> <input class="radio" type=radio name=sort
														value="1" id=idx_sort1> <label
														style='cursor: hand; TEXT-DECORATION: none;'
														onmouseover="style.textDecoration='underline'"
														onmouseout="style.textDecoration='none'" for=idx_sort1>결제금액
															기준으로 정렬</label></TD>
												</TR>
											</TABLE>
										</TD>
									</TR>
									<TR>
										<TD class="table_cell">검색조건</TD>
										<TD class="td_con1">
											<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
												<TR>
													<TD width="10%"><input class="radio" type=radio
														name=scheck value="0" id=idx_scheck0
														onClick="OnChangeSearchType(this.value);" checked>
														<label style='cursor: hand; TEXT-DECORATION: none;'
														onmouseover="style.textDecoration='underline'"
														onmouseout="style.textDecoration='none'" for=idx_scheck0>회원
															아이디로 검색</label> <input class="radio" type=radio name=scheck
														value="1" id=idx_scheck1
														onClick="OnChangeSearchType(this.value);"> <label
														style='cursor: hand; TEXT-DECORATION: none;'
														onmouseover="style.textDecoration='underline'"
														onmouseout="style.textDecoration='none'" for=idx_scheck1>등급회원
															검색</label></TD>
												</TR>
											</TABLE>
										</TD>
									</TR>

									<TR id="div_group_code2" style="display: none;">
										<TD colspan="2" background="images/table_con_line.gif"></TD>
									</TR>
									<TR id="div_todaylogin">
										<TD class="table_cell">검색기간</TD>
										<TD class="td_con1"><input type=date name="search_start"
											id="search_start" onfocus="this.blur();"> ~ <input
											type=date name="search_end" id="search_end"
											onfocus="this.blur();"> <input class="radio"
											type=radio id=idx_vperiod0 name=vperiod value="0" checked
											style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px;"
											onclick="OnChangePeriod(this.value)" checked><label
											style='cursor: hand;'
											onmouseover="style.textDecoration='underline'"
											onmouseout="style.textDecoration='none'" for=idx_vperiod0>전체</label>
											<input class="radio" type=radio id=idx_vperiod1 name=vperiod
											value="1"
											style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px;"
											onclick="OnChangePeriod(this.value)"><label
											style='cursor: hand;'
											onmouseover="style.textDecoration='underline'"
											onmouseout="style.textDecoration='none'" for=idx_vperiod1>오늘</label>
											<input class="radio" type=radio id=idx_vperiod2 name=vperiod
											value="2"
											style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px;"
											onclick="OnChangePeriod(this.value)"><label
											style='cursor: hand;'
											onmouseover="style.textDecoration='underline'"
											onmouseout="style.textDecoration='none'" for=idx_vperiod2>1주일</label>
											<input class="radio" type=radio id=idx_vperiod3 name=vperiod
											value="3"
											style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px;"
											onclick="OnChangePeriod(this.value)"><label
											style='cursor: hand;'
											onmouseover="style.textDecoration='underline'"
											onmouseout="style.textDecoration='none'" for=idx_vperiod3>이달</label>
											<input class="radio" type=radio id=idx_vperiod4 name=vperiod
											value="4"
											style="BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px;"
											onclick="OnChangePeriod(this.value)"><label
											style='cursor: hand;'
											onmouseover="style.textDecoration='underline'"
											onmouseout="style.textDecoration='none'" for=idx_vperiod4>올해</label></TD>
									</TR>

									<TR>
										<TD class="table_cellEnd">검색어 입력</TD>
										<TD class="td_con1End"><input name=search size=80
											value="" onKeyDown="searchcheck()" class="input"
											style="margin-left: 10px; padding: 7px;"> <a
											href="javascript:check();" style="vertical-align: middle;"><span
												class="middleButton margin-left">검색</span></a></TD>
									</TR>
								</TABLE>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="tableWrap_grayBg"
							style="overflow: hidden; margin-top: 40px;">
							<div style="float: right;">
								<h2>검색된 회원목록</h2>
								<div>전체 4건 조회, 현재 1/1 페이지</div>
							</div>

							<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0
								class="table_top">
								<TR align=center>
									<th class="table_cellFirst" style="padding-left: 5px;"><input
										class="checkbox" type=checkbox id="allcheck1" name=allcheck
										onclick="CheckAll()"
										style="BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none;">&nbsp;</th>
									<th class="table_cell1">번호</th>
									<th class="table_cell1">아이디</th>
									<th class="table_cell1">성명</th>
									<th class="table_cell1">비번</th>
									<th class="table_cell1">가입일</th>
									<th class="table_cell1">메일</th>
									<th class="table_cell1">메모</th>
									<th class="table_cell1">주소/전화</th>
									<th class="table_cell1">적립금관리</th>
									<th class="table_cell1">쿠폰</th>
									<th class="table_cell1">주문내역</th>
									<th class="table_cell1">추천인</th>
									<th class="table_cell1">가입기기</th>
								</TR>
								<input type=hidden name=ids_chk>
								<tr>
									<TD class="td_con0" align="center"><input class="checkbox"
										type=checkbox name=ids_chk value="userid"
										style="display: inline; BORDER-RIGHT: medium none; BORDER-TOP: medium none; BORDER-LEFT: medium none; BORDER-BOTTOM: medium none;"></td>
									<TD class="td_con1" align=center><A
										HREF="javascript:MemberEtcView('userid')">4</A></td>
									<TD align=right style="padding-right: 20px" class="td_con1"><b><span
											class="font_orange"> userid</a></span></b>&nbsp;&nbsp; <span
										class="middleLineButton btn_size_s">CRM</span></A></td>
									<TD align=center class="td_con1">username</td>
									<TD align=center class="td_con1"><span
										class="middleLineButton btn_size_s">변경</span></a></td>
									<TD align=center class="td_con1">가입날짜</td>
									<TD align=center class="td_con1"><span
										class="middleLineButton btn_size_s">발송</span></a></td>
									<TD align=center class="td_con1"><span
										class="middleLineButton btn_size_s">메모</span></a></td>
									<TD class="td_con1">
										<table cellpadding="0" cellspacing="0" align="center">
											<tr>
												<td><IMG src="images/addr_home.gif" align=absMiddle
													border=0 width="19" height="19"></td>
												<td style="padding-left: 1pt;"><IMG
													src="images/addr_office.gif" align=absMiddle border=0
													width="19" height="19"></td>
											</tr>
											<tr style='padding-top: 10px;'>
												<td><A
													HREF="javascript:alert('\n자택전화 : \n\n휴대전화 : 01086368318\n')"><IMG
														src="images/member_tel.gif" align=absMiddle border=0
														width="19" height="19"></A></td>
												<td style="padding-left: 1pt;"><A
													HREF="javascript:MemberSMS('Y','','01086368318')"><IMG
														src="images/member_mobile.gif" align=absMiddle border=0
														width="19" height="19"></A></td>
											</tr>
										</table>
									</TD>
									<TD class="td_con1">
										<table cellpadding="0" cellspacing="0" align="center">
											<tr>
												<td colspan=2 height=30 align=center>0</td>
											</tr>
											<tr>
												<td><A HREF="javascript:ReserveInOut('cciya8318');"><span
														class="middleLineButton btn_size_s">+ -</span></A></td>
												<td style="padding-left: 1pt;"><A
													HREF="javascript:ReserveInfo('cciya8318');"><span
														class="middleLineButton btn_size_s">상세</span></A></td>
											</tr>
										</table>
									</TD>
									<TD class="td_con1">
										<table cellpadding="0" cellspacing="0" align="center">
											<tr>
												<td><span class="middleLineButton btn_size_s">쿠폰</span></td>
											</tr>
										</table>
									</TD>
									<TD class="td_con1" style="padding-left: 30px"><span
										title='주문취소 및 주문 진행중'>주문시도건</span><br />
									<span class="td_con1">주문건</span><br /> <span
										title='주문건(배송완료) 누적금액'>누적구매금액</span><br /></TD>
									<TD align=center class="td_con1">&nbsp;<br>(0)
									</td>
									<TD align=center class="td_con1"><b>PC웹</b></td>
								</tr>

							</TABLE>

							<div style="text-align: left; padding: 10px">
								<a href="javascript:check_del()"><span
									class="smallGrayButton1">탈퇴처리</span></a>
								<p align="center">
									<!-- 페이지 출력 ---------------------->
									<span class=font_orange2><B>[1]</B></span>
									<!-- 페이지 출력 끝 -->
								</p>
							</div>


						</div>
					</td>
				</tr>
			</table>

			<input type=hidden name=tot value="4">
			</form>
			<form name=form2 action="member_reservelist.php" method=post
				target=reserve_info>
				<input type=hidden name=id> <input type=hidden name=type>
			</form>
			<form name=form3 method=post>
				<input type=hidden name=id>
			</form>
			<form name=reserveform action="reserve_money.php" method=post>
				<input type=hidden name=type> <input type=hidden name=id>
			</form>
			<form name=mailform action="member_mailsend.php" method=post>
				<input type=hidden name=rmail>
			</form>
			<form name=smsform action="sendsms.php" method=post
				target="sendsmspop">
				<input type=hidden name=number>
			</form>

			<form name=idxform action="/admin/member_list.php" method=post>
				<input type=hidden name=block value=""> <input type=hidden
					name=gotopage value=""> <input type=hidden name=sort
					value="0"> <input type=hidden name=scheck value="0">
				<input type=hidden name=group_code value=""> <input
					type=hidden name=vperiod value="0"> <input type=hidden
					name=search_start value="2001-01-01"> <input type=hidden
					name=search_end value="2020-10-24"> <input type=hidden
					name=search value=""> <input type=hidden name=devices
					value="All">
			</form>

			<form name=excelform action="member_excel.php" method=post>
				<input type=hidden name=sort value="0"> <input type=hidden
					name=scheck value="0"> <input type=hidden name=group_code
					value=""> <input type=hidden name=search_start
					value="2001-01-01"> <input type=hidden name=search_end
					value="2020-10-24"> <input type=hidden name=search value="">
			</form>
		</div>

	</div>
	<!--contents end-->

	<!--menual start-->
	<div class="menualWrap" style="margin-left: 250px; margin-right: 10px;">
		<p class="menualTitle">사용자 메뉴얼</p>
		<ul class="menualCon">
			<li>
				<p class="menualSubTitle">검색된 회원목록 클릭시 정보</p>
				<ul class="menualText">
					<li>- 번호 : 회원접속 정보 및 회원추가 입력폼 정보를 확인할 수 있습니다.</li>
					<li>- 아이디 : 주민번호, 이메일, 주소 등 회원기본정보를 확인할 수 있습니다.</li>
					<li>- 비밀번호 : 운영자라고 하여도 회원의 비밀번호 자체는 변경하지 못하며 대신 임시비밀번호는
						발급가능합니다.(임시비밀번호는 회원가입시 등록한 이메일로 발송됩니다. 이메일 수신여부를 확인하세요.)</li>
					<li>- 메일 : 회원에게 메일을 발송할 수 있습니다.</li>
					<li>- 메모 : 회원에 대한 메모를 할 수 있습니다.(아이디 입력후 메모가능)</li>
					<li>- 주소 : 집주소 또는 회사주소를 확인 할 수 있습니다.</li>
					<li>- 전화 : 자택전화와 휴대전화 번호를 확인 할수 있으며 SMS 발송도 가능합니다.(SMS 발송은
						SMS머니를 충전 후 이용이 가능합니다.)</li>
					<li>- 적립금 : 운영자 임의로 적립금을 조절할 수 있으며 또한 적립금 내역을 확인할 수 있습니다.</li>
					<li>- 내역 : 구매내역 및 쿠폰 보유내역을 확인 할수 있습니다.(구매내역 정보는 배송처리 완료된 주문건만
						출력됩니다.)</li>
					<li>- 인증 : 업종별 운영방식 설정에서 관리자 인증후 구매로 설정시에만 출력됩니다.(<a
						href="/admin/shop_openmethod.php?leftmenuoff=on" target="_blank"><span
							class="font_blue">상점관리 > 쇼핑몰 환경 설정 > 업종별 운영방식 설정</a></span>)
					</li>
				</ul>
			</li>
		</ul>
	</div>
	<!--menual end-->

	</div>
	<!--right end-->
	</div>
	<input type="hidden" class="lightbox bmd-modalButton"
		data-toggle="modal" id="execlselect"
		data-bmdSrc="execl_select.member.popup.php?type=7&fvalue=excelform"
		data-bmdWidth="800" data-bmdHeight="300" data-title="엑셀항목선택"
		data-target="#myModal">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<!-- footer 에서 jquery 파일 로드 이후에 코드 넣어줄것 -->
	<script>
		(function($) {
			$.fn.bmdIframe = function(options) {
				var self = this;
				var settings = $.extend({
					classBtn : '.bmd-modalButton',
					defaultW : 740,
					defaultH : 560
				}, options);

				$(settings.classBtn)
						.on(
								'click',
								function(e) {
									var dataVideo = {
										'src' : $(this).attr('data-bmdSrc'),
										'height' : $(this).attr(
												'data-bmdHeight')
												|| settings.defaultH,
										'width' : $(this).attr('data-bmdWidth')
												|| settings.defaultW
									};
									//타이틀 변경
									document.getElementById("myModalLabel").innerHTML = $(
											this).attr('data-title');

									// stampiamo i nostri dati nell'iframe
									$(".modal-dialog")
											.css(
													"width",
													Number($(this).attr(
															'data-bmdWidth')) + 100);
									$(self).find("iframe").attr(dataVideo);
								});

				// se si chiude la modale resettiamo i dati dell'iframe per impedire ad un video di continuare a riprodursi anche quando la modale e chiusa
				this.on('hidden.bs.modal', function() {
					$(this).find('iframe').html("").attr("src", "");
				});

				return this;
			};

		})(jQuery);

		jQuery(document).ready(function() {
			jQuery("#myModal").bmdIframe();
		});
	</script>
	<!-- iframe modal -->
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" style="border-radius: 0px">

				<!-- Modal Header -->
				<div class="modal-header" style="padding-bottom: 10px;">
					<button type="button" class="close" id="modalclose"
						data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>

				<!-- Modal Body -->
				<div class="modal-body">
					<iframe class="embed-responsive-item" frameborder="0"
						style="width: 100%;" scrolling="yes"></iframe>
				</div>

				<!-- Modal Footer -->
				<div class="modal-footer" style="padding: 15px 0px;">
					<button type="button" class="btn btn-default"
						style="height: 30px; width: 70px; border-radius: 1px; padding: 0px"
						data-dismiss="modal">Close</button>
				</div>

			</div>
		</div>
	</div>
	<SCRIPT LANGUAGE="JavaScript">
		function SendSMS() {
			window.open("sendsms.php", "sendsmspop",
					"width=220,height=350,scrollbars=no");
		}
		function MemberMemo() {
			window.open("member_memoconfirm.php", "memopop",
					"width=250,height=120,scrollbars=no");
		}

		//마우스오버시 말풍선보기
		function helperView(obj, type) {
			var obj;
			var div = eval("document.all." + obj);

			if (type == 'open') {
				div.style.display = "block";
			} else if (type == 'over') {
				div.style.display = "block";
			} else if (type == 'out') {
				div.style.display = "none";
			}
		}
	</SCRIPT>

	<style>
.bottomWrap {
	border-top: 1px solid rgba(76, 87, 102, .1);
	height: 45px;
	overflow: hidden;
}

.bottomWrap ul {
	float: right;
	margin: 15px 20px 0px 0px;
	overflow: hidden;
}

.bottomWrap ul li {
	float: left;
	padding-left: 15px;
	font-size: 13px;
}

.bottomWrap ul li a:hover {
	color: #333333;
}
</style>

	<div class="bottomWrap">
		<ul>
			<li><a href="main.php">관리자메인</a></li>
			<li><a HREF="http://demo.getmall.kr/" name="shopurl"
				target="_blank">내 쇼핑몰</a></li>
			<li><a href="#top">위로이동</a></li>
		</ul>
	</div>

	<iframe name="processFrm" id="processFrm" value="" frameborder='0'
		width="0" height="0" style="display: none;"></iframe>
</body>

</html>
</body>
</html>
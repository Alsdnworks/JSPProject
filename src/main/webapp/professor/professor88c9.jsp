<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<title>교수 | Al소프트웨어학과</title>
<%@include file="../link.txt" %>
<script type="text/javascript">
	//<![CDATA[
	var CMS = {
		"contentEditAuth" : false,
		"isDevelopAllContent" : false,
		"editImageLimitSize" : 1200,
		"isCallAdm" : false,
		"editActive" : true,
		"resourcePath" : "\/_res\/knu\/aisw\/",
		"excludePrintSelector" : "",
		"locale" : "ko",
		"isCToken" : true,
		"smoothScroll" : "Y",
		"mainContentId" : "cms-content",
		"appKey" : "professor",
		"contentEditOnlyMain" : false,
		"servicePort" : "",
		"devContentKey" : null,
		"subContentKeyMap" : {},
		"boardNo" : "",
		"menuCd" : "8088",
		"ctx" : "",
		"sslPort" : "",
		"isMobileSite" : false,
		"tokenSec" : "0",
		"editorVendor" : "froala",
		"localeScriptPath" : "\/_custom\/knu\/resource\/js\/",
		"mainContentKey" : null,
		"printClass" : "cms-print",
		"pageKind" : "APP",
		"editClass" : "cms-edit",
		"cherryPath" : "\/_fox",
		"siteId" : "aisw",
		"isDevelop" : false,
		"device" : "pc",
		"isSSL" : false
	}, ctx = '', locale = 'ko';
	//]]>
</script>
</head>
<body>
	<div class="wrap">
		<div class="top-wrap">
			<header>
				<div class="top-header-wrap"></div>
				<div class="bottom-header-wrap" data-cms-content="/aisw/_content/header">
					<div class="bottom-header-box">
						<h1>
							<a href="../index-2.html" title="홈 바로가기">
								<div>
									<img src="../../_res/knu/_share/img/common/img-logo.png" alt="KNU"><span class="logo-txt">AI소프트웨어학과</span>
								</div>
								<p class="logo-bottom">KANGWON NATIONAL UNIVERSITY</p>
							</a>
						</h1>
						<a class="btn-menu" href="#a" title="모바일메뉴 열기">
							<span class="hide">모바일메뉴 열기</span>
						</a>
						<div class="gnb-wrap">
							<div class="gnb">
								<ul class="gnb-ul">
									<li class="first">
										<a href="../intro/greetings.html" id="pc-gnb-menu-8064" title="학과소개">
											<span>학과소개</span>
										</a>
										<ul class="sub-mn">
											<li>
												<a href="../intro/greetings.html" id="pc-gnb-menu-8067" title="인사말">
													<span>인사말</span>
												</a>
											</li>
											<li>
												<a href="../intro/history04.html" id="pc-gnb-menu-8072" title="학과연혁">
													<span>학과연혁</span>
												</a>
											</li>
											<li>
												<a href="../intro/intro.html" id="pc-gnb-menu-8068" title="학과소개">
													<span>학과소개</span>
												</a>
											</li>
											<li>
												<a href="../intro/lab.html" id="pc-gnb-menu-8092" title="실습실소개">
													<span>실습실소개</span>
												</a>
											</li>
											<li>
												<a href="../intro/circle.html" id="pc-gnb-menu-8093" title="동아리소개">
													<span>동아리소개</span>
												</a>
											</li>
											<li>
												<a href="../intro/council.html" id="pc-gnb-menu-8094" title="학생회소개">
													<span>학생회소개</span>
												</a>
											</li>
											<li>
												<a href="../intro/location.html" id="pc-gnb-menu-8087" title="오시는 길">
													<span>오시는 길</span>
												</a>
											</li>
										</ul>
									</li>
									<li class="first">
										<a href="professor.html" id="pc-gnb-menu-8716" title="교수소개" class="active">
											<span>교수소개</span>
										</a>
										<ul class="sub-mn">
											<li>
												<a href="professor.html" id="pc-gnb-menu-8088" title="교수" class="active">
													<span>교수</span>
												</a>
											</li>
											<li>
												<a href="emeritus-professor.html" id="pc-gnb-menu-8089" title="명예교수">
													<span>명예교수</span>
												</a>
											</li>
										</ul>
									</li>
									<li class="first">
										<a href="../bachelor/curriculum.html" id="pc-gnb-menu-8065" title="학사안내">
											<span>학사안내</span>
										</a>
										<ul class="sub-mn">
											<li>
												<a href="http://www.kangwon.ac.kr/www/selectBbsNttList.do?bbsNo=37&amp;key=1176&amp;)" id="pc-gnb-menu-8090" title="학사공지&#40;새창열림&#41;" target="_blank">
													<span>학사공지<i class="xi-external-link"></i></span>
												</a>
											</li>
											<li>
												<a href="../bachelor/curriculum.html" id="pc-gnb-menu-8070" title="교육과정">
													<span>교육과정</span>
												</a>
											</li>
											<li>
												<a href="../bachelor/subject.html" id="pc-gnb-menu-8071" title="편성교과목">
													<span>편성교과목</span>
												</a>
											</li>
											<li>
												<a href="../bachelor/info.html" id="pc-gnb-menu-8077" title="학사정보">
													<span>학사정보</span>
												</a>
											</li>
											<li>
												<a href="../bachelor/calendar.html" id="pc-gnb-menu-8078" title="학사일정">
													<span>학사일정</span>
												</a>
											</li>
										</ul>
									</li>
									<li class="first">
										<a href="../admission/admission-guide.html" id="pc-gnb-menu-8063" title="입학안내">
											<span>입학안내</span>
										</a>
										<ul class="sub-mn">
											<li>
												<a href="../admission/admission-guide.html" id="pc-gnb-menu-8066" title="모집요강">
													<span>모집요강</span>
												</a>
											</li>
										</ul>
									</li>
									<li class="first">
										<a href="../community/notice.html" id="pc-gnb-menu-8073" title="커뮤니티">
											<span>커뮤니티</span>
										</a>
										<ul class="sub-mn">
											<li>
												<a href="../community/notice.html" id="pc-gnb-menu-8074" title="공지사항">
													<span>공지사항</span>
												</a>
											</li>
											<li>
												<a href="../community/gallery.html" id="pc-gnb-menu-8079" title="갤러리">
													<span>갤러리</span>
												</a>
											</li>
											<li>
												<a href="../community/reference-room.html" id="pc-gnb-menu-8080" title="서식자료실">
													<span>서식자료실</span>
												</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="header-login-box">
								<div class="btn-login">
									<a href="../etc/login.html" title="로그인">
										<span>로그인</span>
									</a>
								</div>
							</div>
						</div>
						<div class="main-footer-box">
							<div class="main-footer-link-box">
								<ul>
									<li>
										<a href="http://www.kangwon.ac.kr/www/contents.do?key=334&amp;" target="_blank" title="새창열림">개인정보처리방침</a>
									</li>
									<li>
										<a href="http://www.kangwon.ac.kr/www/contents.do?key=343&amp;" target="_blank" title="새창열림">이메일주소수집거부</a>
									</li>
								</ul>
							</div>
							<div class="address-box">
								<ul>
									<li>
										전화 :
										<a href="tel:033-570-6370" title="전화걸기">033-570-6370</a>
										,
										<a href="tel:033-570-6340" title="전화걸기">6430</a>
										,
										<a href="tel:033-570-6580" title="전화걸기">6580</a>
										&nbsp;
									</li>
									<li>팩스 : 033-570-6589</li>
								</ul>
								<p>강원도 삼척시 중앙로 346 강원대학교 삼척캠퍼스 5공학관 5층</p>
							</div>
						</div>
						<nav class="slideMenu">
							<a href="../etc/login.html" title="Login" class="login">
								<span>로그인</span>
							</a>
							<div class="m-gnb">
								<ul class="dep1">
									<li>
										<a href="../intro/greetings.html" id="mobile-menu-8064" title="학과소개">
											<span>학과소개</span>
										</a>
										<ul class="dep2">
											<li>
												<a href="../intro/greetings.html" id="mobile-menu-8067" title="인사말">
													<span>인사말</span>
												</a>
											</li>
											<li>
												<a href="../intro/history04.html" id="mobile-menu-8072" title="학과연혁">
													<span>학과연혁</span>
												</a>
											</li>
											<li>
												<a href="../intro/intro.html" id="mobile-menu-8068" title="학과소개">
													<span>학과소개</span>
												</a>
											</li>
											<li>
												<a href="../intro/lab.html" id="mobile-menu-8092" title="실습실소개">
													<span>실습실소개</span>
												</a>
											</li>
											<li>
												<a href="../intro/circle.html" id="mobile-menu-8093" title="동아리소개">
													<span>동아리소개</span>
												</a>
											</li>
											<li>
												<a href="../intro/council.html" id="mobile-menu-8094" title="학생회소개">
													<span>학생회소개</span>
												</a>
											</li>
											<li>
												<a href="../intro/location.html" id="mobile-menu-8087" title="오시는 길">
													<span>오시는 길</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="professor.html" id="mobile-menu-8716" title="교수소개" class="active">
											<span>교수소개</span>
										</a>
										<ul class="dep2">
											<li>
												<a href="professor.html" id="mobile-menu-8088" title="교수" class="active">
													<span>교수</span>
												</a>
											</li>
											<li>
												<a href="emeritus-professor.html" id="mobile-menu-8089" title="명예교수">
													<span>명예교수</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="../bachelor/curriculum.html" id="mobile-menu-8065" title="학사안내">
											<span>학사안내</span>
										</a>
										<ul class="dep2">
											<li>
												<a href="http://www.kangwon.ac.kr/www/selectBbsNttList.do?bbsNo=37&amp;key=1176&amp;)" id="mobile-menu-8090" title="학사공지&#40;새창열림&#41;" target="_blank">
													<span>학사공지<i class="xi-external-link"></i></span>
												</a>
											</li>
											<li>
												<a href="../bachelor/curriculum.html" id="mobile-menu-8070" title="교육과정">
													<span>교육과정</span>
												</a>
											</li>
											<li>
												<a href="../bachelor/subject.html" id="mobile-menu-8071" title="편성교과목">
													<span>편성교과목</span>
												</a>
											</li>
											<li>
												<a href="../bachelor/info.html" id="mobile-menu-8077" title="학사정보">
													<span>학사정보</span>
												</a>
											</li>
											<li>
												<a href="../bachelor/calendar.html" id="mobile-menu-8078" title="학사일정">
													<span>학사일정</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="../admission/admission-guide.html" id="mobile-menu-8063" title="입학안내">
											<span>입학안내</span>
										</a>
										<ul class="dep2">
											<li>
												<a href="../admission/admission-guide.html" id="mobile-menu-8066" title="모집요강">
													<span>모집요강</span>
												</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="../community/notice.html" id="mobile-menu-8073" title="커뮤니티">
											<span>커뮤니티</span>
										</a>
										<ul class="dep2">
											<li>
												<a href="../community/notice.html" id="mobile-menu-8074" title="공지사항">
													<span>공지사항</span>
												</a>
											</li>
											<li>
												<a href="../community/gallery.html" id="mobile-menu-8079" title="갤러리">
													<span>갤러리</span>
												</a>
											</li>
											<li>
												<a href="../community/reference-room.html" id="mobile-menu-8080" title="서식자료실">
													<span>서식자료실</span>
												</a>
											</li>
										</ul>
									</li>
								</ul>
							</div>
							<a href="#a" title="" class="slide-close">모바일메뉴 닫기</a>
						</nav>
						<a class="slide-close" href="#a" title="메뉴닫기">
							<span class="hide">모바일 메뉴 닫기</span>
						</a>
						<div class="m-gnb-bg">&nbsp;</div>
					</div>
					<div class="gnb-bg">&nbsp;</div>
				</div>
			</header>
			<div class="sub-container">
				<div class="sub-visual-wrap"></div>
				<div class="content-wrap">
					<div class="path-wrap" data-cms-content="/aisw/_content/sub-navigation">
						<div class="path-box">
							<div class="path">
								<a class="path-home" href="../index-2.html" title="홈 바로가기">
									<span class="hide">홈 바로가기</span>
								</a>
								<div class="path-depth-wrap">
									<ul>
										<li>
											<a href="#a" class="path-selected"> 교수소개 </a>
											<ul class="path-depth path-depth01">
												<li class="">
													<a href="../intro/greetings.html" id="pull-menu-8064" title="학과소개">
														<span>학과소개</span>
													</a>
												</li>
												<li class="active">
													<a href="professor.html" id="pull-menu-8716" title="교수소개" class="active">
														<span>교수소개</span>
													</a>
												</li>
												<li class="">
													<a href="../bachelor/curriculum.html" id="pull-menu-8065" title="학사안내">
														<span>학사안내</span>
													</a>
												</li>
												<li class="">
													<a href="../admission/admission-guide.html" id="pull-menu-8063" title="입학안내">
														<span>입학안내</span>
													</a>
												</li>
												<li class="">
													<a href="../community/notice.html" id="pull-menu-8073" title="커뮤니티">
														<span>커뮤니티</span>
													</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="#a" class="path-selected"> 교수 </a>
											<ul class="path-depth path-depth02">
												<li class="active">
													<a href="professor.html" id="pull-menu-8088" title="교수" class="active">
														<span>교수</span>
													</a>
												</li>
												<li class="">
													<a href="emeritus-professor.html" id="pull-menu-8089" title="명예교수">
														<span>명예교수</span>
													</a>
												</li>
											</ul>
										</li>
									</ul>
								</div>
								<div class="util-box">
									<ul>
										<li>
											<a class="print" href="#a" id="cms-print" title="프린트하기">프린트하기</a>
										</li>
										<li>
											<a class="share" href="#a" id="url-copy" title="공유하기">공유하기</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="content-inner-wrap cms-print">
						<div class="title" data-cms-content="/aisw/_content/title">
							<div class="page-title">
								<h3>교수</h3>
							</div>
						</div>
						<div class="tab"></div>
						<div class="cms-sub-content" data-cms-sub-content="OeiseRXwkjpx">
							<!-- 지정된 서브컨텐츠가 하나도 존재하지 않습니다. -->
						</div>
						<div class="content" id="cms-content">
							<input type="hidden" id="custom_client" value="knu" />
							<script type="text/javascript">
								//<![CDATA[
								var resPath = 'https://aisw.kangwon.ac.kr/_custom/knu/resource/', isEditorImageUpload = '' == 'false' ? false
										: true;
								//]]>
							</script>
							<div class="ko">
								<div class="bn-view-person01 type01">
									<div>
										<div class="b-btn01 type01">
											<ul class="btn-wrap">
												<li>
													<a href="professor18c3.html?mode=list&amp;" class="b-btn-type01 b-btn-c-white" title="목록">목록</a>
												</li>
											</ul>
										</div>
									</div>
									<div>
										<div>
											<div class="b-img-box">
												<img alt="유희경 프로필 사진" src="https://aisw.kangwon.ac.kr/app/common/attach/image/thumb_267_1632459664000.do" onerror="this.src='../../_res/knu/_share/img/board/img-faculty-default.gif'" />
											</div>
											<div class="b-prof-box">
												<div>
													<ul class="b-prof-list">
														<li>
															<span>성명</span>
															<p>
																<span class="b-name"> 유희경 </span> <span>교수</span>
															</p>
														</li>
														<li>
															<span>연구분야</span>
															<p>
																<span>컴퓨터보안/빅데이터/전산통계학</span>
															</p>
														</li>
														<li>
															<span>연구실</span>
															<p>
																<span>5공학관 417호</span>
															</p>
														</li>
														<li>
															<span>연락처</span>
															<p>
																<a href="tel:033-570-6371" title="전화걸기">033-570-6371</a>
															</p>
														</li>
														<li>
															<span>이메일</span>
															<p>
																<a href="mailto:hkyoo@kangwon.ac.kr" title="메일 보내기">hkyoo@kangwon.ac.kr</a>
															</p>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div></div>
										<div class="b-btn01 type01">
											<ul class="btn-wrap">
												<li>
													<a href="professor18c3.html?mode=list&amp;" class="b-btn-type01 b-btn-c-white" title="목록">목록</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									//<![CDATA[

									function iframeLoaded() {
										var iFrameID = document
												.getElementById('reportFrame');
										if (iFrameID) {
											// here you can make the height, I delete it first, then I make it again
											iFrameID.height = "0";
											iFrameID.height = iFrameID.contentWindow.document.body.scrollHeight
													+ 30 + "px";
										}
										$("iframe").focus();
									}

									function changeTab(value) {

										var type = value;

										var url = $("#iframeUrl").val();

										var makeUrl = makeIframeUrl(url, type);

										document.getElementById("reportFrame").src = makeUrl;

										$(".b-main-tab li").removeClass(
												"active");
										$(this).parent().addClass("active");

										//var lebelText = $(".b-tab-sel option:selected").text();
										//$("#tab-select-label").text( lebelText   );

									}

									function makeIframeUrl(url, type) {

										var tmp = url.toString().split("?"), makeUrl = tmp[0]
												+ '?';

										if (typeof (tmp[1]) != 'undefined') {

											var s = tmp[1].toString()
													.split('&'), idx = 0;

											for (var i = 0; i < s.length; i++) {

												strArr = s[i].split('=');

												if (strArr[0] != 'reportType') {

													if (idx != 0) {
														makeUrl = (makeUrl + '&');

													}

													idx += 1;
													makeUrl = (makeUrl + s[i]);
												}
											}

											makeUrl = (makeUrl + '&reportType=' + type);

										} else {

											makeUrl = url + "&reportType="
													+ type;

										}

										return makeUrl;
									}

									$(function() {

										$(".tabLink")
												.click(
														function(e) {

															e.preventDefault();

															var type = $(this)
																	.attr(
																			"data-id");

															var url = $(
																	"#iframeUrl")
																	.val();

															var makeUrl = makeIframeUrl(
																	url, type);

															document
																	.getElementById("reportFrame").src = makeUrl;

															$(".b-main-tab li")
																	.removeClass(
																			"active");
															$(this)
																	.parent()
																	.addClass(
																			"active");

														});

										if ($(".b-main-tab li.active").length == 0) {

											$(".b-main-tab li:first").addClass(
													"active");
										}

									});

									//]]>
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../footer.jsp"%>
</body>
</html>
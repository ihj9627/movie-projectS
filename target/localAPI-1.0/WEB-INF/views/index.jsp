<%--
  Created by IntelliJ IDEA.
  User: spongebob53
  Date: 2022/01/31
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
    <link href="/resources/css/reset.css?ver=1" rel="stylesheet" type="text/css">
    <link href="/resources/css/text.css?ver=2" rel="stylesheet" type="text/css">
    <link href="/resources/css/logo.css?ver=1" rel="stylesheet" type="text/css">
    <link href="/resources/css/header.css?ver=1" rel="stylesheet" type="text/css">
    <link href="/resources/css/footer.css?ver=1" rel="stylesheet" type="text/css">
    <link href="/resources/css/main.css?ver=2" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>

<body>
	
	 <header>
        <div class="header">
            <div class="header-inner header-search">
				<a href="#" class="list-txt"><i class="bi bi-search"></i></a>
			</div>
            <div class="header-inner header-logo">
				<a href="introduce"><img src="/resources/img/textLogo-color.png" class="logo-medium"></a>
			</div>
            <div class="header-inner header-member">
				<c:choose>
					<c:when test="${sessionScope.customer_id == null}">
						<a href="login" class="list-txt">로그인</a>
		            	<a class="list-txt" href="join">회원가입</a>
					</c:when>
					<c:when test="${sessionScope.customer_id != null}">
						<a href="#" class="list-txt">${sessionScope.customer_id}님 반갑습니다</a>
						<a href="logout" class="list-txt">로그아웃</a>
					</c:when>
				</c:choose>
            	<a class="list-txt" href="#">고객센터</a>
            </div>
        </div>
    </header>
    
    <nav>
        <div class="dropmenu">
            <ul>
                <li>
                	<a href="#">영화</a>
                	<ul>
                		<li><a href="#">현재상영작</a></li>
                		<li><a href="#">상영예정작</a></li>
                	</ul>
                </li>
                <li>
                	<a href="ticketing">예매</a>
                	<ul>
                		<li><a href="#">빠른예매</a></li>
                		<li><a href="#">상영시간표</a></li>
                	</ul>
                </li>
                <li>
                	<a href="#">극장</a>
                	<ul>
                		<li><a href="#">전체극장</a></li>
                		<li><a href="#">특별관</a></li>
                	</ul>
                </li>
                <li>
                	<a href="#">이벤트</a>
                	<ul>
                		<li><a href="#">영화/예매</a></li>
                		<li><a href="#">당첨자발표</a></li>
                		<li><a href="#">종료 이벤트</a></li>
                	</ul>
                </li>
                <li>
                	<a href="#">혜택</a>
                	<ul>
                		<li><a href="#">멤버십/CLUB</a></li>
                		<li><a href="#">제휴할인</a></li>
                	</ul>
                </li>
            </ul>
        </div>
    </nav>
    
    <section class="banner">
    	<div class="banner_inner">
<!--     		<div class="banner_video"> -->
<!--     			<video src="resource/img/main-video.mp4"> -->
<!--     				<source src="resource/img/main-video.mp4"> -->
<!--     			</video> -->
<!--     		</div> -->
			<div class="banner_content">
	    		<h1 class="content_title">인민을 위해 복무하라</h1>
	    		<p class="content_text">
	    			노벨문학상 후보 작가 원작 <br/>
	    			전 세계가 주목한 화제의 금서
	    		</p>
    		</div>
    	</div>
    </section>
    
    <main class="main">
    	<div class="main_movie-chart">
    		<h1 class="title-txt">영화 순위</h1>
    	</div>
    	<div class="main_event">
    		<h1 class="title-txt">이벤트</h1>
    	</div>
    	<div class="main_news">
    		<h1 class="news_title title-txt">소식</h1>
    		<div class="news_content">
	    		<div class="content_notice">
    				<p class="notice_title main-txt">공지사항</p>
    				<p class="notice_content content-txt">[기타] 22년 VIP 선정 기준 변경 및 추가 기준 관련 안내</p>
	    		</div>
    			<div class="content_service-center">
   					<p class="service-center_title main-txt">고객센터</p>
    				<p class="service-center_content content-txt">1234-1234</p>
    				<p class="service-center_content content-txt">운영시간(평일 00:00 ~ 00:00)</p>
    			</div>
    		</div>
    	</div>
    </main>
    
    

<%-- <a href="ticketing">예매</a>
<c:choose>
    <c:when test="${sessionScope.customer_id == null}">
        <a href="login">로그인</a>
    </c:when>
    <c:when test="${sessionScope.customer_id != null}">
        <div>${sessionScope.customer_id}님 반갑습니다</div>
        <a href="logout">로그아웃</a>
    </c:when>
</c:choose>

<!-- 있다면 하나씩 반복 -->
<c:if test="${movieList!=null}">
    <c:forEach items="${movieList}" var="movie">
        <hr>
        <form method="get">
            <!-- 영화 id를 파라미터로 -->
            <input type="hidden" name="movie_id" value="${movie.movie_id}">
            <!-- 임시 확인용, 추후 영화 커버를 영화 id로 저장하고 불러오면 편할 듯 -->
            제목 : ${movie.movie_title} <br>
            <!-- 상세 정보에 전달하거나 -->
            <button type="submit" formaction="movieDetail">상세정보</button>
            <!-- 예매 페이지에 전달하거나 -->
            <button type="submit" formaction="ticketing">예매하기</button>
        </form>
        <hr>
    </c:forEach>
</c:if> --%>

	<footer>
    	<div class="footer">
    		<div class="footer-logo">
				<a href="/"><img src="/resources/img/textLogo-gray.png" class="logo-medium"></a>
			</div>
    		<div class="footer-info">
				<section class="footer-info_list">
					<ul>
						<li><a href="#">기업정보</a></li>
						<li><a href="#">채용정보</a></li>
						<li><a href="#">광고/제휴문의</a></li>
						<li><a href="#">이메일무단수집거부</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">윤리경영</a></li>
					</ul>
				</section>
				<section class="footer-info_content">
					<address class="footer-txt">(04377)서울특별시 용산구 한강대로 23길 55, 아이파크몰 6층(한강로동)</address>
					<ul>
						<li class="footer-txt">대표이사 : 신승용</li>
						<li class="footer-txt">사업자등록번호 : 000-00-00000</li>
						<li class="footer-txt">통신판매업신고번호 : 2022-휴먼교육센터-0203</li>
					</ul>
					<p class="footer-inner_copyright footer-txt">© CJ CGV. All Rights Reserved</p>
				</section>
			</div>
    	</div>
    </footer>

</body>
</html>
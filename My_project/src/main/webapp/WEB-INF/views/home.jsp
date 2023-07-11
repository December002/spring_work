<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/home.jsp</title>
</head>
<body>
	<div class="container">
	  <ul>
	  	<li><a href="${pageContext.request.contextPath }/users/loginform">로그인</a></li>
	  	<li><a href="${pageContext.request.contextPath }/users/signup_form">회원 가입</a></li>
	  	<li><a href="${pageContext.request.contextPath}/gallery/upload_form">사진 업로드 하러 가기</a></li>
	  	<li><a href="${pageContext.request.contextPath }/users/info">프로필</a></li>
	  </ul>
      <br />
      <div class="row">
      <c:forEach var="tmp" items="${list }">
         <div class="col-sm-6 col-md-4 col-lg-3">
               <div class="card mb-3">
                        <div class="img-wrapper">
                           <img class="card-img-top" src="${pageContext.request.contextPath }${tmp.imagePath}" />
                        </div>
                  <div class="card-body">
                        <p class="card-text">${tmp.caption}</p>
                        <p class="card-text">by <strong>${tmp.writer}</strong></p>
                        <a href="${pageContext.request.contextPath}/gallery/detail?num=${tmp.num}">댓글보기</a>
                        <p><small>${tmp.regdate}</small></p>
                  </div>
               </div>
            </div>
      </c:forEach>
      </div>
      <div class="loader">
         <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" fill="currentColor" class="bi bi-arrow-clockwise" viewBox="0 0 16 16">
              <path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z"/>
              <path d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z"/>
         </svg>
      </div>
</div>
<script>
	//로더 기능 추가해야함
	let currentPage=1;
	let lastPage=${totalPageCount};
	let isLaoding=false;
	
	window.addEventListener("scroll", function(){
        //바닥 까지 스크롤 했는지 여부 
        const isBottom = 
           window.innerHeight + window.scrollY  >= document.body.offsetHeight;
        //현재 페이지가 마지막 페이지인지 여부 알아내기
        let isLast = currentPage == lastPage;   
        //현재 바닥까지 스크롤 했고 로딩중이 아니고 현재 페이지가 마지막이 아니라면
        if(isBottom && !isLoading && !isLast){
           //로딩바 띄우기
           document.querySelector(".loader").style.display="block";
           
           //로딩 작업중이라고 표시
           isLoading=true;
           
           //현재 댓글 페이지를 1 증가 시키고 
           currentPage++;
           
           /*
                                 해당 페이지의 내용을 ajax 요청을 통해서 받아온다.
              "pageNum=xxx&num=xxx" 형식으로 GET 방식 파라미터를 전달한다. 
           */
           ajaxPromise("ajax_comment_list","get",
                 "pageNum="+currentPage+"&num=${dto.num}")
           .then(function(response){
              //json 이 아닌 html 문자열을 응답받았기 때문에  return response.text() 해준다.
              return response.text();
           })
           .then(function(data){
              //data 는 html 형식의 문자열이다. 
              console.log(data);
              // beforebegin | afterbegin | beforeend | afterend
              document.querySelector(".comments ul")
                 .insertAdjacentHTML("beforeend", data);
              //로딩이 끝났다고 표시한다.
              isLoading=false;
              
              
              //로딩바 숨기기
              document.querySelector(".loader").style.display="none";
           });
        }
     });
	
</script>
</body>
</html>

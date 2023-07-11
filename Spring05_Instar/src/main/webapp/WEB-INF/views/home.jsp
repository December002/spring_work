<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/home.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">

<style>
body {
  background: #fafafa;
}
main {
  display: flex;
  justify-content: center;
  padding: 65px 0 80px 0;
}

/* header */
header {
  position: fixed;
  display: flex;
  width: 100%;
  justify-content: space-around;
  background-color: white;
  padding: 15px 0 15px 0;
  border-bottom: 1px solid #e1e1e1;
}
h1 {
  font-family: "Lobster", cursive;
  font-size: 28px;
}
.bar-search {
  position: relative;
}
.bar-search input {
  width: 260px;
  padding: 8px 16px 8px 40px;
  background-color: #efefef;
  border: none;
  border-radius: 5px;
  font-size: 16px;
  font-weight: lighter;
}
.bar-search input:focus {
  outline: none;
}
.img-explore {
  position: absolute;
  top: 9px;
  left: 16px;
  width: 15px;
}
.list-nav {
  display: flex;
}
.list-nav li img {
  width: 25px;
  height: 24px;
  margin: 5px 23px 0 0;
}
.img-navProfile {
  border-radius: 100%;
}

/* story */
.box-story {
  display: flex;
  justify-content: flex-start;
  align-items: center;
  width: 470px;
  height: 120px;
  border: 1px solid #e1e1e1;
  border-radius: 10px;
  background-color: white;
  padding: 16px;
  margin: 20px 0 20px 0;
}
.img-profile-56px {
  width: 56px;
  border-radius: 100%;
  margin: 0 20px 5px 0;
}
.name-story {
  font-size: 12px;
  padding: 0 0 0 4px;
}
.img-story {
  border: 3px solid transparent;
  background-image: linear-gradient(#fff, #fff),
    linear-gradient(
      to right,
      rgb(186, 22, 201) 0%,
      rgb(255, 47, 0) 25%,
      rgb(255, 68, 0) 50%,
      rgb(252, 180, 47) 90%,
      rgb(234, 223, 107) 100%
    );
  background-origin: border-box;
  background-clip: content-box, border-box;
}

/* feed */
.box-feed {
  width: 470px;
  border: 1px solid #e1e1e1;
  border-radius: 10px;
  background-color: white;
  overflow: hidden;
}
.head-feed {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.profile-feed {
  display: flex;
  align-items: center;
  padding: 15px;
}
.icon-more {
  width: 20px;
  height: 20px;
  margin: 0 20px 0 0;
}
.userName-feed {
  font-size: 14px;
  font-weight: bold;
  margin: 0 0 4px 10px;
}
.location-feed {
  font-size: 12px;
  margin: 0 0 0 10px;
}
.img-feed {
  width: 470px;
}
.icon-feed {
  display: flex;
  justify-content: space-between;
  padding: 15px;
}
.img-icon {
  width: 25px;
  margin: 0 10px 0 0;
}
.text-like {
  font-size: 13px;
  font-weight: bold;
  margin: 0 15px 15px 15px;
}
.box-comment {
  margin: 15px 0 20px 15px;
}
.text-comment {
  display: inline-block;
  width: 390px;
  margin: 0 0 10px 0;
  font-size: 14px;
}
.date-comment {
  /* display: inline-block; */
  /* width: 400px; */
  margin: 0 0 14px 0;
  font-size: 12px;
  color: #828282;
}
.img-heart-comment:hover,
.img-delete-comment:hover {
  cursor: pointer;
}
.img-delete-comment {
  margin: 0 0 2px 10px;
}
/* 댓글 */
.box-chat {
  border-top: 1px solid #e1e1e1;
  display: flex;
  align-items: center;
  padding: 15px;
}
.input-chat {
  width: 350px;
  border: none;
}
.btn-chat {
  border: none;
  background-color: transparent;
  font-weight: bold;
  color: rgb(0, 149, 246, 0.3);
}
.btn-chat-effect {
  color: rgb(0, 149, 246, 1);
}
.btn-chat-effect:hover {
  cursor: pointer;
}

/* 오른쪽 */
.box-aside {
  margin: 40px 0 0 40px;
}
.img-profile-32px {
  width: 32px;
  border-radius: 100%;
  border: 1px solid #efefef;
}
.box-myProfile {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 320px;
  margin: 0 0 20px 0;
}
.box-myProfile div {
  display: flex;
  align-items: center;
}
.box-myProfile p {
  color: #262626;
  font-weight: bold;
  font-size: 14px;
}

.box-recommend {
  width: 320px;
  margin: 0 0 30px 0;
}
.box-recommend h2 {
  color: #828282;
  font-weight: bold;
  font-size: 14px;
}
.head-recommend {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 0 0 15px 0;
}

.btn-recommend-all {
  background-color: transparent;
  border: none;
  color: #262626;
  font-weight: bold;
  font-size: 12px;
}
.box-recommend-profile {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 0 0 15px 0;
}
.profile-recommend {
  display: flex;
  justify-content: flex-start;
}

.btn-blue {
  background-color: transparent;
  border: none;
  color: rgb(0, 149, 246);
  font-weight: bold;
  font-size: 12px;
}
.userName-recommend {
  font-size: 14px;
  color: #262626;
  font-weight: bold;
  margin: 0 0 4px 10px;
}
.follower-recommend {
  font-size: 12px;
  color: #8e8e8e;
  margin: 0 0 0 10px;
}

/* footer */
.footer {
  width: 320px;
  line-height: 18px;
  font-size: 12px;
  color: #c7c7c7;
}
.footer-info {
  margin: 0 0 20px 0;
}

/* id검색 상자 */
.box-filteredId {
  display: none;
  position: absolute;
  top: 50px;
  left: -50px;
  width: 375px;
  height: 375px;
  background-color: white;
  border-radius: 6px;
  border: 1px solid #e1e1e1;
  overflow: scroll;
  box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.25);
  padding: 10px;
}
.box-recentSearch {
  position: relative;
}
.title-recentSearch {
  position: absolute;
  color: #262626;
  font-weight: bold;
  font-size: 16px;
  top: 10px;
  left: 5px;
  margin: 10px 15px;
}
.content-recentSearch {
  position: absolute;
  color: #8e8e8e;
  font-size: 14px;
  font-weight: bold;
  top: 180px;
  left: 110px;
}
/* .box-filteredId-deco {
  display: inline-block;
  width: 0;
  height: 0;
  border-top: 25px solid transparent;
  border-right: 30px solid transparent;
  border-bottom: 25px solid red;
  border-left: 30px solid transparent;
} */
.filteredId {
  /* display: inline-block; */
  font-size: 14px;
  font-weight: bold;
  padding: 0 0 7px 0;
}
.filteredImg {
  display: inline-block;
  margin: 10px;
  width: 44px;
  height: 44px;
  border-radius: 100%;
}
.wrapFiltered {
  display: flex;
  justify-content: flex-start;
  align-items: center;
}
.wrapText {
  display: flex;
  flex-direction: column;
}
.filteredName {
  font-size: 14px;
  color: #8e8e8e;
}

/* 프로필 메뉴 */
.list-profile {
  position: relative;
}
.wrap-menu {
  display: none;
  position: absolute;
  top: 50px;
  right: 0;
  background-color: white;
  width: 230px;
  border-radius: 6px;
  border: 1px solid #e1e1e1;
  box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.25);
  padding: 20px;
}
.wrap-menu div {
  display: flex;
}
.menu-profile,
.menu-bookmark,
.menu-setting,
.menu-change {
  padding: 0 0 25px 0;
}
.wrap-menu div img {
  width: 16px;
  height: 16px;
  margin: 0 10px 0 0;
}
.wrap-menu div p,
.wrap-menu p {
  font-size: 14px;
  color: #262626;
}

/* 미디어쿼리 */
@media (max-width: 1000px) {
  .box-aside {
    display: none;
  }
  header h1 {
    position: absolute;
    top: 15px;
    left: 25px;
  }
  .bar-search {
    left: 110px;
  }
}
@media (max-width: 800px) {
  .bar-search input {
    width: 200px;
  }
}

@media (max-width: 760px) {
  .bar-search {
    display: none;
  }
  .list-nav {
    position: absolute;
    top: 15px;
    right: 25px;
  }
  header {
    height: 65px;
  }
}
</style>
</head>
<body>
    <header>
      <h1>Westagram</h1>
      <div class="bar-search">
        <img class="img-explore" src="${pageContext.request.contextPath }/resources/icon/explore.png" alt="돋보기 아이콘" />
        <input class="input-searchBar" type="text" placeholder="검색" />
        <div class="box-filteredId">
          <div class="box-recentSearch">
            <p class="title-recentSearch">최근 검색 항목</p>
            <p class="content-recentSearch">최근 검색 내역 없음.</p>
          </div>
        </div>
      </div>
      <nav>
        <ul class="list-nav">
          <li><img src="${pageContext.request.contextPath }/resources/icon/home.png" alt="홈 아이콘" /></li>
          <li><img src="${pageContext.request.contextPath }/resources/icon/send.png" alt="다이렉트 메시지 아이콘" /></li>
          <li><img src="${pageContext.request.contextPath }/resources/icon/add.png" alt="게시물 추가 아이콘" /></li>
          <li><img src="${pageContext.request.contextPath }/resources/icon/compass.png" alt="탐색 아이콘" /></li>
          <li><img src="${pageContext.request.contextPath }/resources/icon/heart.png" alt="좋아요 아이콘" /></li>
        </ul>
      </nav>
      </header>
      </div>

    <main>
      <!-- 왼쪽 -->
      <div>
        <div class="box-story">
          <li>
            <img
              class="img-profile-56px img-story"
              src="src/img/profile/apple.jpg"
              alt="프로필 이미지"
            />
            <p class="name-story">apple_01</p>
          </li>
          <li>
            <img
              class="img-profile-56px img-story"
              src="src/img/profile/peach.jpg"
              alt="프로필 이미지"
            />
            <p class="name-story">peach_02</p>
          </li>
        </div>

        <div>
          <article class="box-feed">
            <div class="head-feed">
              <div class="profile-feed">
                <img
                  class="img-profile-32px"
                  src="src/img/profile/apple.jpg"
                  alt="프로필 이미지"
                />
                <div>
                  <p class="userName-feed">apple_01</p>
                  <p class="location-feed">Seoul, Kroea</p>
                </div>
              </div>
              <img class="icon-more" src="src/icon/more.png" alt="더보기 아이콘" />
            </div>

            <img class="img-feed" src="src/img/feed/apple.jpg" alt="피드 이미지" />

            <div class="icon-feed">
              <div>
                <img class="img-icon" src="src/icon/heart.png" alt="하트 아이콘" />
                <img class="img-icon" src="src/icon/chat.png" alt="댓글 아이콘" />
                <img
                  class="img-icon"
                  src="src/icon/send.png"
                  alt="다이렉트 메시지 아이콘"
                />
              </div>
              <img
                class="img-icon"
                src="src/icon/bookmark.png"
                alt="북마크 아이콘"
              />
            </div>

            <p class="text-like">좋아요 120개</p>

            <div class="box-comment"></div>

            <div class="box-chat">
              <img class="img-icon" src="src/icon/smile.png" alt="이모지 아이콘" />
              <form>
                <input
                  class="input-chat"
                  type="text"
                  placeholder="댓글 달기..."
                />
                <button class="btn-chat" type="submit">게시</button>
              </form>
            </div>
          </article>
        </div>
      </div>

      <!-- 오른쪽 -->
      <div class="box-aside">
        <div class="box-myProfile">
          <div>
            <img
              class="img-profile-56px"
              src="src/img/profile/candy.jpg"
              alt="프로필 이미지"
            />
            <p>candy_0426</p>
          </div>
          <button class="btn-blue" type="button">전환</button>
        </div>

        <div class="box-recommend">
          <div class="head-recommend">
            <h2>회원님을 위한 추천</h2>
            <button class="btn-recommend-all" type="button">모두 보기</button>
          </div>
          <div class="box-recommend-profile">
            <div class="profile-recommend">
              <img
                class="img-profile-32px"
                src="${pageContext.request.contextPath }/resources/icon/add.png"
                alt="프로필 이미지"
              />
              <div>
                <p class="userName-recommend">watermelon_03</p>
                <p class="follower-recommend">apple_01님이 팔로우합니다</p>
              </div>
            </div>
            <button class="btn-blue" type="button">팔로우</button>
          </div>
          <div class="box-recommend-profile">
            <div class="profile-recommend">
              <img
                class="img-profile-32px"
                src="src/img/profile/lemon.jpg"
                alt="프로필 이미지"
              />
              <div>
                <p class="userName-recommend">lemon_04</p>
                <p class="follower-recommend">candy_0426님이 팔로우합니다</p>
              </div>
            </div>
            <button class="btn-blue" type="button">팔로우</button>
          </div>
        </div>

        <div class="footer">
          <div class="footer-info">
            <a href="#">소개 ·</a>
            <a href="#">도움말 ·</a>
            <a href="#">홍보센터 ·</a>
            <a href="#">API ·</a>
            <a href="#">채용 정보 ·</a>
            <a href="#">개인정보처리방침 ·</a>
            <a href="#">약관 ·</a>
            <a href="#">위치 ·</a>
            <a href="#">언어</a>
          </div>
        </div>
      </div>
    </main>

    <script src="js/main.js"></script>
  </body>
</html>
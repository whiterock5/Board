# Board
![image](https://user-images.githubusercontent.com/90433847/152989830-d521026e-6486-4fa0-969b-bcc41d443045.png)
#### 프로젝트 소개
   웹 프로그래밍의 기초라 할 수 있는 기본적인  CRUD기능을 가진 게시판을 만든 프로젝트입니다. <br/>
   단순 게시판 CRUD만 적용할 계획이었으나, 너무 부족한것 같아 조금씩 공부해가며 부가 기능을 추가하고 있습니다.
   

#### 1. 프로젝트 기능
  본 프로젝트는 가장 기초적인 기능인 게시판 게시물을 대상으로 Create, Read, Update, Delete가 가능한 게시판입니다. 
  점차 적으로 공부해가며 부가기능을 추가해 가고 있습니다.
  
##### -> 기본 기능
 + 웹에서 사용자의 조작으로 게시글을 작성하여 DB에 저장한다 ( Create )
 + DB에 있는 게시글을 조회하여 웹상에 표시한다 ( Read )
 + 웹에서 사용자의 조작으로 DB에 있는 게시글을 수정하여 저장한다. ( Update )
 + 웹에서 사용자의 조작으로 DB에 있는 게시글을 삭제한다. ( Update )
 
##### -> 추가 기능
 + 회원 관리 및 회원 관리 페이지를 Admin 계정에게만 접근 가능하게 만든다.
 + 회원 로그인 기능을 적용한다.
 + 회원 가입 기능을 적용한다.
 + 게시판에 접근시 회원제 게시판으로서, 인터셉트를 통해 로그인이 되지않았을경우 로그인화면으로 이동한다.
 + 게시판에 댓글기능을 추가한다. ( 댓글 등록, 댓글삭제 , 댓글조회 )
 + 댓글기능을 비동기화식으로 변경한다. ( Ajax )
 
 #### 2. 개발환경
  OS : window10 x64
  개발툴: STS3 3.9.11 , Sql Developer 21.2.1 
  Back-end: Spring Framework 3.1.1.RELEASE, Tomcat v9.0
  Front-end: bootstrap 
  Data Base: Oracle 11g Release R2
  Web browser: Chrome

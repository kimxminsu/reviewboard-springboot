# reviewboard-springboot
Content Review Board Project

## Info
Bigdata 6th first_project Team 2
## member
`김두윤` `김민수(여)` `김민수(남)` `김성환`
## Usage
- mySQL schema 생성
MySQL Workbench-좌측 Navigator-Schemas-우클릭-Create Schema...-Name: firstproject, Charset/Collation: utf-8/utf8_bin-Apply

- src\main\resources\application.properties
L4~7 MySQL 설정
L17 update -> create(초기화)

- spring
Boot Dashboard-Start

- MySQL 
생성된 테이블(actor,castmates,director,files,likelist,program,reply,studio,user) 확인

- src\main\resources\application.properties
L17 create -> update

- src\main\java\com\example\first_project\service\UserService.java
L31 ROLE_USER -> ROLE_ADMIN

- src\main\java\com\example\first_project\controller\HomeController.java
L131 fileUrl 해당 디렉토리 주소로 변경

- Chrome
localhost:8811
LOGIN-REGISTER-정보 입력 후 회원가입-로그인 (ROLE_ADMIN)
ADMIN-포스터이미지->제작사->배우->감독->프로그램->출연진 추가

- src\main\java\com\example\first_project\service\UserService.java
L31 ROLE_ADMIN -> ROLE_USER

- Chrome
localhost:8811
LOGIN-REGISTER-정보 입력 후 회원가입-로그인 (ROLE_USER)
ADMIN 접근 불가
LIST-영화/방송-프로그램 선택-좋아요 클릭
MYPAGE-좋아요 누른 프로그램 포스터 나타남

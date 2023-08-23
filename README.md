# 🎗 Remember

<br>

## 🗒 프로젝트 소개

<div align="center"> 
<img src="./remember/src/main/resources/static/image/icon.png" width=20% height=20%>
<br><br>
대한민국의 청년들이 독립운동가들의 심장 소리를 듣고 정치, 경제, 사회, 문화 전 영역에서<br/>
위대한 대한민국을 만들어나가길 꿈꾸며 독립운동가들의 역사를 전 세계에 알리고자 프로젝트를 구현하였습니다.<br/>

<br>

[배포 서버](http://49.50.175.53/)<br/>
[REPOSITORIE](https://github.com/eunfire/remember)<br/><br/>

</div>
<br>
<br>

## 👥 팀원 소개

<table>
  <tr>
    <td><b><a href="https://github.com/eunfire">김은세</a></b></td>
    <td><b><a href="https://github.com/KKangdaa">강다현</a></b></td>
    <td><b><a href="https://github.com/y-100">윤백</a></b></td>
    <td><b><a href="https://github.com/subin4591">황수빈</a></b></td>
  </tr>
  <tr>
    <td><b>팀장</b></td>
    <td><b>팀원</b></td>
    <td><b>팀원</b></td>
    <td><b>팀원</b></td>
  </tr>
  <tr>
    <td><b>마이페이지</b></td>
    <td><b>상세페이지<br/>배포</b></td>
    <td><b>회원가입<br/>로그인</b></td>
    <td><b>메인페이지<br/>리스트페이지<br/>독립선언서페이지</b></td>
  </tr>
</table>
<br>
<br>

## 🔌 기술스택

![Java](https://img.shields.io/badge/Java%2017-%23ED8B00.svg?style=flat-square&logo=openjdk&logoColor=white) ![MySQL](https://img.shields.io/badge/Mysql%208.0-%2300000f.svg?style=flat-square&logo=mysql&logoColor=white) ![Spring](https://img.shields.io/badge/Spring%20Boot-%236DB33F.svg?style=flat-square&logo=spring&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3-%231572B6.svg?style=flat-square&logo=CSS3&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E.svg?style=flat-square&logo=Javascript&logoColor=white) ![jQuery](https://img.shields.io/badge/JQuery-%230769AD.svg?style=flat-square&logo=JQuery&logoColor=white)

#### Deploy

![NaverCloud](https://img.shields.io/badge/Naver%20Cloud-03C75A.svg?style=flat-square&logo=Naver&logoColor=white)

#### Tool

![Git](https://img.shields.io/badge/Git-F05032?style=flat-square&logo=Git&logoColor=white) ![GitHub](https://img.shields.io/badge/GitHub-181717?style=flat-square&logo=GitHub&logoColor=white) ![STS4](https://img.shields.io/badge/STS4-%236DB33F.svg?style=flat-square&logo=spring&logoColor=white)

<br>
<br>

## 💻 실행 방법

### 환경 변수

<table>
  <tr>
    <td><b>environment</b></td>
    <td><b>description</b></td>
  </tr>
  <tr>
    <td><b>{YOUR_DB_SCHEMA}</b></td>
    <td><b>MY SQL DB Schema 이름을 입력해주세요</b></td>
  </tr>
  <tr>
    <td><b>{YOUR_MYSQL_USERNAME}</b></td>
    <td><b>MY SQL 사용자 이름을 입력해주세요</b></td>
  </tr>
  <tr>
    <td><b>{YOUR_MYSQL_PASSWORD}</b></td>
    <td><b>MY SQL 사용자의 비밀번호를 입력해주세요</b></td>
  </tr>
  <tr>
    <td><b>{YOUR_GOOGLE_EMAIL}}</b></td>
    <td><b>이메일 전송자로 사용할 구글 계정을 입력해주세요</b></td>
  </tr>
  <tr>
    <td><b>{YOUR_GOOGLE_PASSWORD}</b></td>
    <td><b>이메일 전송자로 사용할 구글 계정에 대한 비밀번호를 생성하여 입력해주세요</b></td>
  </tr>
</table>

<br>

#### 1. 레포지토리를 `clone` 합니다

```markdown
$ git clone https://github.com/eunfire/remember.git
```

#### 2. application.properties 파일을 생성합니다

```markdown
spring.mvc.view.prefix=/WEB-INF/views/
spring.mvc.view.suffix=.jsp

spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.datasource.url=jdbc:mysql://localhost:3306/{YOUR_DB_SCHEMA}
spring.datasource.username={YOUR_MYSQL_USERNAME}
spring.datasource.password={YOUR_MYSQL_PASSWORD}

mybatis.config-location=classpath:mybatis/mybatis-config.xml
mybatis.mapper-locations=classpath:mybatis/mapper/*-mapping.xml

spring.mail.host=smtp.gmail.com
spring.mail.port=587
spring.mail.username={YOUR_GOOGLE_EMAIL}
spring.mail.password={YOUR_GOOGLE_PASSWORD}
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true
```

#### 3. 프로젝트를 실행합니다

```markdown
프로젝트 마우스 우 클릭 > Run As > Spring Boot App 클릭
크롬 주소창에 http://localhost:8080 입력
```

<br/>

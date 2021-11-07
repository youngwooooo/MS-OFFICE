# MS-OFFICE
비대면 업무 관리 및 공유를 위한 그룹웨어 + 협업툴
<br><br><br>

## ▷ 개발 환경
- Java(JDK 1.8)
- Spring Framework
- MyBatis
- Maven
- Oracle
- JSP
- Javascript
- jQuery
- Ajax
- SVN
- Eclipse
<br><br><br>

## ▷ 담당 기능
### 1. 전체적인 화면 구성 및 CSS
- AdminLTE Bootstrap Template를 활용한 전체적인 화면 구성 및 CSS
<br><br>

### 2. 메인(홈)
![메인](https://user-images.githubusercontent.com/80368534/140640140-b5c3528d-6b7b-42a6-b9c8-c36e3f6a4c3a.PNG)
- 사용자 기본 정보 조회
- 출·퇴근 처리 / 주간 근무시간 조회
- 사용자가 지정된 업무들을 최근 알림으로 조회(7일)
- 사용자가 설문 대상자로 지정된 설문을 카드형식으로 2건 조회
- FullCalendar 활용한 사용자의 일정 조회
- 최근에 작성된 5건의 공지사항 조회
<br><br>

### 2. 마이페이지
![마이페이지](https://user-images.githubusercontent.com/80368534/140640180-38663a4a-58b6-445b-9393-b56d87a16104.PNG)
- 사용자 정보 조회
- [사진 올리기] 클릭 시 이미지 파일만 선택할 수 있도록 validation 체크<br>
  [수정] 버튼 클릭 시, 이전 프로필 사진 파일 삭제 후 변경된 파일 업로드
- 이름, 연락처 클릭 시 input창이 보여지고 해당 정보 기입하여 수정
<br><br>

### 3. 알람
![알람 - 사이드바](https://user-images.githubusercontent.com/80368534/140640444-42bfd20b-4d99-46fc-920d-638d9e1b5aae.png)
![메인화면 -알람](https://user-images.githubusercontent.com/80368534/140640338-183717a0-9f49-402c-82f6-860f2bd3d31a.PNG)
- 좌측 사이드바 메뉴의 전자결재·메일·설문·메신저에서 자신이 처리해야 할 업무(문서) 및 메신저 채팅 개수를 조회
- 헤더 우측 종 아이콘의 NEW 표시로 알람 여부를 확인할 수 있고 사용자가 작성한 전자결재 문서 승인 및 설문 완료, 메일 수신 시 해당 알림 등록<br>
  해당 알림을 클릭하여 해당 문서로 이동 시, 알람 확인 처리

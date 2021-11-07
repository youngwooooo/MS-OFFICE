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
<br><br>

### 4. 캘린더
![캘린더 홈](https://user-images.githubusercontent.com/80368534/140640522-191b1206-ee82-4448-aa23-2dc03d461222.PNG)
![캘린더 홈2](https://user-images.githubusercontent.com/80368534/140640653-0c0c49f0-6ded-4b17-a03d-cdd7131e4a27.PNG)
- <strong>FullCalendar 라이브러리 활용</strong>
- FullCalendar extendedProps 속성을 이용하여 DB의 데이터들을 저장하고 Ajax로 캘린더를 생성하여 일정 조회
- FullCalendar select 함수를 이용하여 날짜 선택 및 드래그로 일정 등록
- FullCalendar eventClick 함수를 이용하여 일정 상세 조회를 할 수 있고 상세조회 시 일정을 수정·삭제할 수 있음
- 사용자가 원하는 카테고리를 생성, 카테고리 색 변경, 카테고리 삭제(카테고리 삭제 시 해당 카테고리와 관련된 모든 일정 삭제)
- FullCalendar eventDidMount 함수를 이용하여 사용자가 선택한 카테고리별 일정을 조회
<br><br>

### 5. ToDO+(업무공유)
![todo - 홈](https://user-images.githubusercontent.com/80368534/140640824-b0f14a48-1e72-4f89-9051-b762bdeac033.PNG)
![todo - 보드상세](https://user-images.githubusercontent.com/80368534/140640763-268c98aa-0163-4de2-b467-dc1953984633.PNG)
- 조직도를 활용해 공유자를 설정할 수 있고, 사용자가 처리할 업무를 공유자들과 함께 조회·등록·수정·삭제를 할 수 있는 기능
- 사용자와 공유자의 권한은 동일함
- 보드 → 카드 메뉴 → 카드의 단계적 구성
- Ajax만을 활용한 CRUD 기능 구현
- 파일 업로드 및 다운로드가 가능하며 이미지 파일 첨부 시, 미리보기 기능 구현
<br><br>

### 6. 설문
![설문 - 홈](https://user-images.githubusercontent.com/80368534/140640875-37654bf5-f535-4d26-9765-37e816f4b156.PNG)
![설문 - 설문작성](https://user-images.githubusercontent.com/80368534/140640879-70eb7556-8883-4402-9bc7-d36a2c0cd41c.PNG)
![설문 - 설문작성3](https://user-images.githubusercontent.com/80368534/140640886-48fcc36a-f8bb-4b0e-9b09-bc4fa269e905.PNG)
![설문 - 설문작성4](https://user-images.githubusercontent.com/80368534/140640889-aedf1997-f718-41f2-827b-541510afcf22.PNG)
![설문 - 설문작성2](https://user-images.githubusercontent.com/80368534/140640893-7857e4ef-5647-4fe0-afe1-c46468a3ccbc.PNG)
- 사용자가 설문 대상자들을 설정하고 설문을 등록하여 결과를 확인할 수 있음
- 설문 대상자의 경우 조직도를 활용해 설정
- 설문 결과 공개 여부/댓글 작성 여부/참여 후 수정 여부에 체크한 결과에 따라 각 조건에 맞는 설문이 생성됨
- 파일 업로드 및 다운로드가 가능하며 이미지 파일 첨부 시, 미리보기 기능 구현
- 문항은 선택형·점수형 2가지
- 추가한 문항은 등록 전 수정 및 삭제 가능
<br>

![설문 - 설문상세조회](https://user-images.githubusercontent.com/80368534/140640943-543eca09-d716-4a98-8dd6-eae86bdcba10.PNG)
![설문 - 설문상세조회2](https://user-images.githubusercontent.com/80368534/140640945-a4bef2ec-a285-4b36-af08-bfd0b95ff591.PNG)
- 선택형 문항의 경우 해당 문항 결과를 Chart js API를 활용하여 도넛차트로 한 눈에 확인
- 설문 상세 페이지에서 댓글 작성·수정·삭제 기능
- 설문 작성자는 설문의 상태를 진행/중지/마감 상태로 변경할 수 있고, 수정 중이거나 마감 상태 시 설문 응답 불가




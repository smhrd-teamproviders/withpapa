# :baby_chick:<span style="color:green">**WITHPAPA** </span>
## :baby_chick: [WITHPAPA] (팀명 : PROVIDERS :raised_hands:)
![WITHPAPA_MAIN](https://github.com/smhrd-teamproviders/withpapa/assets/167040692/ca516de4-c653-47a2-885c-7d7d0fb872ea)

### :open_file_folder: 서비스 소개
- 서비스명 : [WITHPAPA] 아빠들과 함께하는 아이들의 행복한 시간
- 서비스 설명 : 주 사용자가 '아빠'인 놀이·체험 프로그램 장소 정보 제공 반응형 웹사이트
  <br>
### :calendar: 개발 기간 
2024.05.17 ~ 2024.06.25 (40일)


### :wrench: 기술 스택
![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)
![VisualStudioCode](https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)
![GoogleSheets](https://img.shields.io/badge/Google%20Sheets-34A853?style=for-the-badge&logo=google-sheets&logoColor=white)
![Miro](https://img.shields.io/badge/Miro-050038?style=for-the-badge&logo=Miro&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Spring](https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white)
![javascript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=JavaScript&logoColor=white)
![css](https://img.shields.io/badge/CSS-239120?&style=for-the-badge&logo=css3&logoColor=white)
![html](https://img.shields.io/badge/HTML-239120?style=for-the-badge&logo=html5&logoColor=white)


### :page_facing_up: 시연 페이퍼 
![Providers_ WITHPAPA -시연페이퍼-001](https://github.com/smhrd-teamproviders/withpapa/assets/167040692/4889006a-c562-41f7-9d03-f256ef9e9a97)


### :hatched_chick: 주요 기능
- 지역 선택 : 시작 화면의 지도 이미지에 시,군 버튼을 클릭하면 해당 지역의 체험 프로그램이 표시됨
- 유형 선택 : 원하는 체험 프로그램의 유형을 원터치 선택하면 해당 유형의 체험 프로그램이 표시됨
- 날짜 선택 : 체험을 하고 싶은 날짜를 선택하면, 해당 날짜의 체험 프로그램 표시
- 지도 표시 : 상세 검색 화면에서 유형, 지역, 날짜를 필터링 한 후 프로그램 상세 정보에 지도 표시
- 상세 정보 : 필터링된 조건 - 체험 이미지 - 지도 화면 - 체험 프로그램 상세 정보에 지도 표시

### :key: 주요 기술
- 카카오 지도 API 활용 : 선택한 지역, 유형의 프로그램 장소 정보 제공
- MyBatis Dynamic SQL 활용 : 가변적인 검색 조건에 대응 가능

### :pencil2:유스케이스 다이어그램
- 미리캔버스 작업

![유스케이스다이어그램](https://github.com/smhrd-teamproviders/withpapa/assets/167040692/79223cda-2395-4e06-9bdc-bab7e75430b0)

### :notebook_with_decorative_cover: 서비스 흐름도
- MIRO 작업 후 미리캔버스 작업
![서비스 흐름도_1](https://github.com/smhrd-teamproviders/withpapa/assets/167040692/88bc19c4-996f-49ae-b1ed-1a2bfb5f4914)


### :notebook_with_decorative_cover: 시스템 아키텍처
- MIRO 작업 후 미리캔버스 작업

![시스템 아키텍처_1](https://github.com/smhrd-teamproviders/withpapa/assets/167040692/a1b4273a-f12e-4155-a972-081477b336ce)



### :pushpin: ER 다이어그램
- MIRO 작업 후 미리캔버스 작업

![ER다이어그램](https://github.com/smhrd-teamproviders/withpapa/assets/167040692/0c061288-a37f-42cc-92f8-0daf50987527)


### :computer: 팀원 소개


|이름    |역할          |
|--------|--------------|
|김형동(Back-End)|팀장, Back-End 총괄 및 프로그램 검색 기능 구현, DB 테이블 설계 및 생성|
|서자연(Back-End)|프로그램 상세 정보 불러오기 기능 구현,데이터 일부 수집|
|곽세진(PM)| Project Manager, PPT 자료 및 시연 페이퍼 제작, Python pandas 활용하여 공공데이터 수집 및 DB 전처리|
|정승진(Front-End)|Front-End 총괄 및 메인 화면, 검색 화면, 상세 검색 화면 전체 구현|
|윤정식(Front-End)|시작 화면 검색창 및 지도 이미지 삽입, 레이어 팝업창 등 구현|

### :dart: 트러블 슈팅


|분야    |오류 내용               |오류 해결                                |
|-------------|-----------------------|-----------------------------------------|
|Back-End|List<SearchResult> 타입의 변수 result의 값을 Controller에서 View로 전달할 때 View에서 결과값 미출력|jstl 내 for each 태그의 items 속성값이 Collection(List or Map) 타입임을 확인 후 List 타입의 변수 result로 변경하여 해결|
|Front-End|닫는 div 태그 누락으로 상세 검색창 내 지도 이미지, 유형 아이콘 혼재되는 상황 발생|닫는 div 태그 삽입하여 해결|






























<p align="center"><img src ="https://user-images.githubusercontent.com/92283099/163509976-5d08945c-e91f-4d5f-b979-1cc08e65c3d4.png" width="300px" height="300px" /></p>

---------------------------------------


## 📌 About 밀슐랭 PROJECT
<p>밀키트를 판매하는 쇼핑몰 구현을한 프로젝트입니다.</p>
<p>기간 : 2022-03 ~ 2022-04</p>
<p> 사이트 주소: _________ </p>
<img src ="https://user-images.githubusercontent.com/92283099/163513494-eb9a0114-bba0-4e34-a19c-3cbada313060.PNG">

## ⭐ 팀원 소개
#### 🙋윤가영(https://github.com/foryoon0)
- 홈페이지 디자인
- 로그인&회원가입
- 아이디/비밀번호 찾기
- 마이페이지(리뷰,질문)
- 회원 정보수정, 패스워드변경
- 장바구니
- 상품 상세보기
- 리뷰 작성
- QNA 게시판 CRUD

#### 🙋‍♂️김주평(https://github.com/jinjin1469)
-
-
-
-
-
-
-


## ✒️ 개발환경
- Eclipse
- Sourcetree
- GitHub

## 💡 사용기술
#### Back-End
- JAVA 8
- Spring MVC
- My Batis

#### Front-End
- Javascript
- jQuery
- CSS
- 
#### Build tool
- maven

#### Database
- Oracle

#### AWS
-
-
## 📚 Entity Relationship Diagram
<img src="https://user-images.githubusercontent.com/92283099/163517278-2b74be8e-a8bd-4bb5-94af-9b78a11002a6.png">





## 🚩 system architecture

시스템 아키텍쳐~~



## 🌟 기능 소개
1. Auth 🔐
```
1-1. 로그인 
    - Cookie를 이용하여 아이디 저장하기
1-2. 회원가입 
    - AJAX 비동기 & 동기식 체크
    - 다음 주소 API 활용 
1-3. 아이디/비밀번호 찾기
    - javax.mail를 이용하여 임시 비밀번호 발송
```
2. Main ✨
```
2-1. 이미지 슬라이더 
    - Swiper.js를 이용하여 Main 이미지 슬라이더 구현
2-2. 베스트 상품, 추천상품, 신상품
    - 전체 상품중 판매량을 기준으로 베스트 상품 선정
    - 상품 등록시간을 기준으로 신상품 선정
    - 상품 중 랜덤으로 8개 아이템을 추천상품으로 선정
```
3. Store 🛒
```
3-1. 카테고리에 따른 상품 분류 
```
4. Product 🎁
```
4-1. 상품의 상세정보를 보여주는 페이지 
4-2. 옵션 선택 
    - 선택가능한 옵션 리스트와 남은 수량를 보여준다.
4-3. 장바구니, 구매 
    - 장바구니에 담거나 바로 구매페이지로 넘어갈 수 있음 
    - 해당 기능은 로그인 후에만 이용 가능 
4-4. 상품별 리뷰
    - 상품별 리뷰를 모아볼 수 있다.
4-5. 상품별 QNA 게시판
    - 작성된 질문은 작성자 본인과 관리자만 확인할 수 있다.
    - 관리자 미답변시 '답변대기', 관리자 답변시 '답변완료' 상태 표기
    - Paging 구현 
```
5. My Page📝
```
5-1. 로그아웃 
5-2. 장바구니 
    - 체크박스를 이용하여 여러개의 상품 동시 주문 가능 
    - 삭제버튼을 클릭하여 장바구니에서 상품 제거 
    - 가격과 개수에 따른 가격 표시 
    - 총 주문금액에 따른 배송료 변경
    - 장바구니 내의 total 값 표시 
5-3. 주문내역
    - 상품 주문 현황 확인
    - 주문 상세보기를 통하여 주문내역 확인 가능 
    - 주문취소 가능(결제취소)
    - 배송상태 확인 가능
    - 구매확정 후 리뷰작성 가능
    - 각 주문 별 리뷰확인 가능
    - Paging 구현 
5-4. 개인정보 수정
5-5. 비밀번호 수정
    - 현재 비밀번호 일치시에만 변경 가능
5-6. 내가 작성한 리뷰 모아보기
    - Paging 구현 
5-7. 내가 작성한 질문 모아보기 
    - 관리자 미답변시 '답변대기', 관리자 답변시 '답변완료' 상태 표기
5-8. 회원탈퇴
    - 배송 준비중인 상품이 있을 경우 탈퇴 불가능
    - 현재 비밀번호 일치시에만 탈퇴 가능
5-9. 포인트현황
    - 포인트 차감/사용현황 확인 가능
```
6. Admin🔐
```
6-1. 로그아웃 
6-2. 상품 등록 
    - 상품 이미지 업로드 
    - 옵션 값 추가를 위한 동적 테이블 
    - AJAX 비동기 & 동기식 체크
6-3. 상품 수정
    - 옵션 값 추가를 위한 동적 테이블  
    - AJAX 비동기 & 동기식 체크
6-4. 상품 관리
    - 체크된 상품 수량을 0개로 수정하여 일괄 판매중지 가능
    - 판매중지된 상품 중 수량을 입력받아 일괄 판매재개 가능
6-5. 배송 관리
    - 관리자 주문 취소 가능
    - 배송완료로 변경 가능
6-6. 전체 질문 모아보기
   - Paging 구현 
6-7. 전체 리뷰 모아보기
   - Paging 구현 
   - 관리자 미답변시 '답변대기', 관리자 답변시 '답변완료' 상태 표기
6-5. 카테고리 관리
   - 카테고리 추가/삭제/순서변경 가능
6-6. 매출확인
  - 일매출, 월매출 그래프로 확인 가능
```

7. customer service center 📍
```
7-1. 공지사항 게시판
    - 관리자 등록/수정/삭제 가능
7-2. 자주묻는질문
```
8. order💲
```
8-1. 주문하기
    - 적립 되어있는 포인트를 사용할 수 있다.
    - 적립 예상 포인트 확인가능
    - 회원 정보로 택배를 받거나, 주소 변경 가능
```
9.Payment💸
```
9-1. 결제
    - import 모듈을 이용하여 결제 기능 구현 
    (개발자용이기 때문에 결제 금액은 일정시간이 지난 후 자동으로 결제 취소가 됩니다.) 
```


# GroupWare

Spring Boot와 JSP 기반으로 구현한 사내 그룹웨어 웹 애플리케이션입니다. 공지사항, 자유 게시판, 메인 홈, 사이드바, 전자결재, 메일, 일정, 근태, 주소록, 문서함 등 업무 협업에 필요한 기능을 제공합니다.

## 프로젝트 개요

- **프로젝트명**: GroupWare
- **목표**: 조직 구성원이 업무 정보를 공유하고 협업할 수 있는 통합 그룹웨어 서비스 구축
- **주요 기술**: Java 21, Spring Boot, JSP, MyBatis, MySQL, Gradle
- **배포 환경**: Oracle Cloud Infrastructure(OCI) 기반 Linux 서버

## 주요 기능

### 공지사항

- 관리자 권한 기반 공지사항 작성, 조회, 수정, 삭제
- 공지 목록 및 상세 페이지 제공
- 사내 주요 전달사항을 구성원에게 공유하는 기능

### 자유 게시판

- 게시글 생성, 조회, 수정, 삭제(CRUD)
- 게시글 상세 조회 및 목록 조회
- 구성원 간 자유로운 커뮤니케이션 지원

### 메인 홈 및 사이드바

- 로그인 후 접근하는 메인 홈 화면 구성
- 주요 메뉴로 이동할 수 있는 사이드바 UI 설계 및 제작
- 그룹웨어 핵심 기능에 빠르게 접근할 수 있도록 화면 구조 개선

### 기타 그룹웨어 기능

- 전자결재
- 메일
- 일정 관리
- 회의실 예약
- 근태 관리
- 주소록
- 문서함
- 할 일 관리

## 담당 역할

제가 담당한 역할은 다음과 같습니다.

- **공지사항 기능 개발**
  - 관리자 권한을 가진 사용자만 공지사항을 관리할 수 있도록 기능 구현
  - 공지사항 작성, 조회, 수정, 삭제 흐름 개발

- **자유 게시판 CRUD 개발**
  - 게시글 등록, 목록 조회, 상세 조회, 수정, 삭제 기능 구현
  - 사용자 간 의견 공유가 가능한 게시판 화면과 기능 제작

- **메인 홈 및 사이드바 디자인/제작**
  - 그룹웨어의 첫 화면인 메인 홈 구성
  - 서비스 내 주요 메뉴 이동을 위한 사이드바 디자인 및 UI 제작

- **프로젝트 배포**
  - Oracle Cloud Infrastructure(OCI)에 프로젝트 배포
  - 원격 서버 접속 및 Linux 환경에서 애플리케이션 실행 환경 구성
  - 배포 과정에서 Linux 파일/디렉터리 권한 문제로 배포 실패를 경험했고, 권한 설정을 확인하고 수정하여 문제를 해결

## 배포 경험 및 학습 내용

프로젝트를 OCI 환경에 배포하면서 원격 Linux 서버에 접속해 애플리케이션을 실행하고 운영하는 과정을 경험했습니다. 이 과정에서 Linux 권한 문제로 인해 배포가 실패하는 상황을 겪었고, 사용자 권한, 파일 소유자, 실행 권한, 디렉터리 접근 권한을 점검하며 문제를 해결했습니다.

이를 통해 단순히 애플리케이션을 개발하는 것뿐만 아니라, 실제 서버 환경에서 서비스가 동작하기 위해 필요한 Linux OS 권한 체계와 배포 환경 구성에 대한 이해도를 높일 수 있었습니다.

## 기술 스택

| 구분 | 기술 |
| --- | --- |
| Backend | Java 21, Spring Boot 3.1.3 |
| View | JSP, JSTL |
| Database | MySQL |
| Persistence | MyBatis |
| Build | Gradle |
| Server | Apache Tomcat, OCI Linux Server |
| Frontend | HTML, CSS, JavaScript |

## 프로젝트 실행 방법

### 1. 저장소 클론

```bash
git clone <repository-url>
cd GroupWare
```

### 2. 데이터베이스 설정

`src/main/resources/application.properties`에서 MySQL 접속 정보를 실행 환경에 맞게 설정합니다.

```properties
spring.datasource.url=jdbc:mysql://<host>:<port>/<database>?characterEncoding=utf8
spring.datasource.username=<username>
spring.datasource.password=<password>
```

필요한 테이블 구조와 데이터는 `MySQL_DataBaseBackup` 디렉터리의 SQL 백업 파일을 참고해 복원할 수 있습니다.

### 3. 애플리케이션 실행

```bash
./gradlew bootRun
```

기본 포트는 `8080`입니다.

```text
http://localhost:8080
```

### 4. WAR 빌드

```bash
./gradlew bootWar
```

빌드 결과물은 `build/libs` 디렉터리에 생성됩니다.

## 배포 환경

- OCI 인스턴스에 원격 접속
- Linux 서버에 Java 및 실행 환경 구성
- MySQL 데이터베이스 연결 설정
- 업로드 디렉터리 및 정적 리소스 경로 권한 설정
- WAR 또는 Spring Boot 실행 방식으로 서비스 배포

## 프로젝트를 통해 배운 점

- Spring Boot와 JSP 기반 웹 애플리케이션 구조 이해
- 게시판 CRUD 흐름과 관리자 권한 기능 구현 경험
- MyBatis를 활용한 데이터베이스 연동 경험
- 메인 홈과 사이드바 UI 설계 경험
- OCI 기반 서버 배포 경험
- Linux 파일 권한, 소유자, 실행 권한 문제 해결 경험
- 개발 환경과 운영 서버 환경의 차이를 고려한 배포의 중요성 이해

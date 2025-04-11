# GitOps Manifests Repository

GitOps 방식으로 Kubernetes 클러스터를 관리하기 위한 매니페스트 파일 저장소.

## 개요

Kubernetes 리소스를 선언적 방식으로 관리하며, ArgoCD를 통해 자동으로 클러스터에 배포. 모든 환경(개발, 스테이징, 프로덕션)에 대한 Kubernetes 매니페스트 포함.

## 레포지토리 구조

```
.
├── base/                  # 기본 매니페스트 파일
│   ├── account/          # Account 서비스 매니페스트
│   ├── order/           # Order 서비스 매니페스트
│   └── product/         # Product 서비스 매니페스트
├── overlays/             # 환경별 설정 오버레이
│   ├── dev/             # 개발 환경 설정
│   ├── staging/         # 스테이징 환경 설정
│   └── prod/            # 프로덕션 환경 설정
└── argocd/              # ArgoCD 애플리케이션 정의
```

## 사용 방법

### 사전 요구사항

- Kubernetes 클러스터
- ArgoCD 설치
- kubectl CLI 도구

### 새로운 서비스 추가 절차

1. `base` 디렉토리에 새로운 서비스 디렉토리 생성
2. 기본 매니페스트 파일 작성 (deployment.yaml, service.yaml 등)
3. 각 환경의 `overlays` 디렉토리에 환경별 설정 추가
4. ArgoCD 애플리케이션 정의 추가

### 배포 프로세스

1. 매니페스트 변경사항 커밋
2. ArgoCD 자동 감지 및 클러스터 적용
3. ArgoCD UI에서 배포 상태 모니터링

## 환경별 설정

### 개발 환경 (dev)
- 낮은 리소스 제한
- 디버그 모드 활성화
- 자동 배포 구성

### 스테이징 환경 (staging)
- 프로덕션 유사 설정
- 테스트 데이터 사용
- 성능 테스트 환경 구성

### 프로덕션 환경 (prod)
- 고가용성 설정
- 엄격한 리소스 제한
- 수동 승인 프로세스

## 모니터링 및 로깅

- Prometheus 메트릭 수집
- Grafana 대시보드 시각화
- EFK 스택 로그 관리

## 문제 해결 절차

1. ArgoCD UI 동기화 상태 확인
2. kubectl 명령어로 리소스 상태 확인
3. 애플리케이션 로그 확인

## 기여 절차

1. 새로운 브랜치 생성
2. 변경사항 작성
3. Pull Request 생성
4. 코드 리뷰 진행
5. main 브랜치 병합

## 보안

- Sealed Secrets 기반 시크릿 관리
- RBAC 정책 적용
- 네트워크 정책 구성

## 이슈 관리

기능 요청 및 버그 리포트는 GitHub Issues를 통해 관리 

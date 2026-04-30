# GitOps 매니페스트 저장소

이 저장소는 ArgoCD를 사용한 GitOps 원칙에 따라 Shop 마이크로서비스 애플리케이션을 배포하고 관리하기 위한 Kubernetes 매니페스트를 포함.

## 저장소 구조

```
.
├── base/                      # 기본 Kubernetes 매니페스트
│   ├── awesome/              # 기본 애플리케이션 매니페스트
│   │   ├── deployment.yaml
│   │   ├── service.yaml
│   │   └── kustomization.yaml
│   └── awesome-infra/        # 인프라 컴포넌트
│       ├── mysql/           # MySQL 데이터베이스
│       ├── rabbitmq/        # RabbitMQ 메시지 브로커
│       └── redis/          # Redis 캐시
├── clusters/                 # 클러스터별 설정
│   ├── az104-aks/ # Azure Kubernetes Service 클러스터
│   │   ├── awesome/         # 애플리케이션 서비스
│   │   │   ├── account/    # 계정 서비스
│   │   │   ├── apigateway/ # API 게이트웨이
│   │   │   ├── bff/        # 프론트엔드를 위한 백엔드
│   │   │   ├── cart/       # 장바구니 서비스
│   │   │   ├── order/      # 주문 서비스
│   │   │   ├── payment/    # 결제 서비스
│   │   │   ├── product/    # 상품 서비스
│   │   │   └── rabbitmq-consumer/ # 메시지 소비자
│   │   └── awesome-infra/   # 인프라 설정
│   └── common/              # 공유 설정
│       ├── shop/           # 공통 애플리케이션 설정
│       └── shop-infra/     # 공통 인프라 설정
└── docker-compose.yml       # 로컬 개발 환경 설정
```

## 컴포넌트

### 마이크로서비스
- **계정 서비스**: 사용자 계정 관리
- **API 게이트웨이**: 요청 라우팅 및 API 관리
- **BFF (프론트엔드를 위한 백엔드)**: 클라이언트별 API 집계
- **장바구니 서비스**: 장바구니 관리
- **주문 서비스**: 주문 처리
- **결제 서비스**: 결제 처리
- **상품 서비스**: 상품 카탈로그 관리
- **RabbitMQ 소비자**: 비동기 메시지 처리

### 인프라
- **MySQL**: 주 데이터베이스
- **RabbitMQ**: 비동기 통신을 위한 메시지 브로커
- **Redis**: 캐싱 및 세션 관리

## 설정 관리

### 디렉토리 구조
- `base/`: 기본 Kubernetes 매니페스트 포함
- `clusters/`: 환경별 설정
  - `az104-aks/`: AKS 클러스터 설정
  - `common/`: 클러스터 간 공유 설정

### 설정 파일
- `kustomization.yaml`: Kustomize 설정 파일
- `application.yml`: 애플리케이션 속성
- `application-prd.yml`: 운영 환경 특정 속성

## 배포

### 전제 조건
- Kubernetes 클러스터
- ArgoCD 설치
- 컨테이너 레지스트리 접근 권한

### 배포 프로세스
1. 저장소에 변경사항 커밋
2. ArgoCD의 변경사항 감지
3. 클러스터로의 자동 동기화
4. 원하는 상태로의 애플리케이션 조정

## 로컬 개발

로컬 개발 시 `docker-compose.yml` 활용:

```bash
docker-compose up
```

## 인프라 설정

`awesome-infra` 디렉토리 내 인프라 컴포넌트 관리:
- 데이터베이스 설정
- 메시지 브로커 설정
- 캐시 설정

## 모니터링 및 로깅

각 서비스 디렉토리의 Kubernetes 매니페스트를 통한 모니터링 및 로깅 인프라 구성 가능.

## 기여 방법

1. 새 브랜치 생성
2. 변경사항 작업
3. 풀 리퀘스트 제출
4. CI 검사 통과 확인
5. 관리자 승인 획득

## 보안

- Kubernetes Secrets를 통한 민감 설정 관리
- 환경별 설정 분리
- RBAC를 통한 인프라 접근 제어

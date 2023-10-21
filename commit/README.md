# Terminologies
- header: 첫 라인. 일반적으로 생각하는 커밋 메시지
  - type: `feat, fix` 등 커밋의 타입
  - scope: 모노레포에서 사용. `(@project)`와 같이 해당 커밋의 스코프를 명시.
  - subject: 위 `type`을 제외한 실제 커밋 메시지
- body: 중간 라인. 부가 설명이 필요한 경우 작성.
- footer: 마지막 라인. **현재 미사용**

# Setup
```console
npm install --save-dev @commitlint/cli @commitlint/config-conventional
```

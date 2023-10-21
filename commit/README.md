# Terminologies
- header: 첫 라인. 일반적으로 생각하는 커밋 메시지
  - type: `feat, fix` 등 커밋의 타입
  - scope: 모노레포에서 사용. `(@project)`와 같이 해당 커밋의 스코프를 명시.
  - subject: 위 `type`을 제외한 실제 커밋 메시지
- body: 중간 라인. 부가 설명이 필요한 경우 작성.
- footer: 마지막 라인. **현재 미사용**

# Setup
```console
$ cd new_project

new_project $ npm install --save-dev @commitlint/cli @commitlint/config-conventional
# Setup commitlint hooks
new_project $ sh <(curl -s https://raw.githubusercontent.com/QuesDevTeam/Git-Convention/master/commit/init.sh)
```

# Rules
[@commitlint/config-conventional](https://github.com/conventional-changelog/commitlint/tree/master/%40commitlint/config-conventional)를 base configuration으로 사용합니다

## Custom Rules
### header-max-length
type을 포함한 헤더 라인의 최대 길이

- Base: 100
- Override
  - Monorepo: 40(scope 포함)
  - Multi-repo: 30
  - Rationale: 평균 커밋 길이 계산 [스크립트](https://gist.github.com/crowjdh/dc072fc362c063ea6ede0d3dcb3808c8)를 사용해 QuesDevTeam의 평균 커밋 길이를 계산, 이를 커버하는 범위로 산정

## Highlights
### subject-full-stop
한 문장으로 끝나는 경우, 예를 들면 커밋 메시지 혹은 하이픈(-)으로 시작하는 개괄식 문서 등에서는 마침표를 찍지 않습니다

# References
- [Conventional commit specification](https://www.conventionalcommits.org/en/v1.0.0/#specification)
- [commitlint rules](https://commitlint.js.org/#/reference-rules)
  - [@commitlint/config-conventional](https://github.com/conventional-changelog/commitlint/tree/master/%40commitlint/config-conventional)
- [Type explanations #1](https://platform.uno/docs/articles/uno-development/git-conventional-commits.html)
- [Type explanations #2](https://lean-lang.org/lean4/doc/dev/commit_convention.html)

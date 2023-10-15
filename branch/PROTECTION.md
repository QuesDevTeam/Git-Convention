# Git branch 보호 규칙
- GitHub에서는 많은(복잡한) 브랜치 프로텍션 룰을 제공하고 있습니다
- 가능한 GitHub에 대한 의존성을 줄이기 위해 최소한의 규칙으로 브렌치를 보호, 작업의 흐름을 돕는걸 목적으로 합니다

## 보호할 branch들
- `master`
- `develop`
- `**/base`: [Git branching guidance](https://github.com/QuesDevTeam/Git-Convention/tree/master/branch)의 significant update 참조

## 보호 규칙
### Protect matching branches
- Require a pull request before merging: PR이 머지 전에 지켜질 규칙들
  - Require approvals
  - 모든 변경은 `상식적인 선에서` 리뷰를 받아야 한다
    - Dismiss stale pull request approvals when new commits are pushed: 리뷰중인 PR에 새 변경이 있을 경우 리뷰를 받도록 강제합니다
    - Require approval of the most recent reviewable push: B가 추가한 커밋을 B 스스로가 approve하지 못하게 합니다. 이는 A가 제안한 PR에 B가 제약 없이 변경을 가하는 것을 막습니다.
- Require conversation resolution before merging
  - 기본적으로 conversation은 `conversation을 시작한 사람이 resolve`합니다
  - `상식선에서` 모든 conversation 참가자가 이견이 없는 상황에서 누가 resolve해야할지 모호한 상황이라면 `발견한 사람이 resolve`합니다
  - PR 범위 내에서 resolve할 수 없는 conversation은 `issuel 혹은 discussion으로 이동`합니다

## 규칙의 batch update
- 휴가 등의 사정으로 인해 `required number of approvals`에 변경이 필요하다면 QuesDevTeam organization의 owner와 공유합니다
- Organization의 owner는 이에 따라 batch update tool을 사용, repository들의 branch protection rule들을 업데이트 합니다
- 상황이 해결된 후에는 위와 같은 방식으로 `required number of approvals`를 조절합니다

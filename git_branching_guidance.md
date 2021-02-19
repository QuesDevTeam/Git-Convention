# Git branching guidance
## We should keep these rules.
- 모든 새 기능과, 버그 수정은 `feature` 브랜치를 이용합니다.
- `develop` 브랜치에 행해지는 모든 `merge`는 `pull request` 기능을 통하여 `review` 받습니다.
  - 해당 프로젝트의 모든 팀원의 `approve`를 얻은 후 최종적으로 `merge`합니다.
  - 아래의 경우는 팀 협의 후 프로젝트/PR마다 결정합니다:
    - 데모/샘플 프로젝트의 경우
    - 사용 언어/프레임워크가 상이한 경우
- 최신의 `develop` 브랜치를 유지하세요

## Branches
- 우리가 사용하는 브랜치들은 다음과 같습니다.
  - `master`, `develop`, `feature`, `hotfix`

### `develop` branch
- `develop` 브랜치는 개발에 있어 메인 파트를 담당합니다.
- 최초의 `develop` 브랜치는 `master`에서 갈라져 나옵니다.

### `feature` branch
- `feature` 브랜치는 모든 기능 개발과, 버그 수정을 담당합니다.
- `feature` 브랜치는 항상 `develop`에서 생성되며, 작업이 완료되면 `develop`에 `merge`됩니다.
- Significant update의 경우 중계 브렌치를 거쳐 `develop`에 머지됩니다. 이 경우 중계 브랜치 및 `feature` 브랜치의 이름은 다음과 같이 정합니다.
  - 중계 브렌치: feature/feature-name/base
  - 기능 브렌치: feature/feature-name/specific-feature
- `feature` 브랜치의 이름은 다음과 같이 명명합니다.
  - 해당하는 issue를 작성하였을 경우
    - feature/issue#37
  - 해당하는 issue가 없을 경우
    - feature/setup-project

### `master` branch
- 이 브랜치는 항상 출시가 가능한 상태로 유지됩니다.
- `develop` 브랜치에서 개발이 끝나, 출시가 가능한 버전을 `master` 브랜치로 `merge`합니다.
- 그리고 실제로 출시를 할 경우, `tag`를 이용해 출시버전명을 명시합니다.

### `hotfix` branch
- 이 브랜치를 사용할 일이 없기를 바랍니다.(~~촉수엄금~~)
- `hotfix` 브랜치는 `master`로 부터 생성됩니다.
- 현재 이미 출시된 버전에 **치명적인** 결함이 있을 경우 생성하여 수정 작업 후 `master`, `develop`에 각각 `merge`합니다.
- 항상 issue를 작성 후 작업진행을 합니다.
  - 자세한 내용을 기록합니다.
- `hotfix` 브랜치의 이름은 다음과 같이 명명합니다.
  - hotfix/issue#7

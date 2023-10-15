# General
- Try to make PR with less than 100 LoC(Lines of Change)
- Moving files with a lot of LoC makes GitHub diff go brrr.
  - Check diff log before creating PR
  - Try not to move the location of files which contains a lot of LoC

# Small PR
## Why small PR?<sup>[1](#why_small_pr)</sup>
- Big PRs "Are Hard to Review"
- Big PRs "Have Conflicts"
- Big PRs "Have More Than One Responsibility"
- Big PRs "Don’t Promote Discussion"

## How to make small PR?
### Top-down approach
- For example:
  1. Build interface that describes what service you're trying to build
  2. Create dummy model/response
  3. Actually connect(save/load data) to database

# Force Push에 대해
## 문제
- PR중인 브렌치에 force push를 하게 되면 변경된 hash에 대해 추적이 안돼 해당 커밋들을 모두 리뷰해야 합니다.
- 하지만 force push를 막으면 valid한 변경에 대해 불필요한 작업 소요가 발생합니다.

## 해결
- **가능한 사용하지 않습니다**
- 기본적으로는 작업중인 branch에 대해 force push를 허용합니다
- 꼭 필요한 경우라면 그 이유에 대해 공유합니다(메시지, GitHub mention등)
> PR 사이즈가 충분히 작다면 force push를 하기 위한 부담도 작아집니다. 특별 규칙을 고려하기 전에 기본 규칙을 잘 지키도록 합니다.

# Template
Copy .github directory to your repository root. It will give you a template for your new PR.  
Feel free to leave issue or create PR if you have any suggestion.

# References
- <a name="why_small_pr">Why small pr?</a>: https://sourcediving.com/a-practical-guide-to-small-and-easy-to-review-pull-requests-a7f04a01d5d5
- https://medium.com/letgo/the-art-of-the-small-pull-request-303f7ef63901

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

# Template
Copy .github directory to your repository root. It will give you a template for your new PR.  
Feel free to leave issue or create PR if you have any suggestion.

# References
- <a name="why_small_pr">Why small pr?</a>: https://sourcediving.com/a-practical-guide-to-small-and-easy-to-review-pull-requests-a7f04a01d5d5
- https://medium.com/letgo/the-art-of-the-small-pull-request-303f7ef63901

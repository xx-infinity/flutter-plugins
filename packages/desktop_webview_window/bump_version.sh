
#!/bin/bash
# 检查cider环境
dart pub global activate cider

# 使用Cider自动升级版本号
dart pub global run cider bump patch

# 获取新的版本号
NEW_VERSION=$(dart pub global run cider version)

# 提交并推送更改
git add pubspec.yaml
git commit -m "Bump version to $NEW_VERSION"
git push
git tag "$NEW_VERSION"
git push tags

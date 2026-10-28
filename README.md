# Ziming 的个人网站与项目

原来的三个仓库已合并到这个 Git 仓库中。主页、简历和 TradingAgents-CN
统一提交和管理，网页保持原有地址与样式。

## 目录与日常维护

| 内容 | 修改位置 | 发布地址 |
| --- | --- | --- |
| 研究博客 / 主页 | 根目录 `_config.yml`、`index.html`、`_posts/` | `https://ziming-zx.github.io/` |
| 论文列表 | `publications.md` | `/publications` |
| 联系信息 | `contact.md` | `/contact` |
| 在线简历 | `zx-resume/_config.yml`、`zx-resume/_data/` | `/zx-resume/` |
| TradingAgents-CN | `projects/TradingAgents-CN/` | 独立运行，不随静态网站发布 |

这是一个真正的单仓库，不使用 submodule，子目录中没有嵌套的 `.git`。
主页和简历仍保留各自的模板、数据和配置，避免这次合并改变现有页面。
同一条构建命令会分别构建两个站点，再合成一个网站发布产物。
个人资料目前仍分别位于两个站点的配置中，本次没有重写内容或统一设计。

## 本地构建与预览

需要 Ruby 3.3、Bundler，以及安装原生 gem 所需的编译工具。
Windows 可使用带 MSYS2 DevKit 的 RubyInstaller，或在 WSL 中构建。
在本仓库根目录执行：

```sh
bundle install
bundle exec ruby scripts/build-site.rb
python -m http.server 8000 --directory _site
```

打开 `http://localhost:8000/` 查看主页，
打开 `http://localhost:8000/zx-resume/` 查看简历。
这是静态预览；修改源文件后需重新执行构建命令。

两个站点统一使用根目录的 Gemfile。`zx-resume/Gemfile`、其锁文件、
Dockerfile 和 `.bundle/config` 是保留下来的原始文件，不参与统一构建。
简历原有的 CNAME 指向模板作者域名，已通过配置排除，不会发布。

TradingAgents-CN 的启动命令须先进入项目目录：

```sh
cd projects/TradingAgents-CN
```

随后按该目录内的 README 和部署说明操作；项目原有的相对路径保持有效。
项目目录中的 `.github/workflows/` 是历史源文件，GitHub 不会将其作为仓库根级工作流运行。

## GitHub Pages 发布

`.github/workflows/pages.yml` 会构建两个站点，只上传 `_site/`。
TradingAgents-CN 源码、脚本和合并来源记录都排除在网页发布内容之外。

当前本地工作分支是 `consolidate-repositories`，远程 origin 指向原主页仓库。
合并结果尚未推送，线上网站与原来的三个 GitHub 仓库均未修改。
后续上线时：

1. 将本地合并分支推送到 `ziming-zx.github.io`，通过 PR 检查构建结果。
2. 在主仓库的 Settings → Pages 中，将发布来源设为 GitHub Actions。
3. 合入默认分支后，工作流发布主页和简历。合并分支及 PR 只构建，不部署。
4. 切换时关闭旧 `zx-resume` 仓库的 Pages 发布，让主站接管 `/zx-resume/`。
   旧路径不变，但需要实际验证不再被旧项目站点覆盖。
5. 验证线上链接后，旧仓库可作为历史备份保留或归档。

若以后将仓库改名并部署到非根路径，需要同步调整两个站点的 URL/baseurl；
当前配置针对原有 `ziming-zx.github.io` 根站点。

## 历史、来源与许可证

根目录以原主页仓库为基础，另外两个仓库通过 `git subtree add` 导入，
没有使用 `--squash`，三个默认分支的原始提交均保留在合并历史中。
`MERGE-SOURCES.json` 记录原始仓库、分支和导入时的提交。
本地 `import/*` 标签标记三个导入点。

本次克隆的原始仓库还保留在 `combined-site` 的同级目录，作为独立备份；
日常修改请统一在本目录进行，无需在这三个备份中重复修改。
导入后的项目代码不会自动同步上游仓库。

各项目原有许可证、版权及授权文件均保留在原目录。
根目录的 MIT LICENSE 不覆盖 TradingAgents-CN；后者使用其目录中的混合许可证。
Beautiful Jekyll 原始说明见 `docs/beautiful-jekyll.md`。

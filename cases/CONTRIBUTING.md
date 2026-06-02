# 贡献你的实战案例 -- 从零开始完全指南

> 不用担心不懂技术，这份指南从安装 Git 开始，手把手带你完成第一次贡献。

---

## 你需要准备什么

- 一台电脑 (Windows / Mac 都可以)
- 一个 GitHub 账号 ([免费注册](https://github.com/signup)，2 分钟搞定)
- 一段你想分享的真实社交经历

---

## 第零步：安装 Git (已装的可跳过)

### Windows 用户
1. 打开浏览器，访问 https://git-scm.com/download/win
2. 下载 `.exe` 文件，双击运行
3. 一路点 **Next** (全部默认选项即可)
4. 安装完成后，在桌面右键 > 选择 **"Git Bash Here"**，出现黑色窗口就成功了

### Mac 用户
1. 打开 **终端** (在 Launchpad 里搜 "终端" 或 "Terminal")
2. 输入 `git --version` 然后回车
3. 如果没装，系统会自动提示安装，点确认即可

### 验证安装
打开 Git Bash (Windows) 或终端 (Mac)，输入：
```bash
git --version
```
看到类似 `git version 2.xx.x` 就说明装好了。

---

## 第一步：Fork 本仓库

> Fork = 把项目复制一份到你自己的 GitHub 账号下。

1. 打开浏览器，访问 https://github.com/beihukasi/PUA
2. 点击右上角的 **Fork** 按钮
3. 等几秒钟，页面会自动跳转到 `https://github.com/你的用户名/PUA`
4. 这就是你的副本！现在你有了一个属于自己的版本

---

## 第二步：把仓库下载到本地

> Clone = 把 GitHub 上的文件下载到你电脑上。

```bash
# 把 YOUR_USERNAME 换成你的 GitHub 用户名
git clone https://github.com/YOUR_USERNAME/PUA.git
cd PUA
```

复制完你会看到一个 `PUA` 文件夹，里面有 `cases/` 目录。

---

## 第三步：在 cases/ 文件夹下创建你的案例文件

> **不是编辑 TEMPLATE.md ！！！**
> TEMPLATE.md 是模板，千万不要动它。
> 你要做的是：**复制模板，在 cases/ 文件夹下生成一个全新的 .md 文件。**

### 最终效果：cases/ 文件夹会长这样

```
cases/
├── TEMPLATE.md              <-- 模板（所有人的起点，不要改它）
├── CONTRIBUTING.md          <-- 贡献说明（你现在在看这个）
├── example-cafe.md          <-- 示例案例
├── bar-approach-close.md    <-- 张三提交的案例（独立文件！）
├── street-approach-fail.md  <-- 李四提交的案例（独立文件！）
├── text-game-success.md     <-- 王五提交的案例（独立文件！）
└── ...                      <-- 你的案例也在这里！
```

> **每一个案例都是 cases/ 文件夹下的一个独立 .md 文件。**
> 大家各自创建自己的文件，互不冲突。

### 操作命令

在终端 (Git Bash) 里执行：

```bash
# 复制模板，在 cases/ 文件夹下生成你自己的案例文件
# 文件名用英文或拼音，不要中文

cp cases/TEMPLATE.md cases/bar-approach-close.md
```

执行完后，`cases/` 下就多了一个 `bar-approach-close.md`，这就是你的案例文件！

### 文件名建议
```
bar-two-girls-kclose.md      # 酒吧双人组接吻收场
cafe-meet-fail.md             # 咖啡馆搭讪失败
street-approach-number.md     # 街搭收号
text-game-date.md             # 短信互动到约会
social-circle-success.md      # 社交圈攻略
daygame-mall-instant-date.md  # 商场搭讪即时约会
```

---

## 第四步：用模板写你的案例

用任意文本编辑器打开你刚创建的文件，按照模板逐项填写。

> 推荐编辑器：Windows 用记事本 (右键>打开方式>记事本) 或 [VS Code](https://code.visualstudio.com/)，Mac 用自带的文本编辑。

### 模板关键字段说明

**Front Matter (文件最顶部的 `---` 之间的内容)：**
```
---
date: 2024-06-15           # 案例发生日期
contributor: "你的名字"     # 想匿名就写 "匿名"
scenario: "酒吧"            # 选一个
difficulty: "中级"          # 初级/中级/高级
result: "成功"              # 成功/失败/部分成功
tags: [开场, DHV, kino]     # 相关标签（方便别人搜索）
---
```

**正文部分：**
- **背景** -- 你和她 (年龄、类型、经验)、场景、同行者、你的心态
- **过程** -- 还原真实对话，用 "男：" "女：" 格式。不要概括，要有原话
- **结果** -- 成功了还是失败了？卡在哪一步？
- **复盘** -- 做对了什么 + 做错了什么 + 关键转折 + 可复用的经验

### 写案例的小贴士

1. 失败了也写 -- 失败案例往往更有学习价值
2. 对话要真 -- "女：我不喜欢这样" 比 "她好像不高兴" 有用得多
3. 关键动作加粗 -- 比如 **我牵了她的手**，读者一眼看到转折点
4. 复盘要具体 -- 别写 "做得不够好"，要写 "开场后没及时切换话题导致冷场"
5. 不要编 -- 这是知识库，不是小说
6. 不要暴露真实姓名、照片、联系方式

---

## 第五步：提交到你的 GitHub

```bash
# 在 PUA 文件夹里打开终端 (Git Bash)，依次输入：

# 1. 添加你的新案例文件
git add cases/你的文件名.md

# 2. 提交（写清楚这是什么）
git commit -m "[案例] 酒吧双人组搭讪全流程"

# 3. 推送到你的 GitHub
git push origin main
```

### 常见问题

| 报错 | 怎么解决 |
|------|----------|
| `fatal: not a git repository` | 你不在 PUA 文件夹里，先用 `cd PUA` 进入 |
| `error: failed to push` | 可能需要登录。输入 `git config --global user.name "你的名字"` 和 `git config --global user.email "你的邮箱"` |
| `Please tell me who you are` | 同上，配置一下用户名和邮箱 |
| GitHub 要求输入密码 | GitHub 现在不用密码了。去 Settings > Developer settings > Personal access tokens 创建一个 Token 当密码用 |

---

## 第六步：发起 Pull Request (PR)

> PR = 请求我们把你的案例合并到主仓库。

1. 打开你的 GitHub 仓库页面：`https://github.com/你的用户名/PUA`
2. 你会看到一个黄色的提示条 **"This branch is 1 commit ahead"**
3. 点击旁边的 **"Contribute"** > **"Open Pull Request"**
4. 标题写 `[案例] 简短描述`
5. 正文可以写一两句说明 (不是必须的)
6. 点击 **"Create Pull Request"**

完成！等待维护者审核合并即可。

---

## 想匿名？

在案例文件顶部的 frontmatter 里写 `contributor: "匿名"`，你的 GitHub 用户名就不会出现在案例中。

---

## 案例模板速览

打开 `cases/TEMPLATE.md` 看完整模板。核心结构就五块：

```
背景 (谁、在哪、什么心态)
> 过程 (还原对话，分阶段)
> 结果 (成功/失败，卡在哪)
> 复盘 (对在哪 + 错在哪 + 转折点 + 可复用经验)
> 涉及理论 (可选，知道的就写)
```

---

## 小白名词解释

### 什么是 PR？

PR 就是 Pull Request，中文叫合并请求。

你可以理解为："我写了一个新案例文件，请审核一下，没问题的话合并到主仓库吧。"

**你做第 1~5 步。维护者 (beihukasi) 做第 6~7 步：**
1. Fork
2. Clone
3. 写案例
4. Push
5. 发起 PR ---> (维护者收到通知)
6. 维护者审核 ---> 点 Merge 合并
7. 你的案例出现在主仓库 cases/ 文件夹下！

### 什么是 Issue？

Issue = GitHub 上的留言板。不需要 git，打开网页就能发。

**什么时候开 Issue？**
- 有问题想问
- 有建议想说
- 发现了 bug

**怎么开？**
1. 打开 https://github.com/beihukasi/PUA
2. 点顶部 **Issues** 标签
3. 点绿色 **New Issue** 按钮
4. 写标题+内容，点 Submit

### 维护者怎么看到 PR？

打开 https://github.com/beihukasi/PUA，点顶部的 **Pull requests** 标签，所有别人提交的 PR 都在那里。
右上角铃铛图标会有红点提醒。

### 一图看懂整个流程



---

## 需要帮助？

- GitHub 上开 **Issue** 提问
- 在你的 PR 里直接留言问  
- 中英文都可以

**任何经历都有价值。你的一次分享，可能就是别人最需要的参考。**

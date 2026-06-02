# PUA Advice — 社交互动技能知识库

一个开放的、以真实案例驱动的社交互动技能知识库。通过收集和分析真实的社交场景案例，帮助人们在日常社交中更自信、更自然地与人建立连接。

## 项目理念

- **真实优于完美**：每篇案例都来自真实经历，而非理论推演。一个诚实的"不顺利"案例有时比虚构的"顺利"案例更有价值。
- **复盘驱动成长**：案例的核心价值在于事后分析——哪些做得好，哪些可以改进，以及可以提炼出什么可复用的经验。
- **开放共建**：每个人都有自己的经历和洞察。这个项目由社区共同构建和维护。

## 快速开始

### 作为 Claude Code Skill 安装

本项目设计为可作为 Claude Code 的自定义 Skill 使用。安装后，Claude 可以基于知识库中的案例提供社交互动方面的建议。

**自动安装：**

```bash
bash scripts/install.sh
```

**手动安装：**

```bash
mkdir -p ~/.claude/skills/pua-advice
cp SKILL.md ~/.claude/skills/pua-advice/
cp -r cases/ ~/.claude/skills/pua-advice/
cp -r books/ ~/.claude/skills/pua-advice/
```

安装完成后，在 Claude Code 中即可通过 Skill 机制调用该知识库。

### 浏览案例

所有案例存放在 `cases/` 目录下：

| 文件 | 说明 |
|------|------|
| `TEMPLATE.md` | 案例模板，创建新案例时复制此文件 |
| `CONTRIBUTING.md` | 贡献指南，提交案例前请阅读 |
| `example-cafe.md` | 示例案例：书店搭话经历 |

## 目录结构

```
pua-advice/
├── README.md              # 项目说明（本文件）
├── SKILL.md               # Claude Code Skill 定义
├── cases/                 # 案例库
│   ├── TEMPLATE.md        # 案例模板
│   ├── CONTRIBUTING.md    # 贡献指南
│   └── example-cafe.md    # 示例案例
├── books/                 # 参考书目和理论资料
└── scripts/
    └── install.sh         # 自动安装脚本
```

## 贡献案例

我们欢迎各种场景的社交互动案例。无论结果如何，你的经历都可能帮助到其他人。

**贡献流程：**

1. 阅读 [CONTRIBUTING.md](cases/CONTRIBUTING.md)
2. 复制 `cases/TEMPLATE.md` 并重命名
3. 按照模板填写你的案例
4. 提交 Pull Request

## 行为准则

- 所有案例中的个人信息必须匿名化处理
- 使用尊重、建设性的语言
- 不接受包含歧视、物化或冒犯性内容的提交

## 许可证

本项目采用 [MIT License](LICENSE) 开源。

---

**声明**：本项目旨在帮助人们在社交场合中建立真诚、自然的连接。我们不鼓励任何形式的操控、欺骗或不尊重他人的行为。良好的社交能力建立在真诚、尊重和共情的基础上。

# PUA Advice — 社交技能知识库 🚀

> 蒸馏 20+ 本经典著作 + 开源真人案例，可安装为 Claude Code Skill 自动触发

## ⚡ 三步安装到你的 Claude Code

```bash
# 1. 克隆仓库
git clone https://github.com/beihukasi/PUA.git
cd PUA

# 2. 运行安装脚本
bash scripts/install.sh

# 3. 重启 Claude Code（或开新对话）
```

**就这么简单。** 之后你问任何约会/社交相关问题，Skill 会自动加载并基于知识库回答。

> 不习惯脚本？手动安装就是复制文件：
> ```bash
> mkdir -p ~/.claude/skills/pua-advice
> cp SKILL.md ~/.claude/skills/pua-advice/
> cp -r books/ ~/.claude/skills/pua-advice/
> cp -r cases/ ~/.claude/skills/pua-advice/
> ```

---

## 📚 知识库内容

| 类别 | 内容 |
|------|------|
| **SKILL.md** | 主入口，包含术语表、M3模型速查、回答模板 |
| **books/ (15篇)** | Mystery Method、David X、Magic Bullets、David DeAngelo、Juggler、冷读术、短信/电话互动、白天社交、惯例参考等 |
| **cases/ (持续扩充)** | 真人实战案例，按标准模板书写 |

## 🌍 贡献你的实战案例

这是一个**开源项目**，任何人都可以贡献案例。失败的经历往往比成功更有价值。

👉 **[贡献指南 →](cases/CONTRIBUTING.md)** &nbsp; | &nbsp; 👉 **[案例模板 →](cases/TEMPLATE.md)**

三步贡献：`Fork → 按模板写案例 → 提交 PR`

---

## 📖 目录结构

```
PUA/
├── SKILL.md                   # Skill 主入口
├── books/                     # 理论参考
│   ├── mystery-method.md      # M3 模型
│   ├── david-x.md             # 诚实法则
│   ├── magic-bullets.md       # Love Systems
│   ├── double-your-dating.md  # Cocky & Funny
│   ├── juggler-method.md      # 自然对话流
│   ├── revelation.md          # 社区历史
│   ├── cold-reading.md        # 冷读术
│   ├── text-phone-game.md     # 短信电话
│   ├── daytime-dating.md      # 白天场景
│   ├── routines.md            # 对话惯例
│   ├── real-world-seduction.md # 现实社交
│   ├── adam-lyons.md          # 筛选与节奏
│   ├── the-game.md            # 把妹达人
│   ├── pandora-box.md         # 深度心理学
│   └── negging.md             # 价值平衡
├── cases/
│   ├── TEMPLATE.md            # 📋 案例书写模板
│   ├── CONTRIBUTING.md        # 贡献指南
│   └── example-cafe.md        # 示例案例
└── scripts/install.sh         # 一键安装
```

## 🔄 更新 Skill

当你 `git pull` 拉取最新内容后，重新运行安装脚本即可：

```bash
git pull && bash scripts/install.sh
```

---

MIT License

**声明**：本项目旨在帮助建立真诚的人际连接。不鼓励操控、欺骗或不尊重他人的行为。

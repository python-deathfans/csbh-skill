# csbh.skill · 财商白话

> 把 13 本财务自由书蒸馏成 10 张可执行能力卡。  
> 不是书摘，不是读后感，是一套能直接照着做的财商行动手册。

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](./LICENSE)
[![Agent Skill](https://img.shields.io/badge/Agent-Skill-blue.svg)](./SKILL.md)
[![Books](https://img.shields.io/badge/Books-13-orange.svg)](./references/overview.md)
[![Capabilities](https://img.shields.io/badge/Capabilities-10-purple.svg)](./references/capability-index.md)

`csbh` = 财商白话。面向普通工薪族、理财新手、想开始 FIRE 但不知道第一步做什么的人。

它不会替你推荐具体股票/基金，也不会承诺收益；它做的是：**根据你的问题，路由到一张能力卡，给出结论、步骤、边界和原文依据。**

---

## 目录

- [它能做什么](#它能做什么)
- [安装到智能体](#安装到智能体)
- [怎么使用](#怎么使用)
- [10 张能力卡](#10-张能力卡)
- [使用示例](#使用示例)
- [目录结构](#目录结构)
- [质量与评测](#质量与评测)
- [更新与进化](#更新与进化)
- [免责声明](#免责声明)

---

## 它能做什么

| 场景 | 它能给你的 |
|---|---|
| 算财务自由数字 | 4% 法则、25 倍年支出、150 倍月支出，三档目标与缺口 |
| 财富体检 | 净资产、生息资产、负债结构、预期净资产对照 |
| 月光/存不下钱 | 储蓄率诊断、先付自己、三账户、自动转账 |
| 信用卡/网贷/房贷 | 负债分级、真实年化、雪崩/雪球、50/50 还款法 |
| 应急金与保险 | 3～12 个月应急金、医疗/重疾/意外/寿险配置原则 |
| 指数基金定投 | 资产配置、宽基选择、定投日、估值加减仓、年度再平衡 |
| 投资纪律 | 能力圈、安全边际、逆向、费用、杠杆、买入前五问 |
| 消费控制 | 必要/投资/面子支出、24 小时冷静期、年度大额预算 |
| 收入升级 | 主业提效、副业验证、五条快车道戒律、个人商业模式 |
| 从哪开始 | 90 天行动计划，每周一个关键动作 |

---

## 安装到智能体

Skill 的本质是一个包含 `SKILL.md` 的文件夹。把这个仓库克隆到对应智能体的 skills 目录即可。

### Codex（全局，推荐）

```powershell
git clone https://github.com/python-deathfans/csbh-skill.git "$HOME\.codex\skills\csbh"
```

macOS / Linux：

```bash
git clone https://github.com/python-deathfans/csbh-skill.git ~/.codex/skills/csbh
```

### Codex（项目级）

```bash
git clone https://github.com/python-deathfans/csbh-skill.git <project>/.agents/skills/csbh
```

### Claude Code

```bash
git clone https://github.com/python-deathfans/csbh-skill.git ~/.claude/skills/csbh
```

### Cursor

```bash
git clone https://github.com/python-deathfans/csbh-skill.git ~/.cursor/skills/csbh
```

### Gemini CLI

```bash
git clone https://github.com/python-deathfans/csbh-skill.git ~/.gemini/skills/csbh
```

### 其他智能体

查看它的官方文档，把本仓库放到它识别的 `skills/` 目录，并确保目录内有 `SKILL.md`。

### 用安装脚本

Windows PowerShell：

```powershell
.\install.ps1 -Agent codex
# 可选: claude | cursor | project
```

macOS / Linux：

```bash
./install.sh codex
# 可选: claude | cursor | project
```

### 下载 ZIP 手动安装

1. 直接下载 [`csbh.skill.zip`](https://github.com/python-deathfans/csbh-skill/releases/latest/download/csbh.skill.zip)，或下载本仓库内的同名文件。
2. 解压后得到 `csbh/` 文件夹。
3. 把 `csbh/` 放到 `~/.codex/skills/csbh`（或对应智能体的 skills 目录）。
4. 新开一轮对话，让智能体重新扫描 skills。

> 安装后不需要敲命令，直接用自然语言提问即可触发。

### 验证与更新

安装后确认目录里有 `SKILL.md`：

```powershell
Test-Path $HOME\.codex\skills\csbh\SKILL.md
```

新开一轮对话，问「我要存多少钱才能不上班？」。如果智能体按 4% 法则给出目标数字，说明路由正常。

更新已安装版本：

```bash
git -C ~/.codex/skills/csbh pull
```

---

## 怎么使用

直接用中文提问，不需要记能力名。

```text
我每个月工资到手就没了，怎么开始存钱？
我要存到多少钱才能不上班？
信用卡和网贷先还哪个？
新手怎么定投指数基金？每月投多少？
应急金要存几个月？保险先买哪个？
工资不低为什么存不下钱？
我想搞副业，怎么判断靠不靠谱？
给我一个 90 天理财行动计划。
```

智能体会先读 `SKILL.md` 的路由表，再按意图加载 1 张能力卡；跨域问题最多加载 2 张。

---

## 10 张能力卡

| 能力卡 | 解决的问题 | 一句话规则 |
|---|---|---|
| `freedom-number` | 要存多少钱才能不上班/FIRE | 年支出 ÷ 4% ≈ 25 倍年支出 |
| `net-worth-audit` | 我到底有多少钱/净资产 | 财富 = 资产 − 负债 |
| `cashflow-engine` | 月光、储蓄率、预算 | 先付自己，储蓄率是第一杠杆 |
| `debt-clearing` | 信用卡/网贷/房贷先还哪个 | 高息优先，余钱 50% 还债 50% 储蓄 |
| `emergency-shield` | 应急金、保险怎么配 | 先防守，再进攻 |
| `index-investing` | 指数基金、定投、资产配置 | 配置 + 定投 + 再平衡 |
| `investing-discipline` | 这只股票能不能买/要不要杠杆 | 能力圈 + 安全边际 + 不杠杆 |
| `spending-audit` | 该不该买/怎么控制消费 | 拒绝面子税和生活方式通胀 |
| `income-upgrade` | 怎么提高收入/搞副业 | 主业提效 → 副业验证 → 资产化 |
| `action-plan-90d` | 从哪开始/给我一个计划 | 30 天盘点、30 天建系统、30 天启动 |

完整意图与关键词索引见 [`references/capability-index.md`](./references/capability-index.md)。

---

## 使用示例

### 示例 1：算自由数字

**你问：**

> 我 30 岁，年支出 12 万，现有 80 万，想 45 岁退休，够吗？

**它会算：**

- 4% 口径目标：`12 万 ÷ 4% = 300 万`，缺口 220 万
- 不再追加储蓄，15 年需要约 9.2% 年化，偏高
- 若每月追加 5000 元、年化 7%，15 年约 371 万，可覆盖 4% 和 3.5% 目标
- 按 3% 保守口径 400 万，仍不够

**它会提醒：** 4% 不是收益保证；先建应急金，再定投；通胀、税费、费用都会影响结果。

### 示例 2：先还房贷还是先投资

**你问：**

> 我有 10 万存款，先还房贷还是先投资？

**它会先问/先查：**

1. 应急金够不够 6 个月？
2. 房贷利率多少？
3. 投资期限多长、能承受多大回撤？

然后按“房贷利率 vs 税后费后预期收益”给出排序；不确定时用 50/50 折中。

### 示例 3：90 天计划

**你问：**

> 我知道要理财，但总是执行不下去。

它会按周给动作：盘点 → 算目标 → 止血 → 应急金 → 储蓄系统 → 保障 → 定投 → 收入动作 → 复盘。

---

## 目录结构

```text
csbh-skill/
├── SKILL.md                  # 入口、触发条件、路由表、边界
├── README.md                 # 本文件
├── LICENSE                   # MIT
├── 使用说明.md               # 更详细的中文使用说明
├── test-prompts.json         # darwin 兼容评测用例
├── test-results.md           # 压力测试与代表任务核算
├── install.ps1               # Windows 安装脚本
├── install.sh                # macOS/Linux 安装脚本
└── references/
    ├── overview.md           # 13 本书单总览与分工
    ├── glossary.md           # 术语表
    ├── cheatsheet.md         # 决策速查
    ├── capability-index.md   # 完整能力索引
    └── capabilities/         # 10 张能力卡（R/I/A1/A2/E/B）
```

---

## 质量与评测

- 来源：13 本财务自由/理财书（EPUB/PDF 去重后）
- 输出模式：single（1 个入口 + 10 张内部能力卡）
- 校验：仓颉 `validate_skill_pack.py` → **0 errors / 0 warnings**
- 内部链接：0 失效
- 原文引用：每段 ≤150 字
- 评测用例：3 条 should_trigger + 2 条 should_not_trigger + 1 条 edge_case
- 代表任务：自由数字核算、先还房贷还是先投资，均完成实算核对

> 《百万富翁快车道》原文件为扫描图片版，正文由 OCR 提取，个别字词可能有识别误差；引用以原书为准。

---

## 更新与进化

### 用 darwin-skill 自动进化

```text
把 test-prompts.json 作为评测集，用 darwin-skill 对 csbh 做评分和迭代。
```

### 修改内容

1. 修改 `references/capabilities/*.md` 或 `SKILL.md`。
2. 同步更新 `test-prompts.json`。
3. 跑一遍评测，确认没有破坏路由。

> 如果你使用仓颉重新编译，源 Bundle 的 `verified.yaml` 是唯一事实源；不要只改生成目录。

---

## 免责声明

本项目是读书方法论的整理，**不构成投资、法律、税务或医疗建议**。市场有风险，决策需结合个人情况；重大事项请咨询持牌专业人士。

本项目不包含任何原书全文；引用仅为短句，用于方法论溯源。

---

## English Quick Start

`csbh.skill` distills 13 personal-finance books into 10 executable agent capabilities:

- freedom number / FIRE math
- net-worth audit
- savings-rate engine
- debt prioritization
- emergency fund & insurance
- index-fund DCA & asset allocation
- investing discipline
- spending audit
- income upgrade
- 90-day action plan

Install for Codex:

```bash
git clone https://github.com/python-deathfans/csbh-skill.git ~/.codex/skills/csbh
```

Then ask in natural language, e.g. “How much do I need to retire early?” or “Should I pay off my mortgage or invest first?”

License: MIT.

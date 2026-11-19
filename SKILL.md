---
name: csbh
description: |
  当用户问财务自由、存钱、理财、定投、基金、负债、消费、保险、副业、收入升级，或想要一套可执行的财商行动计划时调用。
  
  覆盖：财务自由数字测算(FIRE/4%法则/25倍)、净资产盘点、储蓄率与现金流、负债清理、应急金与保障、指数基金定投与资产配置、投资纪律、消费审查、收入升级、90天行动方案。
  
  不适用于：具体股票/基金/保险产品推荐、收益承诺、法律/税务/医疗个案、杠杆投机。
  
  Triggers: 财务自由/FIRE/存钱/理财/定投/基金/资产配置/负债/信用卡/应急金/保险/消费/副业/收入/财商/小白理财
metadata:
  cangjie.generated-by: cangjie-tools v2.5.0
  cangjie.variant: single
  cangjie.bundle-id: bundle.csbh
  cangjie.capability-count: 10
  cangjie.entrypoint-count: 1
---
# 《财商白话：13 本财务自由书的可执行方法》 — 全书能力入口

## 触发与不触发

**适用**：与本书能力域相关的咨询与任务（见下方路由表的意图列）。
**不适用**：
- 具体股票、基金、保险、加密货币的买卖点与产品推荐
- 任何形式的收益承诺或“稳赚”保证
- 法律、税务、医疗、债务诉讼等专业个案（建议咨询持牌专业人士）
- 杠杆、借贷、生活费投资等高风险投机建议

## 核心原则（常驻速览，概览类问题读到这里即可回答）

1. 财务自由 = 被动收入 ≥ 生活支出；先用 4% 法则/25 倍年支出算自由数字。
2. 财富是净资产，不是收入或消费；先盘点资产与负债，再谈投资。
3. 储蓄率是第一杠杆；先付自己，发薪日自动转账，加薪先加储蓄。
4. 先防守后进攻：应急金 + 保障四件套，再谈定投和资产配置。
5. 普通人用低成本宽基指数 + 资产配置 + 定投 + 再平衡，不预测市场。
6. 工资有上限，资产和杠杆没有；用主业提效、副业验证、产品化扩大收入。
7. 消费是选择权，不是身份；拒绝生活方式通胀和面子税。

## 能力路由（先读本表，按意图加载 1 张能力卡）

| 用户意图 | 先读 | 补读/备注 |
|---|---|---|
| 算财务自由需要多少钱；FIRE/提前退休目标规划；评估现有资产够不够自由；算退休金缺口与达成年限 | references/capabilities/freedom-number.md | references/capabilities/net-worth-audit.md、references/capabilities/cashflow-engine.md、references/capabilities/index-investing.md |
| 算净资产/家庭资产负债表；判断自己算不算有钱；收入不低但存不下钱；盘点生息资产与负债 | references/capabilities/net-worth-audit.md | references/capabilities/freedom-number.md、references/capabilities/cashflow-engine.md、references/capabilities/debt-clearing.md |
| 月光族怎么开始存钱；工资涨了还是存不下；每个月该存多少比例；怎么做预算/记账/自动转账 | references/capabilities/cashflow-engine.md | references/capabilities/spending-audit.md、references/capabilities/debt-clearing.md、references/capabilities/emergency-shield.md |
| 信用卡/网贷/花呗先还哪个；要不要提前还房贷；先还债还是先投资；以贷养贷怎么脱身 | references/capabilities/debt-clearing.md | references/capabilities/cashflow-engine.md、references/capabilities/spending-audit.md、references/capabilities/emergency-shield.md |
| 应急金要存几个月；要不要买保险/先买哪个；失业或生病房贷怎么办；分红险/返还险要不要买 | references/capabilities/emergency-shield.md | references/capabilities/cashflow-engine.md、references/capabilities/debt-clearing.md、references/capabilities/index-investing.md |
| 新手怎么买基金/指数基金；定投每月投多少/什么时候卖；50:50 或股债配置怎么做；沪深300/标普500怎么选 | references/capabilities/index-investing.md | references/capabilities/investing-discipline.md、references/capabilities/freedom-number.md、references/capabilities/emergency-shield.md |
| 这只股票/基金能不能买；现在是不是抄底/逃顶；为什么一买就跌一卖就涨；要不要上杠杆/借钱投资 | references/capabilities/investing-discipline.md | references/capabilities/index-investing.md、references/capabilities/freedom-number.md、references/capabilities/emergency-shield.md |
| 工资不低为什么存不下；怎么控制冲动消费/直播带货；这个包/车/手机该不该买；加薪后要不要升级生活 | references/capabilities/spending-audit.md | references/capabilities/cashflow-engine.md、references/capabilities/debt-clearing.md、references/capabilities/income-upgrade.md |
| 怎么提高收入/搞副业；要不要辞职创业；我的技能怎么变现；副业选什么方向 | references/capabilities/income-upgrade.md | references/capabilities/cashflow-engine.md、references/capabilities/investing-discipline.md、references/capabilities/freedom-number.md |
| 我想开始理财但不知道从哪开始；给我一个90天计划；知道很多道理执行不下去；想重新整理财务 | references/capabilities/action-plan-90d.md | references/capabilities/net-worth-audit.md、references/capabilities/cashflow-engine.md、references/capabilities/emergency-shield.md、references/capabilities/index-investing.md |

**非能力类查询**：
- 书名/作者/章节/整书概览 → references/overview.md
- 术语解释 → references/glossary.md
- 决策规则速查（不需要原文依据时） → references/cheatsheet.md
- 完整意图与关键词索引（本表未覆盖的意图先查这里） → references/capability-index.md

## 加载规则

- 每次任务先读本文件，再按路由表加载 **1** 张能力卡；任务明确跨域时最多加载 2 张。
- 概览/书名类问题不加载能力卡，用「核心原则」与 overview.md 回答。
- 路由表与 capability-index.md 都无法命中的意图，明确告知超出本书范围，不要硬套。

## 边界与判停

- 用户没有稳定收入或基本生存受威胁 → 先稳现金流，不推荐投资。
- 用户要求保证收益/内幕消息/借钱翻本 → 明确拒绝并解释风险。
- 涉及具体产品合规/理赔/法律纠纷 → 停止套用方法论，建议专业求助。
- 用户情绪崩溃/报复性交易 → 先停手，必要时寻求心理支持。

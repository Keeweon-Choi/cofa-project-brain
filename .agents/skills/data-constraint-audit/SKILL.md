---
name: data-constraint-audit
description: Inspect task data, units, distributions, feasibility and hard/soft constraints before choosing optimizers, analytics or business rules.
---
# Data and Constraint Audit

**한국어 대화 지침:** 사용자에게 전달하는 설명·질문·상태 요약·최종 결과·워커 인수인계는 항상 한국어로 작성한다. 코드 식별자·명령·원문 인용은 변경하지 않는다. 근거가 없으면 추정/미확인으로 표시한다.
Run only for data-driven tasks or when the solution depends on input values.
- Inventory files/tables, schema, row counts, IDs, missing/duplicate values, units, dates and source precedence. Record observed commands/queries, not imagined stats.
- Show the human a few raw input rows early and a few result rows later; summaries hide unit and format errors.
- Extract all *explicit* hard constraints with direct task references. Keep inferred business preferences separate as `ASSUMED` with a sensitivity test.
- Identify feasibility conditions, incompatible constraints, outliers, underserved groups, edge distributions and ambiguity that may affect choice.
- For optimization distinguish feasibility metrics (capacity, assignment, limits) from quality metrics (cost, travel time, utilization, distributional fairness).
- Propose cheap baseline and counterfactual scenarios; choose smallest number of tests that separates competing models.
- Show user: (1) confirmed facts, (2) unknowns, (3) decision-changing cases, (4) suggested comparisons. Avoid overlong automatic reports.

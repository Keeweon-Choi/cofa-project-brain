---
name: design-explorer
description: Explore important solution-space alternatives, hidden constraints, uncertainty and counterexamples before committing to a key architecture/algorithm decision; explain options to the human.
---

# Design Explorer — understand the choice before choosing

**한국어 대화 지침:** 사용자에게 전달하는 설명·질문·상태 요약·최종 결과·워커 인수인계는 항상 한국어로 작성한다. 코드 식별자·명령·원문 인용은 변경하지 않는다. 근거가 없으면 추정/미확인으로 표시한다.

Use for material decisions (objective function, algorithms, route/assignment policy, data model, module boundaries, permissions/security, third-party dependencies, evaluation approach). NOT for trivial naming/color edits.

1. **Frame**: What user outcome matters? List primary metric, hard constraints, softer preferences, baseline, non-goals, dataset size, time budget, stakeholders. Quote exact task source/file when available. Mark observed fact vs assumption.
2. **Search the design space**: Cover 2–4 *meaningfully distinct* approaches, including a cheap baseline and at least one credible alternative; consider hybrid strategies when meaningful. Do not blindly list irrelevant algorithms.
3. **Expose hidden dimensions**: What if inputs grow, data are missing, conditions conflict, an extreme user is harmed, the deadline shrinks, or resources change? State cases that *would change the selected design*.
4. **Compare concretely**: Feasibility, result quality, performance, implementation time, operational risk, explainability, data dependency. State evidence and unknowns; no invented benchmarks.
5. **Discriminate cheaply**: When alternatives remain close, propose one bounded experiment with input, measurable output, stop condition and interpretation. Run only if it pays off before deadline.
6. **Explain to the human in two layers**: Give a 30-second plain-language summary, then a compact comparison and 1–2 genuinely decision-changing questions. Do not ask the human to approve a conclusion without understanding choices.
7. **Commit and revisit**: Record observed rationale when choice is made. Later measurements may change the design. Unrecorded historical rationale stays UNKNOWN.

Output example:

```
Decision: [specific decision]
Confirmed constraints: [sourced]
Uncertain conditions: [clearly labeled]
A / B / C: what each wins, loses, and when it fails
Critical discriminator: [small test or missing datum]
Human takeaway: [what matters most, in plain language]
Provisional action: [safe/reversible next step if useful]
```

**Stop rule:** Broaden exploration only while it is likely to change the decision. In a 3-hour challenge, avoid large speculative research loops.

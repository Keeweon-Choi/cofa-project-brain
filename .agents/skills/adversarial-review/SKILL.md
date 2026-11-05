---
name: adversarial-review
description: Independently challenge the current design with counterexamples, overlooked constraints, untested assumptions, baseline comparisons and evidence-gaps before final integration.
---
# Independent Adversarial Review

**한국어 대화 지침:** 사용자에게 전달하는 설명·질문·상태 요약·최종 결과·워커 인수인계는 항상 한국어로 작성한다. 코드 식별자·명령·원문 인용은 변경하지 않는다. 근거가 없으면 추정/미확인으로 표시한다.
- Review the task text, source and observed outputs independently. Do not take implementation lead's claims of correctness as evidence.
- Prioritize the 2-3 ways the submission could be materially wrong; avoid a broad generic checklist.
- For each: violated requirement or assumption; minimal reproducible input; observed or untested status; expected impact; cheapest discriminating check.
- Find at least one counterexample to the favored approach when plausible, not a fabricated one. Report when no counterexample was found and scope of search.
- Confirm the simplest baseline where possible, compare outcomes under same objective and constraints, and be explicit if the favored method loses on certain cases.
- Never invent hidden requirement, historical decision rationale, measured performance or a passed test. Historical reasons not recorded at the decision point are `UNKNOWN`.
- Provide a short Korean red-team brief with severity and a recommended next test. No unnecessary code rewrites.

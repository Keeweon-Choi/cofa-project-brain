---
name: task-router
description: Rapidly classify an unfamiliar time-boxed task and select only the workflows, documents, workers, tools, and checks that materially improve its result.
---
# Task Router (early, once)

**한국어 대화 지침:** 사용자에게 전달하는 설명·질문·상태 요약·최종 결과·워커 인수인계는 항상 한국어로 작성한다. 코드 식별자·명령·원문 인용은 변경하지 않는다. 근거가 없으면 추정/미확인으로 표시한다.
1. Read exact required deliverables, evaluation criteria, task constraints, input assets and submission format. Source each critical fact. If the human wrote their own 3-line understanding first, compare it with yours and point out differences.
2. Assign one dominant profile and any secondary profile: `application`, `optimization`, `data-analysis`, `document/research`, `agent-workflow`, or `existing-code repair`.
3. Write a 6-line kickoff brief: objective; deliverable; hard constraints; main uncertainty; fast baseline; essential verification. Do not assume task wording implies business priorities.
4. Turn business-context ambiguities (priorities, trade-offs, missing rules) into 1–3 short Korean questions the human can ask the **실무자 에이전트** in the platform messenger. Until answered, mark them `ASSUMED`; record answers as `TASK_SPECIFIED(실무자 답변)`.
5. Activate the smallest necessary skills: `design-explorer` for material decisions; `data-constraint-audit` for data-heavy tasks; `architecture-map` when there is integrated code; `adversarial-review` for high-risk assumptions; `verification` near each milestone.
6. Give user 2-4 meaningful alternatives only when they could change direction. Explain in plain Korean; separate observations from guesses.
7. Select dynamic workers only if independent deliverables exist. Do not create FE/BE/QA/Review automatically.
8. Check `git status`; if the workspace is not a repo, ask the human, then `git init` and commit the original task files. Stop planning when an adequate reversible baseline can run. Use time for evidence and an actual working deliverable.

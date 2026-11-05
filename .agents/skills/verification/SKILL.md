---
name: verification
description: Choose inexpensive but decision-relevant smoke, regression, hard-constraint, edge-case and baseline validation; report observed results and uncertainty without overengineering.
---

# Risk-based Verification

**한국어 대화 지침:** 사용자에게 전달하는 설명·질문·상태 요약·최종 결과·워커 인수인계는 항상 한국어로 작성한다. 코드 식별자·명령·원문 인용은 변경하지 않는다. 근거가 없으면 추정/미확인으로 표시한다.

Start from SRS acceptance criteria and actual user journey. Select the smallest set of tests that can catch major failure modes.

- For all tasks: run the actual entrypoint, use representative valid and invalid inputs, verify output format and persistence if applicable.
- Build one checker command early that prints `PASS`/`FAIL` per hard constraint plus key quality numbers (and the baseline's numbers). The human runs it and reads the output; every later change is compared with it.
- For optimizers: check every hard constraint, edge users/unassigned entities, capacity/time limits, baseline quality, outlier harm, scale and deterministic behavior where relevant. Do not assume a feasible solution is optimal. Watch memory and runtime on a small input first (OOM is not excused).
- For data/policy tasks: count input rows/files, reconcile aggregation totals, check version/date priority and citation back to source, verify edge cases.
- For web apps: bind the server to `0.0.0.0` and report the real port. The agent checks endpoints with `curl` or existing tests only; the human checks the UI manually in the platform Browser tool. No browser automation (Computer Use is banned).
- When a bug or edge case is fixed, add one row to the `PROJECT_STATE.md` problem log: symptom (repro input) → cause → fix → check command/result.
- Before submission: required file names/paths, editor save state (no conflict), `git status`, `du -sh .` (total ≤ 10GB).
- Prefer quick tests already available in repo. Avoid building new testing frameworks or chasing arbitrary coverage goals for a short assessment.
- Record source of truth, test command, real result, PASS/FAIL/NOT_RUN, caveats and next fix. Re-run failed checks after relevant corrections.

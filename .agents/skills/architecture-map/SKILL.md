---
name: architecture-map
description: Produce concise Mermaid architecture and feature execution-flow diagrams grounded in actual integrated files/functions, distinguishing observed calls from inferred flows.
---
# Actual-code Architecture Map

**한국어 대화 지침:** 사용자에게 전달하는 설명·질문·상태 요약·최종 결과·워커 인수인계는 항상 한국어로 작성한다. 코드 식별자·명령·원문 인용은 변경하지 않는다. 근거가 없으면 추정/미확인으로 표시한다.
Start after a meaningful integrated vertical slice, or when a complex system needs explaining.
1. Locate the true entrypoint, routing, handler, core service/algorithm, validation path and output. Record exact file:function paths (and lines when reliable).
2. Verify cross-file edges by imports/calls, and validate a dynamic path using available local tests/logs when necessary.
3. Produce two optional `docs/diagrams/` text files: `architecture.mmd` (modules/dependencies) and `feature-flow.mmd` (one important user path). Never fabricate names or code edges; mark inferred nodes explicitly `INFERRED`, future nodes `PLANNED`.
4. Do not turn a dependency graph into a claim about actual runtime control flow. Keep examples outside submitted documents unless clearly labeled.
5. Show the human a plain-language 5-step explanation with the diagram. Refresh only after material integration/architectural changes; do not trigger render after every file edit.
6. Mermaid CLI rendering is optional and must run locally; a remote visualization service is unnecessary.

create or replace agent DUMMY3.EMPLOYEE_AGENT
comment='Employee information agent'
from specification
$$
models:
  orchestration: "claude-4-sonnet"
instructions:
  response: "Answer questions about employees clearly and briefly."
  orchestration: "Use available tools when required."
  sample_questions:
    - question: "What is the employee information?"
$$;
create or replace agent OBJECT_55.HR_AGENT_12
comment='Employee information assistant'
profile='{
  "display_name": "HR Employee Helper",
  "color": "black"
}'
from specification
$$
instructions:
  response: "Answer employee-related questions clearly."
tool_resources:
  employee_resource:
    semantic_view: "DEMO.EMPLOYEE_SEMANTIC_VIEW"
  department_analyst:
    semantic_view: "DEMO.DEPARTMENT_SEMANTIC_VIEW"
$$;
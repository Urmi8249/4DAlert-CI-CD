create or replace agent OBJECT_55.HR_AGENT_11
comment='Employee information assistant'
profile='{
  "display_name": "HR Employee Helper",
  "color": "black"
}'
from specification
$$
instructions:
  response: "Answer employee-related questions clearly."
tools:
  - tool_spec:
      type: "generic"
      name: "employee_tool"
      description: "Get employee information."
$$;
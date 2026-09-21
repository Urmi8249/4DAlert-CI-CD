create or replace agent OBJECT_55.HR_AGENT_15
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
      type: "cortex_analyst_text_to_sql"
      name: "employee_analyst"
      description: "Get employee information."
$$;
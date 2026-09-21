create or replace agent OBJECT_55.HR_AGENT_14
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
      name: "department_analyst"
      description: "Get department information."
$$;
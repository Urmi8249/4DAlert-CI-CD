create or replace agent OBJECT_55.HR_AGENT_17
comment='HR employee information assistant'
profile='{
  "display_name": "HR Employee Assistant",
  "color": "blue"
}'
from specification
$$
instructions:
  response: "Provide employee information clearly and concisely."
tools:
  - tool_spec:
      type: "cortex_analyst_text_to_sql"
      name: "employee_analyst"
      description: "Retrieve employee information."
$$;
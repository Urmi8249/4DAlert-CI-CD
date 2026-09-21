create or replace agent PERFORM10.HR_AGENT_19
comment='HR employee information assistant'
profile='{
  "display_name": "Employee Information Assistant",
  "color": "White"
}'
from specification
$$
instructions:
  response: "Provide employee information clearly."
$$;
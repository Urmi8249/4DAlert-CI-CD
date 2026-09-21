create or replace agent OBJECT_55.HR_AGENT_21
comment='Employee information assistant'
profile='{
  "display_name": "EMPLOYEE ASSISTANT",
  "color": "Blue"
}'
from specification
$$
instructions:
  response: "Provide employee information clearly and concisely."
$$;
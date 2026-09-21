create or replace agent OBJECT_55.HR_AGENT_18
comment='HR employee information assistant'
profile='{
  "display_name": "",
  "color": "White"
}'
from specification
$$
instructions:
  response: "Provide employee information clearly and concisely."
$$;
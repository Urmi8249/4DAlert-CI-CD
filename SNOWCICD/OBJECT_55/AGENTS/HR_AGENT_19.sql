create or replace agent OBJECT_55.HR_AGENT_19
comment='HR employee management assistant'
profile='{
  "display_name": "This is an extremely long employee information assistant display name that exceeds the supported character limit for the agent profile",
  "color": "White"
}'
from specification
$$
instructions:
  response: "Provide employee information clearly and concisely."
$$;
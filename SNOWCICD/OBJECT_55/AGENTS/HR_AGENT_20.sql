create or replace agent OBJECT_55.HR_AGENT_20
comment='HR employee information assistant'
profile='{
  "display_name": "@@HR_Assistant##!!",
  "color": "White"
}'
from specification
$$
instructions:
  response: "Provide employee information clearly and concisely."
$$;
create or replace agent BAIJAYANTI.HR_AGENT_23
comment='Employee information assistant'
profile='{
  "color": "Blue",
  "display_name": "HR Employee Helper"
}'
from specification
$$
instructions:
  response: "Provide employee information clearly."
$$;
create or replace agent OBJECT_55.HR_AGENT_26
comment='Employee information assistant'
profile='{
  "display_name": "HR Employee Helper",
  "color": "Blue"
}'
from specification
$$
instructions:
  response: "Provide employee information clearly."
$$;
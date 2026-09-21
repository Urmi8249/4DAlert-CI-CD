create or replace agent OBJECT_55.HR_AGENT_27
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
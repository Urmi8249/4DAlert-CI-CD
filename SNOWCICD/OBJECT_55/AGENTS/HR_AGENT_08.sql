create or replace agent OBJECT_55.HR_AGENT_08
comment='Employee information assistant'
profile='{
  "display_name": "HR Employee Helper",
  "avatar": "employee",
  "color": "black"
}'
from specification
$$
instructions:
  response: "Answer employee-related questions clearly and concisely."
$$;
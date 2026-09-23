create or replace agent BAIJAYANTI.HR_AGENT_06
comment='Employee information assistant'
profile='{
  "display_name": "HR Employee Helper",
  "avatar": "employee",
  "color": "blue"
}'
from specification
$$
instructions:
  response: "Answer employee-related questions clearly and concisely."
$$;
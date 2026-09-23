create or replace agent BAIJAYANTI.BASIC_AGENT_05
comment='Employee information assistant'
profile='{"display_name": "Employee Helper"}'
from specification
$$
instructions:
  response: "Answer employee-related questions clearly."
$$;
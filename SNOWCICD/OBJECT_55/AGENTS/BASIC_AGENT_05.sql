create or replace agent OBJECT_55.BASIC_AGENT_05
comment='Employee information assistant'
profile='{"display_name": "Employee Helper"}'
from specification
$$
instructions:
  response: "Answer employee-related questions clearly."
$$;
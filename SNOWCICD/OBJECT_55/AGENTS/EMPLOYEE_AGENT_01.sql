create or replace agent OBJECT_55.EMPLOYEE_AGENT_01
comment='Employee agent for testing'
profile='{"display_name": "Staff Agent"}'
from specification
$$
instructions:
  response: "You are an employee assistant."
$$;
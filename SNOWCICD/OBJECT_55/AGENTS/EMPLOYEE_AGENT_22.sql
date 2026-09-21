create or replace agent OBJECT_55.EMPLOYEE_AGENT_22
comment='Employee agent for testing'
profile='{
  "display_name": "Employee Agent"
}'
from specification
$$
instructions:
  response: "You are an employee assistant."
$$;
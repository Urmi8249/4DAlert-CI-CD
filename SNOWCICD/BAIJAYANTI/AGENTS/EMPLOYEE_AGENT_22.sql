create or replace agent BAIJAYANTI.EMPLOYEE_AGENT_22
comment='Employee agent for testing'
profile='{
  "display_name": "Employee_Agent"
}'
from specification
$$
instructions:
  response: "You are an employee assistant."
$$;
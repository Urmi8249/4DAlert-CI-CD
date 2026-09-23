create or replace agent BAIJAYANTI.EMPLOYEE_AGENT_04
comment='Agent for employee information'
profile='{"display_name": "Employee Agent"}'
from specification
$$
instructions:
  response: "You are an employee assistant."
$$;
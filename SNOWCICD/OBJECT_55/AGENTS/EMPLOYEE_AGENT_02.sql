create or replace agent OBJECT_55.EMPLOYEE_AGENT_02
comment='Agent for staff management'
profile='{"display_name": "Employee Agent"}'
from specification
$$
instructions:
  response: "You are an employee assistant."
$$;
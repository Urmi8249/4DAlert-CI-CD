create or replace agent BAIJAYANTI.BASIC_AGENT
comment='Basic agent for schema compare testing'
profile='{"display_name": "Basic Agent"}'
from specification
$$
instructions:
  response: "You are a helpful assistant."
$$;
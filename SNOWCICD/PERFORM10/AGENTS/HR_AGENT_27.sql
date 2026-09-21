create or replace agent PERFORM10.HR_AGENT_27
comment='Employee information assistant'
profile='{
  "display_name": null,
  "color": null
}'
from specification
$$
instructions:
  response: "Provide employee information clearly."
$$;
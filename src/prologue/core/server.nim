# needs lastest devel version to use httpx
import asyncdispatch


# when compiles(getGlobalDispatcher().handles):
#   when defined(usestd):
#     import naive/server
#   else:
#     import beast/server
# else:
when defined(windows) or defined(usestd):
  import naive/server
else:
  import beast/server


export server
import ../../src/prologue
import ../../src/prologue/websocket


proc hello*(ctx: Context) {.async.} =
  var ws = await newWebSocket(ctx)
  await ws.send("Welcome to simple echo server")
  while ws.readyState == Open:
    let packet = await ws.receiveStrPacket()
    await ws.send(packet)

  resp "<h1>Hello, Prologue!</h1>"

# ws = new WebSocket("ws://localhost:8080/ws")
# ws.send("hi")
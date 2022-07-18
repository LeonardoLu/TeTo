import Vapor

enum TeTo {

    static
    func sockets(_ app: Application) throws {
        print("add sockets")
        app.webSocket("heartBeat") { req, socket in
            print("heartBeat")
            socket.onText { ws, text in
                // 4
                print("ws received: \(text)")
                // 5
                ws.send("echo: " + text)
            }
        }
        app.webSocket("echo") { req, ws in
            // 2
            print("ws connected")
            // 3
            ws.onText { ws, text in
                // 4
                print("ws received: \(text)")
                // 5
                ws.send("echo: " + text)
            }
        }
    }
}

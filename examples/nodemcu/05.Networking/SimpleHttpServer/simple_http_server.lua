-- a simple http server
srv = net.createServer(net.TCP)
srv:listen(80, function(conn)
    conn:on("receive", function(sck, payload)
        print(payload)
        sck:send("HTTP/1.0 200 OK\r\nContent-Type: text/html\r\n\r\n&lth1&gt Hello, NodeMCU.&lt/h1&gt")
    end)
    conn:on("sent", function(sck) sck:close() end)
end)
local robloxLongPolling = require(script.LongPolling)



local connection = robloxLongPolling.Connect("https://long-polling-rb.herokuapp.com:80")

connection:on("consoleRun", function(message)--This is an event fired in the above example, you can change this if you want into your own events.
	loadstring(message)
end)

--connection:on("new connection", function(id)--This is an event fired in the above example, you can change this if you want into your own events.
--	print("new connection ", id)
--end)

--connection:on("disconnection", function(id)--Fired if we for some reason get disconnected.
--	print("disconnection ", id)
--end)
--connection:send("hello", "Hello world!")--Example on how to send messages.

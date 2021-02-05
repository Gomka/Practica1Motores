local Counter = {}
Counter.clicks = 0
Counter.mouseClicks = 0

function Counter.mouseClick()
	Counter.clicks = Counter.clicks + 1
	Counter.mouseClicks = Counter.mouseClicks + 1

	if Counter.mouseClicks >= 10 then
		Counter.mouseClicks = 0
		print("ping")
		msg.post("main:/boarFactory#boarFactory", "createBoar")
	end
end

function Counter.boarClick()
	Counter.clicks = Counter.clicks + 1
end

function Counter.getClicks()
	return Counter.clicks
end

return Counter
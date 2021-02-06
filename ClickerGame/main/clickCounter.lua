local Counter = {}
Counter.clicks = 0
Counter.mouseClicks = 0

function Counter.click()
	Counter.clicks = Counter.clicks + 1
	Counter.mouseClicks = Counter.mouseClicks + 1

	if Counter.mouseClicks >= 10 then
		Counter.mouseClicks = 0
		msg.post("main:/boarFactory#boarFactory", "createBoar")
	end
end

function Counter.getClicks()
	return Counter.clicks
end

return Counter
local Counter = {}
Counter.clicks = 0
Counter.mouseClicks = 0
Counter.numClicksToBoar = 10

function Counter.click(value)
	Counter.clicks = Counter.clicks + value
	Counter.mouseClicks = Counter.mouseClicks + value

	if Counter.mouseClicks >= Counter.numClicksToBoar then
		Counter.mouseClicks = 0
		msg.post("main:/boarFactory#boarFactory", "createBoar")
	end
end

function Counter.getMouseClicks()
	return Counter.mouseClicks
end

function Counter.getNumClicksToBoar()
	return Counter.numClicksToBoar
end

function Counter.getClicks()
	return Counter.clicks
end

return Counter
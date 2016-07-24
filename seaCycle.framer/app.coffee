# Set device background
Screen.backgroundColor = "salmon"

seaCycle = new Layer
	width: 320
	height: 320
	borderRadius: 160
	image: "images/photo-1461352195749-fdba50b79c74.jpeg"
# 	backgroundColor: "000"
	shadowColor: "rgba(0,0,0,0.4)"
	shadowY: 16
	shadowBlur: 40

seaCycle.centerX()
seaCycle.centerY()
seaCycle.y -= 48

class Animal
	constructor: (@name) ->
		this.name = name
	pee: -> 
		print "#{this.name} pee"
	
dog = new Animal('vasya')
dog.pee(1)
# (new Animal('kuzya')).pee()
# decrease = new Animation
# 	layer: seaCycle
# 	properties:
# 		scale: 0.2
# 	time: 0.5
# 	curve: "ease-in-out"
class Animation1
	reverse: ->
		return new Animation
			x: -this.layer.x

reverseArray = (arr...) -> 
# 	arr.filter (pen) -> pen.color is 'blue'
	pen.color for pen in pens when pen.color is 'blue'
generateArray = -> [4, 5]
print reverseArray generateArray()...
# 
# increase = new Animation
# 	layer: seaCycle
# 	properties:
# 		scale: 6
# # 		x: seaCycle.y
# # 		y: seaCycle.x
# # 	time: 0.5
# 	curve: "ease-in-out"
# 
# decrease = increase.reverse()
# handler = (e) ->
# 	increase.start()
# 	Utils.delay 2, ->
# 		decrease.start()
# 		
# seaCycle.on Events.Click, handler
# seaCycle.on Events.Tap, handler

# seaCycle.on Events.TouchEnd, ->
# 	decrease.start()
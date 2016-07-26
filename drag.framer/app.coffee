# Set device background
Screen.backgroundColor = "thistle"

screenPadding = 48

card = new Layer
	width: Screen.width-screenPadding*2
	height: 800
	borderRadius: 8
	backgroundColor: "#fff"
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.16)"
	shadowBlur: 40
	shadowY: 16

card.centerX()
card.centerY()
yDefault = card.y
xDefault = card.x
rotationDefault = card.rotation
card.y -= 64

# card.draggable.horizontal = true
# card.draggable.vertical = false

card.draggable.constraints = 
	width: Screen.width + 200
	height: Screen.height + 200

# card.draggable.momentumOptions =
# 	friction: 100
# 	tolerance: 20

card.draggable.directionLock = yes

card.onDragStart ->
	this.animate
		properties:
			rotation: 15

card.onDragAnimationEnd ->
	this.animate
		properties:
			rotation: rotationDefault
			x: xDefault
			y: yDefault
			curve: "spring (500,40,0)"

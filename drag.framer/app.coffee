container = new Layer
	width: Screen.width
	height: Screen.height
	backgroundColor: "#28affa"

card = new Layer
	width: 320
	height: 320
	borderRadius: 4
	backgroundColor: "#fff"
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.16)"
	shadowBlur: 16
	shadowY: 8
	
card.centerX()
card.centerY()
yDefault = card.y
xDefault = card.x

card.superLayer = container

card.draggable.horizontal = true
card.draggable.vertical = false

card.draggable.momentumOptions = {
	friction: 30
	tolerance: 0.5
}

card.onDragStart ->
	this.animate
		properties: {rotation: 15}

card.onDragAnimationEnd ->
	this.animate
		properties: {
			rotation: 0
			x: xDefault
			y: yDefault
			}
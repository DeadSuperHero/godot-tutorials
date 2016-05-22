extends Sprite

func _ready():
	#translate to center of the parent, in this case, the viewport
	var newPos = Vector2(self.get_parent().get_rect().size.width/2,self.get_parent().get_rect().size.height/2)
	self.set_pos(newPos)
	
	#rotate by 90 degrees, set_root takes radians so we need to convert using in-built function
	self.set_rot(deg2rad(90))
	
	#scale by 2x
	self.set_scale(Vector2(2, 2))
	
func _draw():
		# each frame draw a bounding rect to show boundaries clearer
		self.draw_rect(self.get_item_rect(),Color(0,0,1,0.2))
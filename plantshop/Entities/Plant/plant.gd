extends Node2D

@onready var animation := $AnimatedSprite2D

var leaf_count: int = 1;

var leaf_animations := {
	2: "grow_second_leaf",
	3: "grow_third_leaf",
	4: "grow_fourth_leaf",
	5: "grow_fifth_leaf",
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if  event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if leaf_count < 5:
			leaf_count += 1
			print("Plant now has ", leaf_count, " leaves")		
			var animation_name = leaf_animations[leaf_count]
			animation.play(animation_name)
		
		

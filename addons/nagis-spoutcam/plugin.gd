@tool
extends EditorPlugin

const SPOUT_CAM_SCRIPT := preload("res://addons/nagis-spoutcam/spout_cam.gd")
const SPOUT_CAM_ICON := preload("res://icon.svg")

func _enter_tree() -> void:
	add_custom_type("SpoutCAM", "Camera2D", SPOUT_CAM_SCRIPT, SPOUT_CAM_ICON)

func _exit_tree() -> void:
	remove_custom_type("SpoutCAM")

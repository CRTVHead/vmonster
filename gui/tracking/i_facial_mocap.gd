extends "res://gui/tracking/tracking_gui.gd"

#-----------------------------------------------------------------------------#
# Builtin functions
#-----------------------------------------------------------------------------#

func _ready() -> void:
	var port := %Port
	
	%Start.pressed.connect(func() -> void:
		started.emit(AbstractTracker.Trackers.I_FACIAL_MOCAP, {
			port = port.text.to_int()
		})
	)

#-----------------------------------------------------------------------------#
# Private functions
#-----------------------------------------------------------------------------#

#-----------------------------------------------------------------------------#
# Public functions
#-----------------------------------------------------------------------------#
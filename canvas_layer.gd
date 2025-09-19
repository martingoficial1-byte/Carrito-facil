extends CanvasLayer

var Animacion2:bool = false

@onready var Boton_izquierda = $Izquierda2
@onready var Boton_derecha = $Derecha2


func _ready() -> void:
	Boton_izquierda.visible = false
	Boton_derecha.visible = true

func _on_derecha_2_pressed() -> void:
	if !Animacion2:
		$AnimationPlayer2.play("Boton-derecha2")
		Boton_izquierda.visible = true
		Boton_derecha.visible = false
		Animacion2 = true


func _on_izquierda_2_pressed() -> void:
	if Animacion2:
		$AnimationPlayer2.play("Boton-izquierda2")
		Boton_izquierda.visible = false
		Boton_derecha.visible = true
		Animacion2 = false

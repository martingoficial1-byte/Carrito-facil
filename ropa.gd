extends CanvasLayer

var Animacion:bool = false

@onready var Boton_izquierda = $Izquierda
@onready var Boton_derecha = $Derecha


func _ready() -> void:
	Boton_izquierda.visible = false
	Boton_derecha.visible = true


func _on_derecha_pressed() -> void:
	if !Animacion:
		$AnimationPlayer.play("Boton-derecha")
		Boton_izquierda.visible = true
		Boton_derecha.visible = false
		Animacion = true


func _on_izquierda_pressed() -> void:
	if Animacion:
		$AnimationPlayer.play("Boton-izquierda")
		Boton_izquierda.visible = false
		Boton_derecha.visible = true
		Animacion = false

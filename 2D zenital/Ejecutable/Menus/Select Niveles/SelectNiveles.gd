extends Node

var partida 

func _ready():
	$VBoxContainer.set_position(Vector2(get_viewport().size.x/4 , get_viewport().size.y/4))
	if Global.pantalla == 0:
#		print(get_node("VBoxContainer/Nivel2").get_global_transform()[2])
		get_node("VBoxContainer/Nivel2").hide()
		get_node("VBoxContainer/Nivel3").hide()
		get_node("VBoxContainer/Nivel4").hide()

	if Global.pantalla == 1:
		get_node("VBoxContainer/Nivel3").hide()
		get_node("VBoxContainer/Nivel4").hide()

	if Global.pantalla == 2:
		get_node("VBoxContainer/Nivel4").hide()
	pass

func _load_scene(nivel):
	partida = load(nivel).instance()
	Global.nivel = partida.get_name()
	partida.set_name("partida")
	partida.get_node("PosicionSalida").add_child(Global.personaje)
	get_parent().get_parent().add_child(partida)
	get_parent().get_node("Musica Menus").stop()
	$".".queue_free()

func _on_Nivel1_pressed():
	_load_scene("res://Ejecutable/Juego/Escenarios/Niveles/Nivel1/nivel1.tscn")
	get_parent().get_node("boton").play()


	pass



func _on_Nivel2_pressed():
	_load_scene("res://Ejecutable/Juego/Escenarios/Niveles/Nivel2/nivel2.tscn")
	get_parent().get_node("boton").play()
	pass # replace with function body


func _on_Nivel3_pressed():
	_load_scene("res://Ejecutable/Juego/Escenarios/Niveles/Nivel3/nivel3.tscn")
	get_parent().get_node("boton").play()
	pass # replace with function body


func _on_Nivel4_pressed():
	_load_scene("res://Ejecutable/Juego/Escenarios/Niveles/Nivel4/nivel4.tscn")
	get_parent().get_node("boton").play()
	pass # replace with function body

extends Area2D



func _on_body_entered(body: Node2D) -> void:
	print("hi")
	
	var label_pontos = %MoedasPegas
	var valor_atual = int(label_pontos.text)
	var novo_valor = valor_atual+1
	label_pontos.text = str(novo_valor)
	#var label_pontos = get_node("/root/Game/CanvasLayer/MoedasPegas")
	#print(label_pontos.global_position) 
	

	queue_free()
	pass # Replace with function body.

require_relative "input"

class Validation
	

	def valida_dificuldade_escolhida
		if $nivel_de_dificuldade.include? '.' or $nivel_de_dificuldade.include? ',' or $nivel_de_dificuldade.include? ';'
			$object_msg.opcao_invalida
	    	$object_msg.exibe_mensagem_escolha_dificuldade
			$object_input.entrar_dificuldade
		else
			$nivel_de_dificuldade
		end
	end

	def valida_tentativa_jogador
		if $numero_tentativa_jogador.include? '0' or $numero_tentativa_jogador.include? '1' or $numero_tentativa_jogador.include? '2' or 
	    $numero_tentativa_jogador.include? '3' or $numero_tentativa_jogador.include? '4' or $numero_tentativa_jogador.include? '5' or
	    $numero_tentativa_jogador.include? '6' or $numero_tentativa_jogador.include? '7' or $numero_tentativa_jogador.include? '8' or
	    $numero_tentativa_jogador.include? '9' or $numero_tentativa_jogador.include? '0'
	    	
	    	$numero_tentativa_jogador
	    	
	    else
	    	$object_msg.opcao_invalida
	    	$object_msg.exibe_mensagem_entre_com_numero
	    	$object_input.entrar_tentativa_jogador
	    	
	    end	
	end

	def valida_nivel
		$nivel = $object_input.entrar_dificuldade
	    $nivel = $nivel.to_i
		    
	    $rag = (1..5)
	    if $rag === $nivel
	        $dificuldade = $nivel
	    else
	        $object_mensagem.opcao_invalida
	        $object_mensagem.exibe_mensagem_escolha_dificuldade
	        $object_validation.valida_nivel
	    end
		
	end
end
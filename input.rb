require_relative "output"


class Input
	
	$object_msg = Output.new
    
    def nome_jogador (nome)
        $nome = gets.strip

    end
	
	def entrar_tentativa_jogador		
	    $numero_tentativa_jogador = gets.strip

	end

	def entrar_dificuldade
		$nivel_de_dificuldade = gets.strip
		if $nivel_de_dificuldade.include? '.' or $nivel_de_dificuldade.include? ',' or $nivel_de_dificuldade.include? ';' 
			$object_msg.opcao_invalida
			$object_msg.exibe_mensagem_escolha_dificuldade
			entrar_dificuldade
		end
		$nivel_de_dificuldade
	end

	def deseja_jogar_novamente
		$quer_jogar = gets.strip
	
	end


end
 
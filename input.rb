require_relative "output"
require_relative "validation"

class Input
	
	$object_msg = Output.new
    $object_validation = Validation.new

    def nome_jogador (nome_jogador)
        $nome_jogador = gets.strip
        

    end

	def entrar_dificuldade
		$nivel_de_dificuldade = gets.strip
		$object_validation.valida_dificuldade_escolhida

	end
	
	def entrar_tentativa_jogador		
	    $numero_tentativa_jogador = gets.strip
	    $object_validation.valida_tentativa_jogador

	end

	def deseja_jogar_novamente
		$quer_jogar = gets.strip
	
	end


end
 
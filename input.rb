require_relative "output"

class Input
    $object_msg = Output.new

    def nome_jogador (nome)
        $nome = gets.strip
    end
	
	def entrar_tentativa_jogador (ultimas_tentativas, tentativa, limite_tentativas)
		
	    $object_msg.exibe_mensagem_tentativa ultimas_tentativas, tentativa, limite_tentativas
	    numero_entrada_jogador = gets.strip

	    $object_msg.exibe_mensagem_acertou_secreto numero_entrada_jogador
	    numero_entrada_jogador
	end

end
 
require_relative "input"
require_relative "output"
require_relative "validation"
require_relative "dao"

class Jogo_Adivinhacao
	$object_mensagem = Output.new
	$object_input = Input.new
	$object_validation = Validation.new
	$object_dao = Dao.new

	def jogo_adivinhacao 

		$object_mensagem.exibe_coruja

	    $object_mensagem.exibe_pergunta_nome
	     
	    $object_input.nome_jogador ( )

	    $object_mensagem.exibe_inicio_jogo

	    $object_mensagem.exibe_melhor_jogador_atual $object_dao.le_rank

	    pontuacao_total = 0
	    

	    loop do
			
			$object_mensagem.mostra_pontos_totais pontuacao_total
			dificuldade = escolhe_dificuldade
			pontuacao_total += jogar dificuldade
			
			if $object_dao.le_rank[2].to_i < pontuacao_total
				$object_dao.salva_rank $nome_jogador, pontuacao_total
			end

			if jogar_novamente
				break
			end
			
			pontuacao_total
		end
	end

	def escolhe_dificuldade

	    $object_mensagem.exibe_mensagem_escolha_dificuldade
	    $object_validation.valida_nivel
	    	    
	end

	def escolhe_numero_secreto (dificuldade)
		
			case dificuldade
			when 1
				maximo = 30
			when 2
				maximo = 60
			when 3
				maximo = 100
			when 4
				maximo = 150
			else
				maximo = 200
			end	
		
		$object_mensagem.mostra_numero_secreto_maximo (maximo)
		
		numero_secreto = rand (maximo) + 1
		
		$object_mensagem.mostra_inicio_jogo

		return numero_secreto
	end
		
	def verifica_se_acertou (numero_secreto, numero_entrada_jogador)
		
		acertou =  numero_secreto == numero_entrada_jogador.to_i
		
		if acertou
			$object_mensagem.exibe_smile
			return true
		end
		
		maior = numero_secreto > numero_entrada_jogador.to_i
		if maior
			$object_mensagem.mostra_nao_acertou_numero_secreto_maior
		else
			$object_mensagem.mostra_nao_acertou_numero_secreto_menor
		end
		return false
	end

	def jogar (dificuldade)
		numero_secreto = escolhe_numero_secreto dificuldade
		pontuacao_jogador = 1000
		limite_tentativas = 5
		ultimas_tentativas = []

		for tentativa in 1..limite_tentativas
			$object_mensagem.exibe_mensagem_tentativa ultimas_tentativas, tentativa, limite_tentativas
			numero_entrada_jogador = $object_input.entrar_tentativa_jogador
			$object_mensagem.exibe_mensagem_acertou_secreto numero_entrada_jogador
			
			ultimas_tentativas << numero_entrada_jogador

			pontos_perdidos = (numero_entrada_jogador.to_i - numero_secreto).abs / 2.0
			pontuacao_jogador -= pontos_perdidos

			break if verifica_se_acertou(numero_secreto, numero_entrada_jogador)
			
		end
		
		$object_mensagem.mostra_pontuacao_final pontuacao_jogador
		
		$object_mensagem.mostra_numero_secreto numero_secreto

		pontuacao_jogador

	end

	def jogar_novamente
	    
		$object_mensagem.quer_jogar_novamente
	    
	    quer_jogar = $object_input.deseja_jogar_novamente
	    if quer_jogar.upcase == "S" || quer_jogar.upcase == "N"
	        quer_jogar.upcase == "N"    
	    else        
	        $object_mensagem.opcao_invalida
	        jogar_novamente
	    end
	end

end

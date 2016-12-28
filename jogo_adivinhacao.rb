require_relative "ui"

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
	
	mostra_numero_secreto_maximo maximo
	numero_secreto = rand (maximo) + 1
	mostra_pergunta_inicio

	return numero_secreto
end
	
def verifica_se_acertou (numero_secreto, numero_entrada_jogador)
	
	acertou =  numero_secreto == numero_entrada_jogador.to_i
	
	if acertou
		ganhou
		return true
	end
	
	maior = numero_secreto > numero_entrada_jogador.to_i
	if maior
		mostra_nao_acertou_numero_secreto_maior
	else
		mostra_nao_acertou_numero_secreto_menor
	end
	return false
end

def jogar (dificuldade)
	numero_secreto = escolhe_numero_secreto dificuldade
	pontuacao_jogador = 1000
	limite_tentativas = 5
	ultimas_tentativas = []

	for tentativa in 1..limite_tentativas

		numero_entrada_jogador = entrar_tentativa_jogador ultimas_tentativas, tentativa, limite_tentativas
		ultimas_tentativas << numero_entrada_jogador

		pontos_perdidos = (numero_entrada_jogador.to_i - numero_secreto).abs / 2.0
		pontuacao_jogador -= pontos_perdidos

		break if verifica_se_acertou(numero_secreto, numero_entrada_jogador)
		
	end

	mostra_pontuacao_final pontuacao_jogador
	mostra_numero_secreto numero_secreto

end

def jogo_adivinhacao

	boas_vindas

	loop do
		dificuldade = escolhe_dificuldade
		jogar dificuldade
		if jogar_novamente
			break
		end
	end
end

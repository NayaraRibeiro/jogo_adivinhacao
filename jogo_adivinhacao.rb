def boas_vindas

    puts
	puts "  .___.                                "
	puts "  (O,O)           Bem-vindo ao         "
	puts "  l)___)      Jogo da Adivinhação!     "
	puts "  =o===o=                              "
	puts "                                       "
	
    puts
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end

def escolhe_dificuldade

	puts "Qual nível de dificuldade deseja?"
	puts "(1) - Fácil  (2) - Médio  (3) - Difícil  (4) - Muito Difícil  (5) - Impossível"
	puts "Escolha: "
	dificuldade = gets.to_i
	return dificuldade

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

	puts "Escolhendo um número secreto entre 1 e #{maximo}..."
	numero_secreto = rand (maximo) + 1
	puts "\n\n\n\n\n"
	sleep 2
	puts "Escolhido!!! Que tal adivinhar nosso numero secreto? Você terá 5 tentativas."
	sleep 2
	return numero_secreto
end

def entrar_tentativa_jogador (ultimas_tentativas, tentativa, limite_tentativas)

	puts "\n"
	puts "Tentativa número #{tentativa} de #{limite_tentativas}"
	puts "Tentativas anteriores: #{ultimas_tentativas}"
	puts "Entre com o numero: "
	numero_entrada_jogador = gets.strip
	puts "Será que acertou o número secreto?"
	sleep 2
	puts "Você chutou o número #{numero_entrada_jogador}" + "\n\n\n"
	numero_entrada_jogador
end
	
def verifica_se_acertou (numero_secreto, numero_entrada_jogador)
	
	acertou =  numero_secreto == numero_entrada_jogador.to_i
	
	if acertou
		ganhou
		return true
	end
	
	maior = numero_secreto > numero_entrada_jogador.to_i
	if maior
		puts "Que pena... Você não acertou." + "\n" + "O numero secreto é maior."
		sleep 1
	else
		puts "Que pena... Você não acertou." + "\n"+ "O numero secreto é menor."
		sleep 1
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

puts "Sua pontuação foi #{pontuacao_jogador} pontos."
puts "O numero secreto era #{numero_secreto}."

end

def ganhou
    puts
    puts "             OOOOOOOOOOO               "
    puts "         OOOOOOOOOOOOOOOOOOO           "
    puts "      OOOOOO  OOOOOOOOO  OOOOOO        "
    puts "    OOOOOO      OOOOO      OOOOOO      "
    puts "  OOOOOOOO  #   OOOOO  #   OOOOOOOO    "
    puts " OOOOOOOOOO    OOOOOOO    OOOOOOOOOO   "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO  "
    puts "OOOO  OOOOOOOOOOOOOOOOOOOOOOOOO  OOOO  "
    puts " OOOO  OOOOOOOOOOOOOOOOOOOOOOO  OOOO   "
    puts "  OOOO   OOOOOOOOOOOOOOOOOOOO  OOOO    "
    puts "    OOOOO   OOOOOOOOOOOOOOO   OOOO     "
    puts "      OOOOOO   OOOOOOOOO   OOOOOO      "
    puts "         OOOOOO         OOOOOO         "
    puts "             OOOOOOOOOOOO0             "
    puts
    puts "      Parabéns!! Você acertou!         "
    puts
end


def jogar_novamente

	puts "Deseja jogar novamente? (S/N)"
	quer_jogar = gets.strip
	if quer_jogar.upcase == "S" || quer_jogar.upcase == "N"
		quer_jogar.upcase == "N"	
	else		
		puts "Opção inválida. Tente novamente."
		jogar_novamente
	end
end


boas_vindas

loop do
	dificuldade = escolhe_dificuldade
	jogar dificuldade
	if jogar_novamente
		break
	end
end
	



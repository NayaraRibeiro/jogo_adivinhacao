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
    nivel = gets.to_i
    rag = (1..5)
    if rag === nivel
        dificuldade = nivel
    else
        opcao_invalida
        escolhe_dificuldade
    end
    
end

def mostra_numero_secreto_maximo (maximo)

    puts "Escolhendo um número secreto entre 1 e #{maximo}..."
    
end

def mostra_pergunta_inicio
    
    puts "\n\n\n\n\n"
    sleep 2
    puts "Escolhido!!! Que tal adivinhar nosso numero secreto? Você terá 5 tentativas."
    sleep 2

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

def mostra_nao_acertou_numero_secreto_maior

    puts "Que pena... Você não acertou." + "\n" + "O numero secreto é maior."
    sleep 1

end

def mostra_nao_acertou_numero_secreto_menor

    puts "Que pena... Você não acertou." + "\n" + "O numero secreto é menor."
    sleep 1
    
end

def  mostra_pontuacao_final (pontuacao_jogador)

    puts "Sua pontuação foi #{pontuacao_jogador} pontos."
    
end

def mostra_numero_secreto (numero_secreto)

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
        opcao_invalida
        jogar_novamente
    end
end

def opcao_invalida

    puts "Opção inválida. Tente novamente."
    puts "\n\n"
end

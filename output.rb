class Output
    def exibe_coruja
        puts
    	puts "  .___.                                "
    	puts "  (O,O)           Bem-vindo ao         "
    	puts "  l)___)      Jogo da Adivinhação!     "
    	puts "  =o===o=                              "
    	puts "                                       "
    	puts 
    end

    def exibe_pergunta_nome
        puts "Qual é o seu nome?"
    end

    def exibe_inicio_jogo 
        puts "\n\n\n\n\n\n"
        puts "Começaremos o jogo para você, #{$nome_jogador}..."
    end

    def exibe_melhor_jogador_atual (dados_rank)
        puts "O melhor jogador atualmente é #{dados_rank[0]} com #{dados_rank[1]} pontos."
        
    end
    
    def exibe_mensagem_escolha_dificuldade
        puts "Qual nível de dificuldade deseja?"
        puts "(1) - Fácil  (2) - Médio  (3) - Difícil  (4) - Muito Difícil  (5) - Impossível"
        puts "Escolha: "
    end

    def mostra_numero_secreto_maximo (maximo)
        puts "Escolhendo um número secreto entre 1 e #{maximo}..."
    end

    def mostra_inicio_jogo
        
        puts "\n\n\n\n\n"
        sleep 2
        puts "Escolhido!!! Que tal adivinhar nosso numero secreto? Você terá 5 tentativas."
        sleep 2

    end

    def exibe_mensagem_tentativa (ultimas_tentativas, tentativa, limite_tentativas)
        puts "\n"
        puts "Tentativa número #{tentativa} de #{limite_tentativas}"
        puts "Tentativas anteriores: #{ultimas_tentativas}"
        puts "Entre com o numero: "
        
    end

    def exibe_mensagem_entre_com_numero
        puts "Entre com o numero: "
        
    end

    def exibe_mensagem_acertou_secreto (numero_entrada_jogador)
        puts "Será que acertou o número secreto?"
        sleep 2
        puts "Você chutou o número #{numero_entrada_jogador}" + "\n\n\n" 
    end

    def mostra_nao_acertou_numero_secreto_maior
        puts "Que pena... Você não acertou." + "\n" + "O numero secreto é maior."
        sleep 1

    end

    def mostra_nao_acertou_numero_secreto_menor
        puts "Que pena... Você não acertou." + "\n" + "O numero secreto é menor."
        sleep 1
        
    end

    def exibe_smile
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

    def quer_jogar_novamente
        puts "Deseja jogar novamente? (S/N)"
        
    end

    def  mostra_pontuacao_final (pontuacao_jogador)
        puts "Sua pontuação nesta rodada foi #{pontuacao_jogador} pontos."
        
    end

    def mostra_numero_secreto (numero_secreto)
        puts "O numero secreto era #{numero_secreto}."
    end

    def opcao_invalida

        puts "Opção inválida. Tente novamente."
        puts "\n\n"
    end

    def mostra_pontos_totais (pontuacao_total)
        puts "Você possui #{pontuacao_total} pontos no total."
        
    end

end


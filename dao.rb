class Dao
	def salva_rank (nome_jogador, pontuacao_total)
		conteudo = "#{nome_jogador}\n#{pontuacao_total}"
		File.write "rank.txt", conteudo
	end

	def le_rank
		conteudo_atual = File.read "rank.txt"
		dados = conteudo_atual.split "\n"
		
	end
end
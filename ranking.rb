def salva_ranking(nome, pontos_totais)
	conteudo = "#{nome}\n#{pontos_totais}"
	File.write("rank.txt", conteudo)
end


def ler_ranking
	conteudo = File.read("rank.txt")
	conteudo.split("\n")	
end

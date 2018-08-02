require_relative 'ui'

def pede_chute_valido(chutes, erros, mascara)
	cabecalho_de_tentativas(erros, chutes, mascara)
	loop do
		chute = pede_chute
		if chutes.include?(chute)
			avisa_chute_repetido
		else
			return chute
		end
	end
end


def palavra_mascarada(chutes, palavra_secreta)
	mascara = ""
	for letra in palavra_secreta.chars
		if chutes.include? letra
			mascara << letra
		else
			mascara << " _ "
		end
	end	
	mascara	
end


def escolhe_palavra_secreta
	informa_escolhendo_palavra

	texto = File.read("dicionario.txt")
	todas_as_palavras = texto.split("\n")
	numero_escolhido = rand(todas_as_palavras.size)
	palavra_secreta = todas_as_palavras[numero_escolhido]

	informa_numero_de_letras(palavra_secreta)
	deseja_boa_sorte
	palavra_secreta.upcase
end


def salva_ranking(nome, pontos_totais)
	conteudo = "#{nome}\n#{pontos_totais}"
	File.write("rank.txt", conteudo)
end


def ler_ranking
	conteudo = File.read("rank.txt")
	conteudo.slpit("\n")	
end


def joga(nome)
	palavra_secreta = escolhe_palavra_secreta

	erros = 0
	chutes = []
	pontos_ate_agora = 0

	while erros < 5
		mascara = palavra_mascarada(chutes, palavra_secreta)
		chute = pede_chute_valido(chutes, erros, mascara)
		chutes << chute

		chutou_uma_letra = chute.size == 1
		if chutou_uma_letra
			informa_letra_chutada(chute)

			letra_procurada = chute[0]
			letras_encontradas = palavra_secreta.count(letra_procurada)

			if letras_encontradas == 0
				informa_erro
				pontos_ate_agora -= 30
				erros += 1
			else
				informa_letras_encontradas(chute, letras_encontradas)
			end
		else
			informa_palavra_chutada(chute)
			acertou = chute == palavra_secreta
			if acertou
				informa_acerto_palavra
				pontos_ate_agora += 100
				break
			else
				informa_erro
				pontos_ate_agora -= 30
				erros += 1
			end
		end
	end

	informa_pontuacao(pontos_ate_agora)
	pontos_ate_agora
end


def jogo_da_forca
	nome = da_boas_vindas
	pontos_totais = 0


	loop do
		pontos_totais += joga(nome)
		informa_pontos_totais(pontos_totais)
		salva_ranking(nome, pontos_totais)
		if not jogar_novamente
			break
		end	
	end
end


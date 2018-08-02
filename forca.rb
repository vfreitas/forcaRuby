require_relative 'ui'

def pede_chute_valido(chutes, erros)
	loop do
		chute = pede_chute(erros, chutes)
		if chutes.include?(chute)
			avisa_chute_repetido
		else
			return chute
		end
	end
end


def joga(nome)
	palavra_secreta = escolhe_palavra_secreta

	erros = 0
	chutes = []
	pontos_ate_agora = 0

	while erros < 5
		chute = pede_chute_valido(chutes, erros)

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
end



def jogo_da_forca
	nome = da_boas_vindas

	loop do
		joga(nome)
		if not jogar_novamente
			break
		end	
	end
end


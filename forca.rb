def joga(nome)
	palavra_secreta = escolhe_palavra_secreta

	erros = 0
	chutes = []
	pontos_ate_agora = 0

	while erros < 5
		chute = pede_chute(erros, chutes)
		if chutes.include?(chute)
			puts "Você ja chutou isso!"
			next
		end
		chutes << chute

		chutou_uma_letra = chute.size == 1
		if chutou_uma_letra
			puts "Você chutou a letra #{chute}!\n\n"

			letra_procurada = chute[0]
			letras_encontradas = palavra_secreta.count(letra_procurada)

			if letras_encontradas == 0
				puts "Que pena, você errou!"
				pontos_ate_agora -= 30
				erros += 1
			else
				puts "A letra #{chute} está'presente na palavra secreta #{letras_encontradas} vezes!"
			end
		else
			puts "Você chutou a palavra #{chute}!\n\n"
			acertou = chute == palavra_secreta
			if acertou
				puts "Parabéns, você acertou a palavra secreta!"
				pontos_ate_agora += 100
				break
			else
				puts "Que pena, você errou!"
				pontos_ate_agora -= 30
				erros += 1
			end
		end
	end

	puts "\n\n\nVocê terminou o jogo com #{pontos_ate_agora} pontos!"
end

nome = da_boas_vindas


loop do
	joga(nome)
	if not jogar_novamente
		break
	end	
end


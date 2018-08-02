def da_boas_vindas
	puts "Bem vindo ao jogo da forca!!\n\n"
	puts "Informe o seu nome:"
	nome = gets.strip
	puts "\nComeçaremos o jogo para você, #{nome}!\n\n"
	nome
end


def escolhe_palavra_secreta
	puts "Escolhendo palavra secreta..."
	palavra_secreta = "Programador"
	puts "A palavra secreta tem #{palavra_secreta.size} letras... "
	puts "Boa Sorte!\n\n"
	palavra_secreta.upcase
end


def jogar_novamente
	puts "Quer jogar novamente? S/N"
	jogar_novamente = gets.strip
	jogar_novamente.upcase == "S"
end


def pede_chute(erros, chutes)
	puts "\n\n"
	puts "Erros: #{erros}"
	puts "chutes: #{chutes}"
	puts "Informe agora uma letra ou uma palavra!"
	chute = gets.strip
	puts "Será que acertou?"
	chute.upcase
end


def joga(nome)
	palavra_secreta = escolhe_palavra_secreta

	erros = 0
	chutes = []
	pontos_ate_agora = 0

	while erros < 5
		chute = pede_chute(erros, chutes)
		chutes << chute

		chutou_uma_letra = chute.size == 1
		if chutou_uma_letra
			puts "Você chutou a letra #{chute}!"
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

	puts "Você terminou o jogo com #{pontos_ate_agora} pontos!"
end

nome = da_boas_vindas


loop do
	joga(nome)
	if not jogar_novamente
		break
	end	
end


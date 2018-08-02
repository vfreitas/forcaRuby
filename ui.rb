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

def avisa_chute_repetido
	puts "Você ja chutou isso!"
end

def informa_letra_chutada(chute)
	puts "Você chutou a letra #{chute}!\n\n"
end

def informa_erro
	puts "Que pena, você errou!"
end

def informa_letras_encontradas(chute, letras_encontradas)
	puts "A letra #{chute} está'presente na palavra secreta #{letras_encontradas} vezes!"
end

def informa_palavra_chutada(chute)
	puts "Você chutou a palavra #{chute}!\n\n"
end

def informa_acerto_palavra
	puts "Parabéns, você acertou a palavra secreta!"
end

def informa_pontuacao(pontos_ate_agora)
	puts "\n\n\nVocê terminou o jogo com #{pontos_ate_agora} pontos!"
end














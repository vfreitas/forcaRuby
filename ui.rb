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

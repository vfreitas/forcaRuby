def da_boas_vindas
	puts "Bem vindo ao jogo da forca!!\n\n"
	puts "Informe o seu nome:"
	nome = gets.strip
	puts "\nComeçaremos o jogo para você, #{nome}!\n\n"
	nome
end



def jogar_novamente
	puts "Quer jogar novamente? S/N"
	jogar_novamente = gets.strip
	jogar_novamente.upcase == "S"
end


def cabecalho_de_tentativas(erros, chutes, mascara)
	puts "\n\n"
	puts "Palavra: #{mascara}"
	puts "Erros: #{erros}"
	puts "chutes: #{chutes}"
end


def pede_chute
	puts "\nInforme agora uma letra ou uma palavra!"
	chute = gets.strip
	puts "Será que acertou?"
	chute.upcase
end


def	informa_pontos_totais(pontos_totais)
	puts "Pontos Totais = #{pontos_totais}"	
end


def avisa_campeao_atual (dados)
	puts "O campeao atual é #{dados[0]}, com #{dados[1]} pontos!"
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


def informa_escolhendo_palavra
	puts "Escolhendo palavra secreta..."
end


def informa_numero_de_letras(palavra_secreta)
	puts "A palavra secreta tem #{palavra_secreta.size} letras... "
end

def deseja_boa_sorte
	puts "Boa Sorte!\n\n"
end







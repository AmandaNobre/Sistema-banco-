algoritmo "banco_santa_luzia"
// Fun��o : Banco Santa L�zia
// Autor : Amanda Nobre
// Data : 09/10/2020
// Se��o de Declara��es
var
saldo, valor: real
nome, sobrenome, dest: caractere
op, conta, cont: inteiro
inicio
procedimento soma (x,y: inteiro; var result: inteiro)
inicio
result <- x + y
fimprocedimento
procedimento sub(x,y: inteiro; var result: inteiro)
inicio
result <- x - y
fimprocedimento
procedimento aguarde()
inicio
cont <- 0
escreva("Aguarde")
timer(200)
enquanto cont < 5 faca
   escreva(".")
   cont <- cont +1
fimenquanto
escreval("")
timer(0)
fimprocedimento

escreval("Bem vindo ao Banco Santa Luzia. Sua divida, nossa alegria!")
aguarde()
escreval("Escolha uma op��o: 1 - Criar conta || 2 - Sair")
leia(op)
se op = 1 entao
   escreval("Para criar uma conta digite seu nome:")
   leia(nome)
   escreval("agora digite seu sobrenome Sr(a) ", nome,":")
   leia(sobrenome)
   aguarde()
   conta <- RandI(10000000)
   escreval("Sr(a) ",nome," sua conta �: ",conta,", e sua ag�ncia � 0001")
   timer(1000)
   escreval("Ao abrir uma conta no Banco Santa Luzia voc� recebe R$250")
   saldo <- 250
   op <- 0
   enquanto op <> 5 faca
      aguarde()
      escreval("Escolha uma op��o:")
      escreval("1 - Depositar || 2 - Sacar")
      escreval("3 - Transferir || 4 - Ver saldo")
      escreval("5 - Sair")
      leia(op)
      escolha op
      caso 1
         valor <- 0
         escreval("Qual valor voc� quer depositar?")
         escreva("R$")
         leia(valor)
         soma(saldo, valor, saldo)
         aguarde()
         escreval("Seu saldo agora �: R$",saldo)
      caso 2
         valor <- 0
         escreval("Qual valor voc� quer sacar?")
         escreva("R$")
         leia(valor)
         sub(saldo, valor, saldo)
         aguarde()
         escreval("Seu saldo agora �: R$",saldo)
      caso 3
         valor <- 0
         escreval("Qual valor voc� quer transferir?")
         escreva("R$")
         leia(valor)
         escreva("Para qual conta?")
         leia(dest)
         sub(saldo, valor, saldo)
         aguarde()
         escreval("Voc� transferiu: R$",valor, " para", dest)
         escreval("Seu saldo agora �: R$",saldo)
      caso 4
         escreval("Seu saldo � R$", saldo)
      fimescolha
   fimenquanto
fimse
escreval("Banco Santa Luzia agradeece seu acesso, at� logo!")
fimalgoritmo

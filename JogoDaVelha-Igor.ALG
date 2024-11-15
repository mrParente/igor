Algoritmo "Jogo da Velha | Igor"

Var

   tabuleiro : vetor [1..3,1..3] de caractere
   p1,p2,i,j,jogada, contador: inteiro
   z : caractere
   vencedor : logico

procedimento jgDaVelha
inicio
   escreval(" ",tabuleiro[1,1], " | ", tabuleiro[1,2], " | " ,tabuleiro[1,3])
   escreval("---|---|---" )
   escreval(" ",tabuleiro[2,1], " | ", tabuleiro[2,2], " | " ,tabuleiro[2,3])
   escreval("---|---|---" )
   escreval(" ",tabuleiro[3,1], " | ", tabuleiro[3,2], " | " ,tabuleiro[3,3])
fimprocedimento

procedimento ganhador
var

inicio

   para j de 1 ate 3 faca
      i<-i+1
      se ((tabuleiro[i,j] = z)e(tabuleiro[i,j] = z)e(tabuleiro[i,j] = z)) entao
         vencedor<- verdadeiro
         escreval(z, " Ganhou")
      senao
         vencedor<- falso
      fimse
   fimpara


   para i de 1 ate 3 faca
      j<-j+1
      se ((tabuleiro[i,j] = z)e(tabuleiro[i,j] = z)e(tabuleiro[i,j] = z)) entao
         vencedor<- verdadeiro
         escreval(z, " Ganhou")
      senao
         vencedor<- falso
      fimse
   fimpara


   se (((tabuleiro[3,1] = "o")e(tabuleiro[2,2] = "o")e(tabuleiro[1,3] = "o"))ou((tabuleiro[3,3] = "o")e(tabuleiro[2,2] = "o")e(tabuleiro[1,1] = "o"))) entao
      vencedor<- verdadeiro
      escreval("O Ganhou")
   senao
      retorne falso
   fimse

   se (((tabuleiro[3,1] = "x")e(tabuleiro[2,2] = "x")e(tabuleiro[1,3] = "x"))ou((tabuleiro[3,3] = "x")e(tabuleiro[2,2] = "x")e(tabuleiro[1,1] = "x"))) entao
      vencedor<- verdadeiro
      escreval("X Ganhou")
   senao
      vencedor<- falso
   fimse
FimProcedimento
procedimento inserir

inicio
   para i de 1 ate 3 faca
      para j de 1 ate 3 faca
         se ((tabuleiro[i, j] ="x")ou(tabuleiro[i, j] ="o")) entao
            contador <- contador - 1
            escreval("Casa ocupada, jogue novamente")
         senao
            se (jogada = tabuleiro[i,j]) entao
               tabuleiro[i,j] <- z
               contador <- contador + 1
            fimse
         fimse
      fimpara
   fimpara

fimprocedimento
Inicio
   tabuleiro[1,1]<-"1"
   tabuleiro[1,2]<-"2"
   tabuleiro[1,3]<-"3"
   tabuleiro[2,1]<-"4"
   tabuleiro[2,2]<-"5"
   tabuleiro[2,3]<-"6"
   tabuleiro[3,1]<-"7"
   tabuleiro[3,2]<-"8"
   tabuleiro[3,3]<-"9"

   jgDaVelha()
   escreval("Deseja começar com qual simbolo ? 'x' ou 'o' ")
   leia(z)
   contador<-0
   repita
      se ((z="x")ou(z="o")) entao
         se (z="x") entao
            limpatela
            jgDaVelha()
            escreval("Vez do ", z)
            escreval("Em qual casa você irá jogar?")
            leia(jogada)
            inserir()
            ganhador()
         senao
            limpatela
            jgDaVelha()
            escreval("Vez do ", z)
            escreval("Em qual casa você irá jogar?")
            leia(jogada)
            inserir()
            ganhador()
         fimse
      senao
         Escreval("Esse Simbolo não existe")
      fimse
   ate((contador=9)ou(vencedor=verdadeiro))
Fimalgoritmo
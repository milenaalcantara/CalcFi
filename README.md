<h1 align='center' >CalcFi</h1>
<h4 align='center' >Calculadora de Financiamento</h4>

## Sobre
Esse projeto foi criado com o intuito de simular cálculos de financiamentos.

Os financiamentos realizados por bancos são normalmente baseados em tabelas, onde cada tabela contem suas particularidades. Neste projeto foram implementadas duas tabelas, PRICE e SAC.

- A tabela PRICE, mais popular na hora de concretizar algum financiamento, possui parcela fixa e amortização variável
- A tabela SAC, inversa a tabela anterior possui parcela variável, com valor decrescente, e amortização fixa.

Uma parte da população que adere ao financiamento, por muitas vezes não tem consciências dos detalhes por tras dos financiamentos, desconhecendo o funcionamento desse padrão de compra. O grande objetivo deste projeto é mostrar os valores, com mais riqueza de detalhes, por detrás do valor da parcela e dessa forma conscientizar o usuário que será um possível cliente de um financiamento.

## Funcionalidades
 
* Calcula valor da parcela total
* Calcula valor de juros por parcela
* Calcula valor amortizado por parcela 
* Calcula o saldo devedor por parcela
* Permite escolher entre a tabela PRICE e SAC
* Permite realizar novas simulações várias vezes

## Como utilizar o sistema

1. Em seu mac abra o terminal, vá até a pasta que deseja e clone o projeto digitando o seguinte comando:

```
git clone https://github.com/milenaalcantara/CalcFi.git
```

2. Entre no diretório do projeto com o comando abaixo:

```
cd CalcFi
```

3. Para utilizar as funcionalidades, ainda em seu terminal digite:

```
swift run CalcFi
```


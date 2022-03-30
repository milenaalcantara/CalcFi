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

### Passo a passo

1. Ao começar, o sistema será apresentado um menu iniciar com dua opções, 'Realizar uma nova simulação' e 'Finalizar o sistema'
2. Caso escolha a opção 'Realizar uma nova simulação', irá surgir um segundo menu, agora escolha qual tabela gostaria de usar para realizar seu financiamento.

** Obs.: Cada tabela possui influências diferentes em fins de cálculo. A tabela PRICE possui parcela fixa e amortização variável (crescente), já a tabela SAC é seu inverso, possui parcela variável (decrescente) e amortização fixa.

3. Após escolher sua tabela, será necessário fornecer alguns dados
 + O nome do bem que deseja financiar (escreva por extenso, ex: carro)
 + O valor, líquido, do bem que deseja financiar
 + A quantidade de parcelas que deseja para finalizar o pagamento do financiamento
 + A taxa de juros que será cobrado ao mes (em porcentagem, ex: 1,74%) 
4. Prontinho, o sistema retornará os valores calculados abaixo:
 + O valor de cada parcela (valor de juros + valor da amortização)
 + O valor que você pagará de juros em cada parcela (esse valor está embutido no valor da parcela)
 + O valor que você pagará de amortização em cada parcela (esse valor está embutido no valor da parcela)
 + O saldo devedor, que é o valor que você ainda estará devendo o banco após o pagamento da parcela.
5. Logo após os dados acima, aparecerá novamente o menu inicial, escolha sua opção e aproveite.



<h6 align='center' >Obrigada por chegar até aqui, espero que seja útil para você!</h6>
<h6 align='center' >By Milena Alcântara ❤️</h6>

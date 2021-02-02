# Anova de Medidas Repetidas
 
É uma função para o matlab. A função vai calcular o Anova de Medidas Repetidas.


## Para que serve o Anova?

O modelo de avaliação de um determinado estudo deve ser definido precocemente, durante a elaboração do projeto, de forma que o desenho favoreça a análise e interpretação de dados. Em estudos utilizando pessoas é frequentemente encontrado diferentes grupos com diferentes valores médios e condições de estudo para análise clínica. Nesse cenário o método estatístico ANOVA avalia a variação relativa entre as médias dos grupos comparado com a variação média de determinado grupo. 

Quando cada grupo de um ou mais fatores são medidos por um mesmo objeto ou pessoa, o mesmo avaliador contribuiu com dados para cada grupo, então é utilizado o ANOVA de medidas repetidas. Para calcular a variância do estudo, é necessário obter algumas informações estatísticas acerca do mesmo, como os graus de liberdade, por exemplo (todas essas caracteristicas estão sendo calculadas automaticamente no código.

Ex: 50 pessoas tomam um determinando remédio durante 5 dias seguidos. Como são as mesmas pessoas que fazem o teste durante um periodo de 5 dias. Para saber se a variância entre os dados esta coesa ou há algum fator externo que possa ter influênciado na estatistica, é utilizado o Anova de medidas repetidas.


## Como quantificar se o meu valor do Anova é bom ou ruim?

O valor obtido pelo Anova é o 𝐹𝑜𝑏𝑠𝑒𝑟𝑣𝑎𝑑𝑜 que é o valor de referência utilizado para quantificar a variação entre os grupos de amostras. Caso a hipótese de baixa variância entre os grupos seja verdadeira, o 𝐹𝑜𝑏𝑠𝑒𝑟𝑣𝑎𝑑𝑜 terá a distribuição semelhante ou pouco maior entre 𝑑𝑓𝑒𝑛𝑡𝑟𝑒_𝑔𝑟𝑢𝑝𝑜𝑠 e 𝑑𝑓𝑒𝑟𝑟𝑜. Caso haja uma variância significativa, esperas-se um 𝑀𝑄𝑒𝑛𝑡𝑟𝑒_𝑔𝑟𝑢𝑝𝑜𝑠 muito maior que 𝑀𝑄𝑒𝑟𝑟𝑜. Para comparar a variância obtida pelo ANOVA é utilizada a distribuição de F de Fisher/Snedecor (𝑓(𝑝)). 

No qual 𝑝 = valor de erro aceitável em decimais (exemplos: se a confiabilidade é de 95%, então o erro é de 5%, portanto p = 0,05). O p-valor, comumente adotado pela literatura para pesquisas envolvendo áreas médicas é de 0,05.

Existe uma tabela pronta ja com os valores para a distribuição de F de Fisher/Snedecor. Porém é uma tabela para cara p utilizado. Devido aenorme quantidade de tabelas, eu não anexei aqui, pois seriam muitas, mas muitas tabelas para atender a necessidade de todos. Porém, para encontrar a sua tabela, eu recomendo que pesquise (pode ser no google imagens mesmo) a tabela da distribuição de F de Fisher/Snedecor usando o p escolhido para o seu trabalho.

Ao mensurar a variável 𝐹(𝑜𝑏𝑠𝑒𝑟𝑣𝑎𝑑𝑜) do ANOVA é possível destacar duas hipóteses: a hipótese nula e a hipótese alternativa.

• Hipótese nula (𝑯𝟎): é quando o 𝐹(𝑜𝑏𝑠𝑒𝑟𝑣𝑎𝑑𝑜) está abaixo do valor de F-crítico, ou seja, há uma variação entre grupos abaixo do p-valor estimado.

• Hipótese alternativa (𝑯𝟏): é quando o valor encontrado pelo ANOVA 𝐹(𝑜𝑏𝑠𝑒𝑟𝑣𝑎𝑑𝑜) é superior ao valor do de F-crítico, deste modo significa que há uma variação entre grupos acima do p-valor adotado.

## Como usar?

f = 𝐹𝑜𝑏𝑠𝑒𝑟𝑣𝑎𝑑𝑜

x = conjunto de dados (variavel que possui linha por colunas).
Usando o exemplo mencionado acima, as linhas são as pessoas que participaram da pesquisa e as colunas são os dias que elas tiveram que tomar um remédio.

Exemplo:

![Exemplo de conjunto de dados](https://github.com/Arthurmgwork/Anova-de-Medidas-Repetidas/blob/main/Exemplo%20de%20dados.JPG)

f = rmanova(x)




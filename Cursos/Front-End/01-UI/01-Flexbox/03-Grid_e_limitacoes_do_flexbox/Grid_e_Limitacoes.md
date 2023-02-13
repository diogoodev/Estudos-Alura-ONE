# Arrumando o grid principal do projeto

Vamos organizar o mapa dos cursos, seguindo os processos já aprendidos, identificamos o elemento pai do que queremos posicionar, no caso`conteudoPrincipal-cursos` e adicionamos o `display: flex;` nele.

```css
.conteudoPrincipal-cursos
display: flex;
```

Aqui encontramos um problema o nosso elemento li não consegue calcular o próprio tamanho, isso ocorre poque sua margem está definida como 0px e com o position absolute ativado, como o position retira os objetos do fluxo principal obtemos esse erro. Para resolver vamos precisar retirar o position e inserir um tamanho pro li manualmente isso por que ao retiramos o position o li ainda não consegue calcular o espaço que será usado. Então temos:

```css
.conteudoPrincipal-cursos-link {
  width: 20%;
}
```

Mesmo definido o tamanho ainda não conseguimos o resultado esperado isso porque precisamos que ocorra a quebra de linha, para isso vamos o usar o flex-wrap no elemento pai.

```css
.conteudoPrincipal-cursos {
  display: flex;
  flex-wrap: wrap;
}
```

Agora precisamos definir uma espaçamento entre os items como temos 4 elementos 100% : 4 = 25% . Então adicionamos o width nos links.

```css
.conteudoPrincipal-cursos-link {
  width: 23%;
}
```

Vamos usar o `justify-content: space-beetween` no elemento pai e assim conseguimos um espaço por igual horizontalmente e usando `margin-bottom: 1%` conseguimos um espaço vertical entre os itens.

```css
.conteudoPrincipal-cursos-link {
  width: 23%;
  margin-bottom: 1%;
}
```

Apos isso veremos que temos um problema na ultima linha dos cursos como resolver?

## vale conferir

Propriedades do justfy-content:

`justify-content: flex-start`: Coloca todos os elementos alinhados lado a lado a esquerda
`justify-content: flex-end`:Coloca todos os elementos alinhados lado a lado a direita.
`justify-content: center`:Coloca todos os elementos alinhados ao centro.

Dica: Evitar usar o justify quando se está construindo um grid com flexbox. Isso porque elas colocam comportamentos que não são legais para grids. Tanto space-between quanto space-around deixariam super estranha a última linha do grid caso essa tivesse menos elementos do que o total de elementos por linha.

### Uso do :nth-child()

Usamos esse pseudo seletor para remover espaços desnecessários em nossos elementos.

```css
.course:nth-child(3n) {
  margin-right: 0;
}
```

```css
.course:nth-child(3n + 1) {
  margin-left: 0;
}
```

### O projeto até aqui

[Clique aqui](index.html) e veja como está ficando o nosso projeto.

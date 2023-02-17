# Revisão

Para falar para um elemento / flex item crescer e ocupar todo o espaço que está sobrando dentro do flex container devemos usar a propriedade flex-grow.

Para fazê-lo crescer podemos escrever o seguinte código CSS:

```css
.flex-item {
  flex-grow: 1;
}
```

Podemos colocar o valor 1 para que esse elemento ocupe todo o espaço. Mais a frente veremos como funciona direito esse valor.
A propriedade flex-grow ajuda muito caso queiramos que um elemento ocupe toda a largura restante do flex container.

Por exemplo, se temos:

Elemento 1: 200 px.

Elemento 2: 200 px.

Espaço vazio que sobrou do flex container: 600 px.

Total: 1000 px.

Se colocamos flex-grow: 1 no primeiro elemento, ele passa a ter 800 px de largura, ou seja:

Espaço vazio + Elemento 1: 800 px.

E o segundo elemento continua tendo 200 px de largura.

Agora, se colocarmos flex-grow: 1 nos dois elementos, o que aconteceria? Qual tamanho ficaria o elemento 1? E o elemento 2?

Nesse caso o elemento 1 ficaria com 500px e o elemento 2 com 500px. Por conta do funcionamento do flex-grow.

## Exercícios

### [02](exercicio02.css)

No exercício 02 quando a largura da tela chega a 800 px, os elementos mantém 200 px de largura cada um preenchendo todo o espaço da tela, porém, o que acontece com a largura dos flexItem quando diminuímos a tela para por exemplo 600 px?

Nesse casos todos os flexItem diminuem por igual ficando com width de 148.

O que acontece com a largura deles também quando aplicamos o seguinte CSS no nosso código?

```css
.flexItem:first-child {
  flex-shrink: 2;
}
```

Nesse caso o primeiro item irá diminuir na proporção 2x1, fazendo com que ele fique menor antes dos outros filhos, o espaço restante é distribuído igualmente entre os itens.Fica
2 + 1 + 1 + 1 = 5. Isso pois no primeiro item colocamos flex-shrink:2.

Como diminuímos 200 px do tamanho total, o navegador pega esse valor e divide pelo total de flex-shrink. Fica: 200 px : 5 = 40 px.

Dessa forma o navegador tira 2 partes do primeiro elemento 200px - 80px = 120px e tira 1 parte dos demais, ou seja: 200 px - 40 px = 160 px

### Flex-basis

A propriedade flex-basis serve para definir uma largura ou altura para o flex item. Se o flex container tiver com `flex-direction: column`, o flex-basis no flex item servirá para definir uma height. Caso o `flex-direction: row`, ele funciona como um width.

### Shorthand

Podemos usar apenas uma propriedade para representar aos propriedades flexbox, usamos a propriedade flex.

```css
flex: 1 1 300px;
```

A ordem dos valores é:

flex-grow, flex-shrink, flex-basis.

### Invertendo a ordem de todos os elementos

```css
.conteudoPrincipal-cursos {
  display: flex;
  flex-wrap: wrap-reverse;
}
```

Quando usamos o wrap-reverse tudo que estava em baixo vai para cima! Ele inverte a ordem das **linhas**!

```css
.conteudoPrincipal-cursos {
  display: flex;
  flex-wrap: wrap;
  flex-direction: row-reverse;
}
```

Usando o row-reverse ele inverte a ordem dos **elementos nas linhas**.

Podemos usar também `flex-direction: column-reverse` nos casos em que usamos `flex-direction: column`. Ele inverterá a ordem!

### Propriedades extra:

**align-self**: Essa propriedade é aplicada ao **flex item** e faz com que ele se **_alinhe individualmente_**.
Usamos o align-items no flex container, o align-self faz a mesma coisa, só que alinha um único elemento e é colocada no flex item.

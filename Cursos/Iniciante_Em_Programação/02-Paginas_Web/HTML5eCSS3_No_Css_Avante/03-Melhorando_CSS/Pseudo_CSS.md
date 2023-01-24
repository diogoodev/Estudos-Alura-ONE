# Pseudo Classes no CSS

Já vimos alguns pseudo-elementos e sabemos que eles são usados para marcar e adicionar comportamentos em nosso site. Alguns que já vimos:
`:hover`
`:active`
`:visited`
`:required`

## Entendendo seleção de elementos específicos

Temos três formas de selecionar elementos específicos:

`:first-child`
`:last-child`
`:nth-child()`

Vamos entender melhor como cada uma delas se comportam.

Quando usamos a combinação de uma classe e o pseudo-elemento `:first-child` no css, as alterações serão aplicadas ao primeiro elemento filho da lista, da div e etc.
Escrevemos assim:

```css
.itens:first-child {
  font-weight: bold;
}
```

Nesse caso o primeiro item estará em negrito ao carregarmos o navegador.
O que fizemos aqui foi via css marcar um elemento.

Outro pseudo-elemento que temos é o `:last-child`. Este irá marcar o ultimo item da lista, ou seja facilita a vida pois não precismos saber quantos elementos aquela lista tem. Por exemplo:

```css
.itens:last-child {
  font-weight: bold;
}
```

E por ultimo temos o `:nth-child()`, através dele podemos selecionar qualquer elemento da lista. No exemplo abaixo deixamos o quarto elemento da lista.

```css
.itens:nth-child(4) {
  font-weight: bold;
}
```

Temos ainda a opção de escolher somente os elementos pares da lista, basta escrever da seguinte forma:

```css
.itens:nth-child(2n) {
  font-weight: bold;
}
```

## Degradê no CSS

### Gradiente Linear

No formato linear(linear-gradient), o degradê ocorre de forma linear, podemos definir o grau que queremos e o próprio css irá lidar com a disposição das cores.
Alguns exemplos:

Aqui a transição ocorrerá do laranja para o azul, como dissemos, o próprio CSS cuida disso.

```css
background: linear-gradient(orange, blue);
```

Vale notar que podemos usar quantas cores quisermos, dentro do mesmo parênteses, separando as cores por vírgulas.

```css
background: linear-gradient(orange, blue, red, black);
```

Uma propriedade importante é que você pode escolher qual o grau a linearidade terá.

```css
background: linear-gradient(45deg, orange, blue, red, black);
```

Outra propriedade é a possibilidade de escolher quanto determinada cor irá preencher no nosso gradiente.

```css
background: linear-gradient(45deg, orange 50%, blue, red, black);
```

### Gradiente Radial

Na opção radial (radial-gradient), o degradê formado terá o formato de círculo. No radial-gradient não temos a possibilidade de escolher o grau, mas ainda podemos escolher quanto determinada cor irá ocupar.

```css
background: radial-gradient(orange 50%, blue, red, black);
```

## Pseudo-elementos

Entendendo melhor os pseudo-elementos:

- **Como marcar a primeira _letra_ de um parágrafo/elemento?**

  - Para isso vamos usar o pseudo-elemento `:fist-letter`

  ```css
  .titulo-principal:first-letter {
    font-weight: bold;
  }
  ```

  Com isso conseguimos deixar a primeira letra da nossa classe `.titulo-principal` em negrito.

- **Como marcar a primeira _linha_ de um parágrafo/elemento?**

  - Podemos estilizar mais podemos adicionar um estilo itálico, por exemplo, a primeira linha de um parágrafo usando o pseudo-elemento `:first-line`:

  ```css
  .p:first-line {
    font-style: italic;
  }
  ```

- **Como modificar antes e depois de um elemento?**

  - Para fazermos alterações antes de um elemento do HTML, usamos o pseudo-elemento `:before`
  - Para fazermos alterações depois de um elemento do HTML, usamos o pseudo-elemento `:after`
    Para exemplificar:

  ```css
  .titulo-principal:before {
    content: '[';
  }
  .titulo-principal:after {
    content: ']';
  }
  ```

  Nesse caso, vamos adicionar um colchete antes e depois do conteúdo da classe`.titulo-principal`. Quando fazemos isso, tornamos os colchetes não selecionáveis pelo mouse, pois trata-se apenas de uma informação visual e não um conteúdo manipulável.
  Importante dizer que esses elementos criam espaços onde o CSS será usado.

### Resumindo

O que fizemos e aprendemos:

- Melhoramos ainda mais a semântica da página com novas divisões, classes, etc
- Conhecemos novas pseudo-classes
- Aprendemos a aplicar um background gradiente na página
- Conhecemos pseudo-elementos
  Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_No_Css_Avante/03-Melhorando_CSS/index.html)

```

```

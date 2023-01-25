# Opacidade e Sombra

A opacidade é uma camada adicional sobre a imagem que bloqueia a luz de chegar no elemento, como se fosse uma película com diferentes níveis.

## A propriedade `opacity`

No CSS, a propriedade "opacity" recebe valores entre 0 e 1, onde 0 deixará o elemento totalmente oculto.
Exemplo:

```css
.imagem-beneficios {
    width: 60%
    opacity: 0.3;
}
```

Nesse caso, a classe terá 30% de opacidade. Isso nos permite fazer boas dinâmicas, como integrar diferentes camadas ou ainda causar um efeito quando o mouse estiver sobre um elemento. Exemplo:

```css
.imagem-beneficios:hover {
  opacity: 1;
}
```

Combinando com o recurso "transition", temos um resultado ainda melhor.

```css
.imagem-beneficios {
    width: 60%
    opacity: 0.3;
    transition: 400ms;
}
```

### Opacidade diretamente nas cores

Quando usamos o padrão de cores rgba, temos a possibilidade de adicionar opacidade, basta adicionar valor na camada alpha.

Fica assim:

```css
.elemento {
  color: rgba(0, 0, 0, 0.3);
}
```

E esse padrão pode ser usado para todas as cores: background, texto, borda e outras.

Reforçando: Todos os elementos e todas as cores podem ter uma camada de opacidade.

## Sombras

Podemos pensar na sombra como um efeito de luz que utilizamos em um elemento.

### A propriedade `box-shadow`

É com a propriedade `box-shadow` que vamos aplicar esse efeito de sombra. Para usá-la, podemos definir o x, y e uma cor. Ficando assim:

```css
.imagem-beneficios{
  width: 60%
  opacity: 1;
  transition: 400ms;
  box-shadow: 10px 10px #000000;
}
```

Podemos ainda aplicar um "desfoque" usando a propriedade blur. Quanto maior o px, mais desfocado ficará a sombra. Pois o que ocorre é um "espalhamento" de pixels do sólido para o transparente.

```css
.imagem-beneficios{
  width: 60%
  opacity: 1;
  transition: 400ms;
  box-shadow: 10px 10px 5px #000000;
}
```

Também conseguimos definir o tamanho da sombra projetada, basta adicionar um quarto valor. Ficando assim:

```css
.imagem-beneficios{
  width: 60%
  opacity: 1;
  transition: 400ms;
  box-shadow: 10px 10px 5px 20px #000000;
}
```

Nesse caso, aumentamos o tamanho da sombra em 20px.

#### Tres sombras no mesmo elemento

Para adicionar mais uma sombra no elemento, adicionamos valores negativos em x e y e mudamos a propriedade da cor.

```css
.imagem-beneficios{
  width: 60%
  opacity: 1;
  transition: 400ms;
  box-shadow: 10px 10px 5px 20px #00000, -10px -10px yellow;
```

Aqui a segunda sombra será amarela.
Novamente conseguimos adicionar outra sombra, adicionando um formato de cor diferente.

```css
.imagem-beneficios{
  width: 60%
  opacity: 1;
  transition: 400ms;
 box-shadow: 10px 10px 5px 20px #00000, -10px -10px yellow, -20px 20px rgba(255,0,0,0.5);
}
```

##### Sombras internas

Utilizando o box-shadow, conseguimos adicionar sombra interna usando o inset:

```css
.beneficios {
  padding: 3em 0;
  background: #888888;
  box-shadow: inset 0 0 30px #ff0000;
}
```

Aqui temos: Sombra interna, vermelha, com 30px de espalhamento.
Isso faz com que o posicionamento da sombra comece a partir do centro do elemento que selecionamos, por isso, para fazer efeito precisamos criar um espaçamento.

### Sombra em textos

#### A propriedade `tex-shadow`

Usamos a propriedade `tex-shadow` para adicionar uma sombra em determinado elemento.
Ficando assim:

```css
.titulo-principal {
  text-align: center;
  font-size: em;
  margin: 0 0 1em;
  clear: left;
  text-shadow: 2px 2px #ff0000;
}
```

## Resumindo

O que fizemos e aprendemos:

- Aplicamos a propriedade CSS opacity para manipular a opacidade dos elementos
- Utilizamos a propriedade opacity para manipular a opacidade das cores
- Adicionamos um sombreamento em volta dos elementos com a propriedade CSS box-shadow
- Adicionamos um sombreamento em textos com a propriedade CSS text-shadow

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_No_Css_Avante/05-Opacidade_Sombra/index.html)

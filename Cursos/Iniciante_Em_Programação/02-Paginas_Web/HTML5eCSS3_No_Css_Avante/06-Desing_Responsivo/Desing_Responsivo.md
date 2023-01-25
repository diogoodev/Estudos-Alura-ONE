# A Meta tag responsiva

Usamos a tag `<meta>`, mas dessa vez com propriedade e valor `name="viewport"` embutidas. Queremos, ainda, saber a largura do dispositivo, e para isso usaremos a propriedade content com o valor `width=device-width`.

## media queries

Uma das formas de deixarmos o layout responsivo é com media queries, para tornar o nosso site responsivo vamos usar o valor de 450px. Basicamente vamos perguntar ao navegador qual o tamanho da tela e com base nisso passaremos as modificações e o navegador irá aplicar.
Utilizaremos o `@media`, com o valor do tipo de tela `screen` e a pesquisa.

```css
@media screen and (max-width: 480px) {
  body {
    background: red;
  }
}
```

Nesse caso, em telas menores que 480px de largura ele irá aplicar um background vermelho.

## Adaptando os elementos para celular

Quando estamos tabalhando com responsividade precisamos selecionar exclusivamente o que queremos modificar.
Vamos deixar todas as "caixas" com altura auto:

```css
@media screen and (max-width: 480px) {
  .caixa,
  .principal,
  .conteudo-beneficios,
  .mapa-conteudo,
  .video {
    width: auto;
  }
}
```

Precisamos deixar o video com width 100%
Também precisamos deixar o texto do h1 centralizado

```css
h1 {
  text-align: center;
}
```

Vamos fazer com que o menu fique estático novamente.

```css
nav {
  position: static;
}
```

Posicionaremos a lista e a imagem de uma forma melhor

```css
.lista-beneficios,
imagem-beneficios {
  width: 100%;
}
```

## Resumindo

O que fizemos e aprendemos:

- Design responsivo: como ajustar o estilo da nossa página de acordo com o tamanho da tela do dispositivo que a acesse
- Meta tag de Viewport
- Media Queries

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_No_Css_Avante/06-Desing_Responsivo/index.html)

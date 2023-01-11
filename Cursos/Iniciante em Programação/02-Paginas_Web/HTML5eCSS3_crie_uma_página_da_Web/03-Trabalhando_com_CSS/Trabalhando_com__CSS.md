# CSS

Existem tres formas de colocarmos o CSS em uma pagina html.

## Forma 1 - CSS inline

-CSS inline : Na linha da tag, adicionamos a propriedade css;

- Primeiramente para aumentar o tamanho do texto utilizando o CSS diretamente no html podemos usar a propriedade style dentro de uma tag:

```html
<p style="font-size: 20px">Texto</p>
```

- Para alinhar o texto usamos a propriedade:

```html
<p style="text-align: center">Texto</p>
```

- Para alterar a cor do texto, podemos utilizar a propriedade "color":

```html
<p style="color: red">Texto</p>
```

Obs: O caractere : serve para atribuir um valor a uma propriedade.

## Forma 2 - Estilização na mesma página

A segunda forma é usar a estilização inserindo a tag style na head do arquivo html.

## Forma 3 - Arquivo externo

A terceira é a partir de um arquivo externo.

Normalmente o nome do arquivo externo utilizado é style.css

Só com um arquivo externo, e fazendo referência a esse arquivo, podemos usar o mesmo CSS em páginas diferentes.

Para utilizar o arquivo externo precisamos adicionar a tag link no head:

```html
<link rel="stylesheet" href="style.css" />
```

- A tag link tem a função de relacionar o arquivo html com outro arquivo externo
- No caso o atributo rel, vem de relacionamento, essa parte informa o tipo de função que estamos importando. O "stylesheet" significa folhas de estilo, outros tipo de rel são "alternate", "author", "bookmark", "icon" e outros.
- O href, vem de referencia, indica onde está o arquivo que será importado, podendo ser local ou de outra parte da internet.

- Para adicionarmos um cor de fundo podemos usar a propriedade background:

```css
body {
  background: #cccc;
}
```

- Assim aplicamos uma cor ao body do html.

- Definido a cor do texto que está na tag strong

```css
strong {
  color: #red;
}
```

- Podemos ser mais específicos na marcação, podemos definir a cor do texto que está dentro da tag em e na tag strong

```css
em strong {
  color: #red;
}
```

### CSS Cascata

- Por ser em estilo cascata a alteração feita no elemento pai irá refletir no elemento filho.

#### Cores no css

- Basicamente podem ser representadas por Hexadecimal, RGB e com os nomes das cores.
- Ex: vermelho, pode ser red, #FF0000, rgb(255,0,0).

### Resumindo

Aprendemos:

- A mexer na apresentação dos textos
- No alinhamento deles `(text-align)`
- No tamanho da fonte `(font-size)`
- Na cor de fundo `(background)`
- Na cor do texto `(color)`
- CSS inline
  Na linha onde temos a nossa tag, adicionamos a propriedade do CSS
- A tag `<style>`
  Dentro da tag, podemos colocar marcações de CSS referentes aos elementos que temos no nosso HTML
- A apresentação do CSS com um arquivo externo
- Como funciona o estilo em cascata do CSS
- Como importar um arquivo externo de CSS dentro da nossa página HTML
- Como representar cores no CSS
  Através do nome da cor
  Através do seu hexadecimal
  Através do seu RGB

Você pode conferir o resultado [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_crie_uma_p%C3%A1gina_da_Web/03-Trabalhando_com_CSS/trabalhando_css.html)

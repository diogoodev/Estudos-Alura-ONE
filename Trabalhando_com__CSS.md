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

A segunda forma é usar a estilização em cada tag na propriedade style, no mesmo arquivo html.

## Forma 3 - Arquivo externo

A terceira é a partir de um arquivo externo.

Normalmente o nome do arquivo externo utilizado é style.css

Para utilizar o arquivo externo precisamos adicionar a tag link no head:

```html
<link rel="stylesheet" href="style.css" />
```

- A tag link tem a função de relacionar o arquivo html com outro arquivo externo
- No caso o atributo rel, vem de relacionamento, essa parte informa o tipo de função que estamos importando. O "stylesheet" significa folhas de estilo, outros tipo de rel são "alternate", "author", "bookmark", "icon" e outros.
- O href, vem de referencia, indica onde está o arquivo que será importado, podendo ser local ou de outra parte da internet.

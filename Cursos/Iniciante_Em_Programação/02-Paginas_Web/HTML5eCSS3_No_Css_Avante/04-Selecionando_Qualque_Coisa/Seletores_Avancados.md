# Seletores Avançados

Basicamente uma forma específica de fazermos seleção de elementos de maneira mais rebuscada.

## O sinal `>`

Podemos selecionar os filhos diretos de um seletor, para tanto, utilizaremos o sinal `>`, no css. Por exemplo podemos selecionar todo os parágrafos que são filhos diretos de main. Ficaria assim:

```css
main > p {
  color: red;
}
```

Com isso evitamos de selecionar outros elementos `<p>` que não sejam filhos de `<main>`

## O sinal `+`

Como selecionar o primeiro parágrafo que sucede uma imagem?

Para isso vamos usar o sinal `+` no css, precisamos ter um elemento ancora no caso o img. Ficaria assim:

```css
img + p {
  color: blue;
}
```

Desse forma garantimos que estamos selecionando o paragrafo que vem logo depois da imagem! Ou seja selecionamos o elemento irmão de img. Também garantimos que outros elemento p não serão afetados.

## O sinal `~`

O seletor `~` permite selecionarmos todos elementos irmãos subsequente a um determinado elemento.
Para selecionar todos os parágrafos localizados depois de uma imagem usamos o seletor `~`.

```css
img ~ p {
  color: yellow;
}
```

Assim evitamos de selecionar parágrafos anteriores a imagem.

## Excluir a seleção de um elemento `:not`

Podemos excluir todos os elementos que não compõe um determinado elemento fazendo uso do seletor :not. Por exemplo:

```css
.principal p:not(#missao) {
  background: orange;
}
```

Nesse caso vamos colocar o background laranja em todos os parágrafos que estão dentro da classe principal. Todos os parágrafos dentro da id="missão" serão mantidos com a estilização anterior.

### Resumindo

O que fizemos e aprendemos:

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_No_Css_Avante/04-Selecionando_Qualque_Coisa/index.html)

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

### Combinado as seleções

Dado:

```html
<h2></h2>
<section>
    <h2>
    <p>
    </p>
    <h2>
</section>

```

Para selecionar o último h2 podemos fazer uso da combinação de seletores.

```css
section > p + h2 {
  background: yellow;
}
```

Isso é possível pois o último h2 é filho direto da section e irmão do p.

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

## Cálculos dinâmicos de posicionamento de elementos no CSS

Fazemos cálculos dinâmicos para tornar determinados elementos do nosso site mais responsivo.

### A propriedade `calc()`

Usamos o `calc` para definir as medidas de forma que elas se mantenham as mesmas em diferentes tipos de dispositivos. O cálculo que desejamos realizar é escrito entre parênteses, onde inserimos o primeiro valor, o tipo de operação e o resultado esperado.

```css
.utensilios {
  width: calc(40% - 26px);
  float: left;
  margin: 0 20px 20px;
}
```

Dessa forma garantimos que a classe utensílios terá 350px de largura.
Também podemos adicionar outras variações no cálculo conforme a nossa necessidade. Por exemplo:

```css
.utensilios {
  width: calc(40% - (26px * 4));
  float: left;
  margin: 0 20px 20px;
}
```

#### Verificando

- Como usar as medidas proporcionais para deixar um elemento de 100% de largura com o equivalente a um terço do elemento pai, menos 10px?
  Podemos fazer de uma forma mais complexa e de uma forma mais simples.
  - width: calc( (100% / 3) - 10px))
  - width: calc( 33% - 10px )

### Resumindo

O que fizemos e aprendemos:

- Seletores avançados.
- Como fazer contas com CSS, com a propriedade `calc`.

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_No_Css_Avante/04-Selecionando_Qualque_Coisa/index.html)

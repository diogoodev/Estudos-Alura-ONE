# Listas e divisões de conteúdos

## Listas

- Ordenadas:

  A ordem dos itens não pode ser alterada

```html
<ol>
  <li>1</li>
  <li>2</li>
  <li>3</li>
</ol>
```

- Não ordenadas

  A ordem é flexível, e não altera o resultado final.

```html
<ul>
  <li>b</li>
  <li>c</li>
  <li>f</li>
</ul>
```

### Classes no css

- Usamos classes quando queremos aplicar um mesmo estilo para diferentes elementos, a class serve para replicarmos a aplicação do nosso CSS, sem precisar copiar e colá-lo em vários elementos.

```css
.itens {
  font-style: italic;
}
```

### Divisões de conteúdo

- Para isso podemos usar a tag `<div>`

```html
<div>conteúdo 1</div>
<div>conteúdo 2</div>
```

### Conteúdos block e inline

- Em elementos que tenham a propriedade block por padrão ele ocupara todo espaço que estiver disponível para ele, conseguimos definir a sua largura e altura, e conseguimos posicionar usando margin. Para posicionar esse elemento podemos usar a margin, desde que ele esteja dentro de um contêiner ou melhor que tenha definido o seu width, e com isso conseguimos deslocar esse elemento.
  Posicionando a direita: Podemos usar a `margin: auto;` pois com isso combinamos os dois elementos e suas propriedades. Assim o objeto que estamos posicionando será jogado todo para direita.
  Posicionando ao centro: Podemos usar `margin-right: auto;` e `margin-right: auto;` pois com isso combinamos os duas margens automáticas jogando o objeto para o centro da tela. Lembrando que precisamos ter o width definido se não não funcionará.

  Veja um exemplo [aqui](https://codepen.io/BuggyJS_/pen/mdjWzmz).

```css
img {
  display: block;
}
```

- Já nos elementos inline, não é possível alterar o espaçamento interno e externo deles. Ou seja o width e height não irão funcionar e os objetos ganharam propriedades de palavras. Para posicionar elementos inline, podemos usar a propriedade text-align em um elemento pai.

Veja um exemplo [aqui](https://codepen.io/BuggyJS_/pen/wvxJYvR).

```css
ul {
  display: inline;
}
```

- Elementos inline-block, bloqueia o conteúdo e permite a alteração do espaçamento. Ou seja combinam as propriedades de inline e de block. Assim podemos posicionar tanto usando `margin` como usando o `text-align: justify` (esse com uma pequena gabiarra usando o after para adicionar uma linha extra). Esse elemento permite muita flexibilidade na hora de montar e posicionar os elementos com css.

- Podemos aplicar essa propriedades usando o display para isso:

```css
ul {
  display: inline-block;
}
```

Exemplo de uso do display: inline-block; posicionando elementos em diferentes locais da tela, mantendo a sua altura e largura no processo.
Veja [aqui](https://codepen.io/BuggyJS_/pen/PoBpxPw?editors=0100)

#### Resumindo

Aprendemos:

- A trabalhar com listas não-ordenadas e listas ordenadas
  Para cada um dos itens da lista, utilizamos a tag `<li>`
- O conceito das classes no CSS
  Elas servem para marcar itens, que são repetíveis
- Como referenciar uma classe no CSS
- Divisões de conteúdo, utilizando a tag `<div>`
- Os comportamentos inline e block.

Veja como está ficando nosso projeto [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_crie_uma_p%C3%A1gina_da_Web/05-Lista_Divisoes_Conteudo/Lista_divisoes_Conteudos.html)

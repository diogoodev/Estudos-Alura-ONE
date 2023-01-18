# Divisões semânticas

Vimos anteriormente que a tag `<header>` identifica o espaço onde iremos colocar o nosso cabeçalho.
Agora temos a tag `<main>` que identifica o espaço onde colocaremos o nosso conteúdo principal, as parte mais relevante para o usuário. Ela também ajuda os leitores de tela a identificar e priorizar o conteúdo mais importante da tela.

As tags semânticas fazem com que o navegador entenda melhor o nosso conteúdo, e com isso carregue melhor a nossa página.

## Lista complexa

Podemos colocar elementos na nossa lista e deixa-la complexa. Como por exemplo:

```html
<li>
  <h2>Cabelo</h2>
  <p>R$ 40,00</p>
</li>
```

Um item de lista, em uma lista complexa, pode ter qualquer conteúdo

### Outra forma de alinhar inline-block

```css
.produtos li {
  display: inline-block;
  text-align: center;
  vertical-align: top;
  width: 30%;
  padding: 50px 0;
}
```

Vimos em notas anteriores como poderíamos usar os elementos display. Relembrando no caso o `display: inline-block;` permite que os elementos sejam alinhados lado a lado como no `inline` e permite que seja alterado a altura e largura, como no `block`. Aqui temos alguns pontos a notar, estamos usando uma ul com width de 940px, por isso usamos o width aqui de 30% assim conseguimos dividir os nossos 3 produtos de forma mais igualitária na tela. Casos houvesse outros elementos usaríamos um width diferente. Também usamos o vertical-align, para que ficasse alinhado pela linha de cima, deixando o layout mais harmônico e como o text-align alinhamos os elementos no centro da `<li>`

### Deixando os nossos produtos com o mesmo tamanho

Usamos a propriedade `box-sizing: border-box;` porque ela permite que o tamanho de um elemento inclua tanto o seu conteúdo (width e height) como os seus espaçamentos (margin e padding). Isso faz com que o nosso css entenda que não deve ultrapassar os 940px que definimos antes, assim mantemos o width com 30% do tamanho do elemento pai e ao adicionar o padding que definimos como `padding: 30px 20px;`,conseguimos "somar" a porcentagem com pixel. Basicamente assim conseguimos controlar melhor o nosso layout, definindo espaçamento internos de forma que o conteúdo não fique colado e ao mesmo tempo sem ultrapassar os limites que definimos antes.

Lembrando que quando estamos trabalhando com padding o elemento aumenta o seu tamanho. Quando declaro que existe um espaçamento interno, estou aumentando o conteúdo.

### Resumindo

Aprendemos:

- A tag main, para o conteúdo principal da nossa página
- A criar listas complexas, com títulos, imagens e parágrafos
- A utilizar o inline-block
- E praticamos estilizando o conteúdo principal da nossa página
  Veja o resultado [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Posicionamento_listas_Navegacao/04-A_tag_section/produtos.html)

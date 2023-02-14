# Começando responsividade mobile

O nosso projeto até aqui não tem estrutura para apresentar no mobile.

Vamos começar melhorando a aparência do menu, então como já vimos outras vezes precisamos identificar o elemento pai, nesse caso é a tag nav, vamos seleciona-lá usando a classe `.cabecalhoPrincipal-nav`. Como vamos deixar em colunas para ficar responsivo no mobile colocamos
`flex-direction: column`

```css
.cabecalhoPrincipal-nav {
  display: flex;
  flex-direction: column;
}
```

Porem ainda não chegamos no resultado que queremos isso por que a nav está dentro de um conteiner que já é flex, precisamos adicionar a direção.

```css
.cabecalhoPrincipal .container {
  flex-direction: column;
}
```

Importante notar que ao fazermos isso mudamos o eixo. Quando usamos a propriedade flex temos dois eixo, o main axis e o cross axis. No main axis usamos justify-content, o equivalente na cross axis é align-itens. Precisamos estar atentos ao mudarmos de direção por conta dessas propriedades.
Como queremos que os itens ocupem o espaço disponível teremos que desativar o align-itens.

```css
.cabecalhoPrincipal .container {
  flex-direction: column;
  align-items: initial;
}
```

Porem queremos o texto centralizado:

```css
.cabecalhoPrincipal .container {
  flex-direction: column;
  align-items: initial;
  text-align: center;
}
```

Vamos modificar a parte de cursos para deixa-la responsiva. Começamos mudando a largura dos elementos da classe `.conteudoPrincipal-cursos-link` para que preencham a largura disponível.
Com somente essa alteração já conseguimos um bom resultado, mas para garantir um código correto vamos adicionar mais algumas propriedades. No conteiner pai `.conteudoPrincipal-cursos` adicionamos a direção ao flex.

```css
.conteudoPrincipal-cursos {
  flex-direction: column;
}

.conteudoPrincipal-cursos-link {
  width: 100%;
}
```

No mapa dos cursos vamos fazer as alterações para deixa-lo responsivo. Para isso vamos precisar remover a altura da div, assim conseguimos que oos itens fiquem um embaixo do outro. Para resolver isso no elemento `.rodapePrincipal-navMap-list` colocamos a altura automática

```css
.rodapePrincipal-navMap-list {
  height: auto;
}
```

Pronto conseguimos adaptar para mobile essa seção. Seguimos para a proxima seção vamos selecionar a div conteiner, nela vamos adicionar a propriedade `flex-direction: column`, porém ainda precisaremos alterar o elemento filho, `rodapePrincipal-navMap-list` e também colocaremos `flex-direction: column`.
Vamos precisar alinhar os itens no centro então usamos o align-itens: center, pois mudamos o eixo com o flex direction.

```css
.rodapePrincipal-patrocinadores .container {
  flex-direction: column;
  align-items: center;
}
```

Conseguimos alinhas os intens de cima, mas os debaixo então desalinhados por conta do tamanho que havíamos definido. Então colocamos width: 100% no formulário para que o espaço seja preenchido.

```css
.rodapePrincipal-contatoForm {
  width: 100%;
}
```

Agora faremos o mesmo para ul, selecionando `.rodapePrincipal-patrocinadores-list`

```css
.rodapePrincipal-patrocinadores-list {
  margin: 0;
  width: 100%;
}
```

Para finalizar observamos que a div tem um display flex, então podemos usar o justify para alinhar nossos itens.

```css
.rodapePrincipal-contatoForm-fieldset {
  justify-content: center;
}
```

Para finalizar definimos o media query

```css
/*parte mobile*/
@media (max-width: 768px);
```

## Alterando a ordem

Quando usamos a propriedade flex em um conteiner, é liberado o uso da propriedade order nos elementos filhos com ela conseguimos alterar a ordem dos intens. No nosso caso queremos deixar a li "Nosso APP" no top. Faremos o seguinte.

```css
.cabecalhoPrincipal-nav-link-app {
  order: -1;
}
```

Por padrão todos os flex-itens tem order = 0.

### Seção videos

Seguindo a organização do layout vamos organizar a parte dos videos, começamos selecionando o conteiner para aplicarmos o display flex.

```css
.videoSobre .container {
  display: flex;
}
```

Com isso colocamos o texto ao lado do video e deixamos com o mesmo tamanho por conta do comportamento do flex. Vamos precisar identificar o conteiner do texto para centralizar o mesmo. E com isso conseguimos o resultado esperado.

```css
.videoSobre-sobre {
  text-align: center;
  display: flex;
}
```

Apos isso vamos mexer no botão, como já aplicamos o display flex vimos que por si só não vai resolver nosso problema precisaremos adicionar a direção assim o botão irá ocupar 100% da altura.

```css
.videoSobre-sobre {
  text-align: center;
  display: flex;
  flex-direction: column;
}
```

Agora vamos ter que resolver o problema de espaço entre o texto e o botão. Vamos usar a propriedade flex-grow para isso ela diz ao item que ele deve crescer e passamos o valor que queremos no caso, 2.

```css
.videoSobre-sobre {
  text-align: center;
  display: flex;
  flex-direction: column;
  flex-grow: 2;
}
```

Vamos estruturar melhor o botão, adicionando um espaçamento vamos usar a flex-grow pra isso.

```css
.videoSobre-sobre-list {
  flex-grow: 1;
}
```

#### Vantagens do responsivo

Vamos usar a propriedade flex-shrink assim conseguimos deixar o elemento diminuindo proporcionalmente.

```css
.videoSobre-video {
  flex-grow: 1;
  flex-shrink: 2;
}
```

Ou seja estamos dizendo que queremos que os elementos de videoSobre-video diminuam duas vezes mais que os outros elementos.
Isso funciona até 768px telas menores terão problemas então usamos o flex-direction para alterar a disposição dos elementos.

```css
.videoSobre .container {
  flex-direction: column;
}
```

Dessa forma termos um elemento abaixo do outro porem estão desalinhados usamos a margin para alinhar.

```css
.videoSobre-video {
  margin: 0 auto;
}
```

##### Recapitulando

Para mobile devemos colocar um elemento em baixo do outro, é a melhor forma de ocupar todo o espaço para melhorar a usabilidade no celular.

Para fazer isso podemos colocar a propriedade `flex-direction: column`, que faz com que os elementos fiquem um em baixo do outro. Esse é o aspecto mais importante da responsividade do flexbox.
Vale saber propriedades aplicadas a flexconteiner e flex itens
container:

display: flex
flex-direction
justify-content
flex-wrap
flex-flow
align-items
align-content
flex item:

order
flex-grow
flex-shrink
flex-basis
flex
align-self

## O projeto até aqui

[Clique aqui](index.html) e veja como está ficando o nosso projeto.

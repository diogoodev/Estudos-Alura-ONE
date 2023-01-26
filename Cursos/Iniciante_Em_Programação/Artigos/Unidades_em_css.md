# Entendendo unidades no css

Vamos entender as mais variadas unidades de medidas e como elas podem nos ajudar a resolver problemas.

## Medida absoluta x Medida relativa

Medidas absolutas: São medidas que não estão presas a outras para referencia são as medidas que já conhecemos no dia a dia, como pixel, centímetro, metro e etc.
Fazemos uso dessas medidas quanto conhecemos exatamente as especificações dos dispositivos que estamos mexendo e também conhecemos as mídias onde o projeto será exibido.
Medidas absolutas: Essas não estamos acostumados elas tomam uma medida de referencia para serem calculadas. Por exemplo em e rem com elas fazemos ajustes em diferentes dispositivos mantendo a consistência e o layout fluido.
Como o próprio navegador calcula essas medidas elas tendem a serem mais flexíveis, assim conseguimos resultados diferentes de acordo com o ambiente.

### Medidas absolutas no css

#### Pixels (px)

O pixels são os menores elemento em um dispositivo. Eles são amplamente usados como unidade principal em projetos de desenvolvimento web.Curiosamente, no css, o pixel não corresponde ao tamanho real do pixel na tela. Na verdade, é um pixel de referencia, que é maior que o pixel real. Isso se torna um beneficio pois leva em consideração a proximidade da tela, por isso ao usarmos o celular o pixel de referencia terá tamanho semelhante ao de um monitor.
É Importante lembrar que, ao desenvolver um layout, é necessário sempre pensar na escalabilidade e adaptabilidade, e a unidade de medida utilizada deve ser capaz de se adaptar a essas mudanças. Embora o uso de pixels possa parecer atraente devido a capacidade de se adaptar a diversos dispositivos, é preciso estar ciente das desvantagens que ele traz,principalmente em dispositivos de baixa resolução.

#### points (pt)

Essa unidade de medida é a mais conhecida entre os designers, normalmente está relacionada a tipografia, e o seu uso não é tão comum.
É comum utilizar em folhas de estilo para impressoras pois permite uma maior precisão na escolha da fonte.
Não é recomenda para uso em telas. Pois a resolução entre telas varia e a conversão de points para pixel não é precisa.

#### in (inches/polegadas)

Conhecemos essa medida pois está no nosso dia a dia, ao especificar o tamanho de um monitor ou de uma tv.
Apesar de serem comuns no dia a dia, elas não são usadas em projetos, pois não são muito praticas e conseguimos o mesmo resultado com outras medidas.

#### Centímetro e Milímetro (cm/mm)

Essas medidas são muito conhecidas por nós brasileiros, estão enraizadas no nosso cotidiano. Apesar disso não são recomendadas para o uso em projetos pois podem causar problemas ao serem exibidas em telas. O seu uso mais comum é para folhas de estilo para impressoras pois terão maior precisão na escolha do tamanho e fontes.

#### Paica (pc)

Também pouco usada no css, ela vem da tipografia. Como é pouco usada normalmente é esquecida, mas vale saber como ela se comprar com as outras unidades que vimos:
1 in = 2,54cm = 25,4mm = 72pt = 6pc
Logicamente conseguimos ver que pode apresentar problemas na conversão para pixel.

### Medidas Relativas no CSS

#### Ems (em)

A unidade de medida em é suportada em todos os navegadores e com ela conseguimos obter layouts fluidos e responsivos. Isso é possível devido ao funcionamento da em, que muda para os elementos filhos de acordo com o tamanho da fonte do elemento pai.

```html
<style>
  #div {
    font-size: 16px;
  }

  #filho {
    font-size: 2em;
  }
</style>

<div id="pai">
  div pai
  <div id="filho">div filho</div>
</div>
```

Aqui temos a div pai com fonte de 16px, a div mais interna será afetada quando definimos 1em=16px, 2em=32px, 1.5em=24px e assim por diante. O que torna o em especial é que, por exemplo, podemos aplicar a margem, assim o espaçamento irá mudar de acordo com a fonte escolhida, o que garante a fluidez.
Uma técnica muito usada é componentizar usando o em. A ideia é que, ao alterar a fonte do elemento pai, todos os componentes sejam modificados e se redimensionem. [Clique aqui](https://jsfiddle.net/r0od5zbe/3/) e veja um exemplo.
Usando essa técnica, conseguimos deixar o código mais simples, caso seja necessário fazer alterações depois, e garantimos que o layout responderá adequadamente.
O único problema que podemos ter ao usar o em é quando temos muitas divs aninhadas. Pois, no nosso exemplo, se tivéssemos mais uma div dentro da div filho, o tamanho da fonte 2em=64px, e assim sucessivamente. Isso daria muito trabalho para calcular para 5, 6 ou 7 divs aninhadas.

#### Rems (rem, "root em")

A unidade de medida rem tem funcionamento semelhante ao em. Ambas funcionam com base no font-size. Porém, enquanto o em depende do elemento pai, o rem depende do elemento root, no caso, a tag. Essa associação resolve o problema que o em tinha, pois podemos definir o tamanho sem ter que nos preocupar com a herança para o elemento filho.

##### Exemplo de uso 1

Por exemplo, se definimos a tag html com font-size de 10px. Então, onde colocarmos o valor de rem, ele se relacionará com o font-size do html. Se dessemos o valor 1.5rem=15px, 2rem=20px e assim por diante, devido à forma como definimos anteriormente. Os navegadores utilizam 16px como padrão para o html.

##### Exemplo de uso 2

Podemos usar um pequeno truque para acerta o rem.

```css
html {
  font-size: 62, 5%;
}

h1 {
  font-size: 1.2rem; /*equivalente a 12px*/
}

p {
  font-size: 2.4rem; /*equivalente a 24px*/
}
```

O problema dessa abordagem é em códigos grandes, caso fosse necessário alterar o tamanho da fonte, teríamos que ir em todos os elementos para conseguir o resultado.

##### Exemplo de uso 3

Outra forma de usar o rem, dividindo em escalas, aqui definimos o root em pixel, os módulos em rem e os elementos interiores com em. Assim vamos facilitar a manutenção global.
Vamos conseguir um efeito de escala começando com o root, se o alterarmos escalara para o os módulos usando rem, e o consequentemente para os elementos interiores usando em e referenciando o elemento pai.

```css
/* Ajustes no html */
html {
  font-size: 18px;
  font-family: Arial, sans-serif;
}
/* módulos vão escalar com o documento */
.header {
  font-size: 1.5rem;
}
.footer {
  font-size: 0.75rem;
}
.sidebar {
  font-size: 0.85rem;
}

/* tipos escalão com os módulos */
h1 {
  font-size: 3em;
}
h2 {
  font-size: 2.5em;
}
h3 {
  font-size: 2em;
}
```

### Porcentagem (%)

Apesar de não ser uma unidade de medida, ela contribui muito para que possemos criar layouts responsivos. Com a porcentagem conseguimos criar módulos que manterão a proporção em diferentes dispositivos, se definimos um modulo com 50%, ele sempre ocupara metade do espaço que lhe cabe se tiver dentro de outro elemento. Ela tem essencialmente um comportamento parecido com o em, sendo dependente do diretamente do tamanho do elemento pai, então teremos o mesmo problema se tivermos muitos elementos aninhados.

### Ex

A unidade ex funciona de forma parecida com em e rem, porem está relaciona com font-family, e é definida pela altura-x de uma fonte, basicamente é a altura de x, em caractere minusculo. Caso o navegador não consiga definir o tamanho da fonte x, então ele aplica o tamanho 0.5em=1ex. Normalmente pé usada para ajustes tipográficos, por conta da precisão.

### Ch

É definida como medida avançada da largura do caractere "0". Quando definimos 50ch, estamos dizendo que ali irá caber 50 caracteres da fonte, caso ela seja monospace(tenham o mesmo espaço). Essa regra 1ch = 1 caractere só se aplica se a fonte usada for monospace (largura fixa), pois se a largura for variável então ocorrerá variações nos caracteres.

## Viewport units

Viewport é a janela de visibilidade de uma página web no dispositivo do usuário, por isso varia do celular para o monitor.

### Vw (viewport width)

O vw se relaciona diretamente com a largura do viewport, sendo 1vw = 1% do tamanho da largura da área visível. A diferença entre % e vw é que % se refere ao contexto local do elemento, enquanto vw se refere ao contexto do usuário, ao tamanho total do viewport do usuário.

### Vh (viewport height)

Assim como vw, vh se relaciona ao viewport, mas faz referência à altura e não à largura.
Para ver alguns exemplos de vw e vh em uso [clique aqui](https://css-tricks.com/fun-viewport-units/)

### Vmin (viewport minimun)

O conceito chave do vmin é que, ao contrário dos anteriores que se baseiam em largura ou altura, o vmin se baseia no menor valor entre os dois. Por exemplo, se temos uma viewport com altura de 1280px e largura de 720px, então 1vmin = 7.2px (1% da menor dimensão), nesse caso, como a largura é menor que a altura, o vmin se baseará nela. Se tivéssemos a altura de 900px e largura de 1280, então 1vmin = 9px, sempre pegando o menor valor que a viewport oferece.

### Vmax (viewport máximo)

Aqui teremos a mesma logica do vmin, ou seja, vmax será sempre 1% do maior valor do viewport. Assim, se temos uma viewport com 1440px de altura e 980px de largura, então 1vmax = 14.40px, e se tivéssemos 300px na altura e 720px na largura então o 1vmax = 7.2px. Sempre terá como referência o maior valor da viewport.
Um bom link para ver sobre Vmin e Vmax [aqui](https://desenvolvimentoparaweb.com/css/unidades-css-rem-vh-vw-vmin-vmax-ex-ch/)

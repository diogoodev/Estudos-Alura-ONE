# Posicionando os elementos

Sabendo que o navegador coloca alguns comportamentos padrão e pra isso podemos utilizar um reset para o css.

## A propriedade Position

Usamos a propriedade `position` para posicionarmos um elemento.
Os elemento vem com a `position:static` por padrão. Em que a posição deles é estática.

Temos também a `position: relative`, que deslocar o elemento em relação ao ponto inicial, essa propriedade diz que a posição do elemento será relativa ao referencial inicial, se adicionamos a propriedade `top: 10px` ela desloca o elemento para baixo em 10px.

No nosso projeto vamos usar `position:absolute`, porque assim podemos escolher onde vamos posicionar o nosso elemento. Usando as propriedades `top: 0`, `left: 0`. Conseguimos colocar o elemento no canto superior direito.

### Outras propriedades de posicionamento

Também podemos usar as seguintes propriedades `right` e `bottom` para posicionar um elemento em relação aos cantos direito e inferior da tela. Usando a propriedade `z-index` conseguimos controlar a ordem de sobreposição dos elementos.

#### Centralizando

Para conseguirmos centralizar os elementos, vamos criar uma div que irá funcionar como contêiner e irá envolver todo o nosso menu e a nossa logo. Precisamos definir a posição da div como relativa. Assim, prendemos os elementos com `position: absolute`dentro da nossa caixa, pois eles ficam posicionados em relação à div e não ao documento inteiro. Em seguida, adicionamos `margin: 0 auto`, para que ocorra automaticamente o cálculo de margem."

##### Resumindo

Aprendemos:

- Como remover os estilos que o navegador cria automaticamente
- Como funciona os posicionamentos static, relative e absolute dos elementos
- Como posicionar o cabeçalho da nossa página

Veja o resultado [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Posicionamento_listas_Navegacao/03_Posicionamento_dos_elementos/produtos.html)

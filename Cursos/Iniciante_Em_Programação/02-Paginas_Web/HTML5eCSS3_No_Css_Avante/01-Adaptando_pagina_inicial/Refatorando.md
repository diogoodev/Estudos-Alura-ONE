# Refatorando a pagina inicial

Uma boa forma de deixar melhor dividido o seu html é verificar onde é possível substituir uma div por uma section.

A div não tem qualquer significado semântico em si mesmo.
Já a section informa que todo o conteúdo dentro dela está relacionado. Usamos quando o bloco onde o conteúdo tem o mesmo significado, o mesmo sentido.

Usamos a section da seguinte forma por exemplo:

```html
<section>
  <h1>Introdução</h1>
  <p>Conteúdo</p>
  <h1>Desenvolvimento</h1>
  <p>Conteúdo</p>
  <h1>Conclusão</h1>
  <p>Conteúdo</p>
</section>
```

## **Dicas para o CSS**

1 - Quando queremos falar de estilo colocamos uma classe, quando queremos falar de comportamento colocamos um identificador
2 - Sempre que criamos uma **classe do CSS** é importante que ela seja específica e ao mesmo tempo o _mais genérica possível_. Quando temos um nome como por exemplo "titulo-centralizado", estamos imprimindo um comportamento, então se quiséssemos alinhar o título à esquerda, teríamos de modificar o nome da classe, ou criar uma nova.
3 - Quando queremos que a fonte de alguma classe ou do documento seja o dobro da fonte padrão, independe do tamanho dessa fonte padrão, utilizamos a medida em, a media proporcional para pixels. Se quisermos duas vezes o tamanho base (15 pixels), basta escrever `2em`
3 - Quando trabalhamos com textos e queremos inserir um espaçamento. então devemos fazer com que seja proporcional ao tamanho da fonte, o que facilita a leitura do usuário, ficaria assim `margin: 0 0 1em;`

## A propriedade float

Além de todas as outras propriedades de posicionamento que vimos podemos usar a propriedade float para posicionar e tratar elementos.
Quando utilizamos este recurso,o elemento "descola" da página mas o que seria a sua sombra, continua sendo ocupada virtualmente, isto é, o texto respeita esse espaço ocupado.
Exemplo de aplicação:

```css
float: left;
```

Tanto o `float:left` quanto o `float: right`servem para que o elemento se destaque na tela, deixe de ocupar o espaço em que estava, para que os outros elementos possam se posicionar ao redor dele
Porem o uso do float pode ser um pouco perigoso pois ele afeta todo os elementos abaixo dele. Então precisamos aplicar um propriedade limpadora para corrigir esse efeito.

```css
clear: left;
```

## Resumindo

Aprendemos:

- A ajustar a página principal para utilizar os mesmos padrões da página de produtos
- Medidas proporcionais com CSS
- Como funciona a flutuação dos elementos e como modificá-la, com a propriedade float do CSS
- Como limpar o float, com a propriedade clear do CSS

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_No_Css_Avante/01-Adaptando_pagina_inicial/index.html)

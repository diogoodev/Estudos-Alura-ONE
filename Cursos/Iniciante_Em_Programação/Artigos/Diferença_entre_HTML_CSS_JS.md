# HTML, CSS e Javascript, quais as diferenças?

- Principais linguagens do front-end

## Background

- Antigamente (antes de 1991), o compartilhamento de documentos entre empresas era muito custoso. Para facilitar isso Tim Berners-Lee criou a linguagem de marcação html. Isso não só facilitou a vida das empresas, revolucionou o mundo.

- Com o surgimento da world wide web(www), uma rede de alcance mundial tornou o html amplamente usado para tudo e por todos.

- Com isso os desenvolvedores começaram a estilizar as paginas, porem tudo era feito em na mesma pagina do html e com isso um novo problema surgiu as paginas ficavam com muito código dificultando o entendimento. Em 1995 foi criado o CSS para ficar responsável pela parte estética da pagina.

- Já o javascript surgiu a partir de uma grande competição entre Netscape e Microsoft.

- A Netscape criou uma linguagem para rodar no lado do servidor. A Microsoft viu um oportunidade e desenvolveu a sua linguagem Jscript para implementar nos servidores web iss. A Netscape percebeu e desenvolveu outra tecnologia agora do lado do cliente que rodava no próprio navegador. Isso tornou tudo mais rapido, a Microsoft viu esse movimento e desenvolveu tecnologia semelhante.

- Existiam ao mesmo tempo duas tecnologia praticamente idênticas Jscript da microsoft e Javascript da Netscape.

- A padronização ocorreu quando a netscape enviou o JavaScript para ECMA, isso permitiu que ele fosse incorporado a maioria dos navegadores. Assim surgiu o ECMAscript, basicamente um novo nome para o JavaScript.

## HTML

- Do inglês "Hyper Text Markup Language", Linguagem de marcação de hipertexto.

- Não é considerada uma linguagem de programação

- Toda o organização dos elementos e da estrutura da pagina é feito pelo html, utilizando as tags de marcação.

- Exemplo de criação de um paragrafo em html.

```html
<p>Este é um parágrafo</p>
```

- Existem muitas tags para estruturar o nosso código. E para adicionar cor? - Ai entra o CSS.

## CSS

- Do ingles "Cascading Style Sheet". Ou Folha do estilo cascata.

- Também não é uma linguagem de programação. Ela separa a estrutura que fica por conta do HTML e estilo que fica com CSS.

- Usamos a seguinte sintaxe:

```css
seletor {
  propriedade: valor;
}
```

- O seletor é o elemento que queremos estilizar, pode ser uma tag, uma classe ou um identificador.
- A propriedade será o que iremos alterar.
- O valor será de fato a alteração.
- Exemplo: red para cor, 18px para fonte, e assim por diante.

- Aplicando no paragrafo do exemplo anterior:

```css
p {
  color: blue;
}
```

- É possível tanto aplicar css dentro do próprio arquivo html, podemos escrever em diferentes arquivos e linkar com html que queremos através da tag link.

```html
<link rel="”stylesheet”" href="”nome_do_arquivo_css.css”" />
```

- Podemos utilizar mais de um arquivo CSS ao mesmo tempo, mas com cuidado para não deixar o código confuso.

## Javascript

- Completando a tríade frontend, temos aquele que é a única linguagem de programação de fato.

- Responsável pelo dinamismo nas paginas web.

- Permite o processamento de dados enviados e recebidos.

- Permite a criação de conteúdos dinâmicos e animados dando vida a aplicações que eram estáticas quando tinham apenas html.

- Exemplo de código:

```javascript
alert(‘Hello World’);
```

- Podemos escrever o javascript dentro do código html.

```html
<script>
  alert(‘Hello World’);
</script>
```

- Para importar de um arquivo separado usamos a seguinte sintaxe.

```html
<script src="”nome_do_arquivo_js.js”"></script>
```

- Lembrando que podemos usar javascript tanto no lado do cliente como no lado do servidor com node.js por exemplo.

## Resumindo

A partir do vimos podemos simplificar da seguinte forma:
_HTML_ : Linguagem de marcação utilizada para estruturar as paginas, através de títulos,parágrafos, links e etc.
_CSS_ : Linguagem de estilos utilizada para definir valores estéticos para os elementos da pagina, como cor, posicionamento, tamanho e etc.
_JavaScript_ : Linguagem de programação utilizada para dar dinamismo as paginas web e também para lidar melhor com dados enviados e recebidos.

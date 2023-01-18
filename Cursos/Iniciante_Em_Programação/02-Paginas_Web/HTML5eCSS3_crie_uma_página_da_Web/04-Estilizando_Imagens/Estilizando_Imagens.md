# Estilizando Imagens

## Mais alguns Seletores e trabalhando com imagens

- Quando queremos especificar algo único, usamos o id na tag html, assim quando formos alterar no css podemos usa-lo para alterar aquele elemento com o id.

  No html

  ```html
  <p id="especifico">texto</p>
  ```

  No css:

  ```css
  #especifico {
    color: red;
  }
  ```

## Como inserir imagens ?

- Utilizamos a tag `img` no html.

```html
<img src="banner.jpg" />
```

- src, vem de source, que significa fonte, nela inserimos o caminho onde a imagem está localizada.
- Por exemplo se estiver dentro de uma pasta chamada imagem.

  ```html
  <img src="/imagem/banner.jpg" />
  ```

### CSS em imagens

- Para definir altura e largura dos elemento no css usamos a propriedade height e width:

```css
#banner {
  height: 150px;
  width: 100%;
}
```

- Temos ainda duas propriedades que funcionam de forma semelhante: o padding e a margin.

- Padding: Ajusta o espaçamento interno dos elementos:
  Podemos escrever de uma forma geral somente padding ou especificar onde queremos o espaçamento, padding-top, left, right e bottom.

```css
h1 {
  padding: 10px;
  padding-top: 10px
  padding-right: 10px
  padding-bottom: 10px
  padding-left: 10px
}
```

- Margin: Ajusta o espaçamento externo dos elementos:
- Podemos escrever de uma forma geral somente padding ou especificar onde queremos o espaçamento margin-top, left, right e bottom.

```css
h1 {
  margin: 10px;
  margin-top: 10px;
  margin-right: 10px;
  margin-bottom: 10px;
  margin-left: 10px;
}
```

#### Time de front-end

- Hoje está dividido em 3 partes:
  -Ux: Esse é responsável pela experiencia do usuário
  -Ui: Esse é responsável pe
  -Desenvolvedor: Responsável por colocar em código o que foi desenvolvido pelo ux e ui.

##### Resumindo

Aprendemos:

- Como reestruturar o nosso código, removendo os CSS inline e colocando-os no arquivo CSS externo
- Como criar um identificador para marcar especificamente um elemento
  Como fazer referência a esse identificador no CSS
- Como adicionar uma imagem à nossa página
- Como ajustar a altura do elemento, através da propriedade height
- Como ajustar a largura do elemento, através da propriedade width
- Como ajustar o espaçamento interno do elemento, através da propriedade padding
- Como ajustar o espaçamento externo do elemento, através da propriedade margin
- Como se comporta um time de front-end hoje em dia

Você pode conferir o resultado [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_crie_uma_p%C3%A1gina_da_Web/04-Estilizando_Imagens/Estilizando_Imagens.html)

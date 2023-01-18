# Formulários

Para começarmos precisamos delimitar o espaço onde iremos criar o formulário, fazemos isso usando a tag `<forms>`.

## Entradas

No formulário precisamos preencher com os espaços para o usuário digitar. Fazemos isso através da tag `<input>` ela sempre anda acompanhada de um tipo, pode ser texto, número e etc `<input type="text/>"`
Essa tag precisa vir junto com a tag `<label>` pois assim conseguimos inserir a informação que o usuário precisa saber para preencher corretamente o input. E também devemos ligar as duas tags atrás do "for" e do "id".
Basicamente a tag `<label>` é uma etiqueta para a entrada de dados, para o`<input>`.

Ficando assim:

```html
<label for="nomeesobrenome"> Nome e Sobrenome </label>
<input type="text" id="nomeesobrenome" />
```

- Email

  Quando queremos usar um campo do formulário para que o usuário insira um email usamos a seguinte formatação:

  ```html
  <label for="email"> email</label> <input type="email" id="email" />
  ```

- Telefone

  Quando queremos usar um campo do formulário para que o usuário insira um telefone usamos a seguinte formatação:

  ```html
  <label for="telefone"> Telefone </label> <input type="tel" id="telefone" />
  ```

## Envio

Para o envio dos dados que coletamos na entrada, precisamos apenas do input e usamos a seguinte formatação:

```html
<input type="submit" value="Enviar formulário" />
```

No value estou garantido que aparecerá "Enviar formulário" independente do idioma do usuário.

### Importante no css

Caso queiramos alterar os `<input>` de forma que tenha um espaço entre a borda e o conteúdo devemos usar a propriedade `padding` pois ela é responsável pelo espaçamento interno, entre o conteúdo e a borda.

#### Display no formulário

Além disso a tag `<label>` tem o valor de "`display: inline`" e a tag `<input>` tem o valor de "`display: inline-block`" no CSS. Assim o rótulo (label) e o campo de entrada (input) ficam alinhados e exibidos lado a lado na página
Para alterar a visualização precismos alterar o display dos elementos para block.

## Resumindo

Aprendemos:

- A criar um formulário HTML
- A tag que o representa é a `<form>`
- A tag `<input>`, para a entrada de dados do usuário
- A criar uma etiqueta para o input, com a tag `<label>`
- A conectar um input com o seu label
- Colocamos um id para o input e associamos esse id ao atributo for do label
- Alguns tipos de input, como text e submit
- Que label possui o display inline e o input possui display inline-block
- A estilizar o nosso formulário

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Formularios_Tabelas/02-Comecando_Formulario/contatos.html)

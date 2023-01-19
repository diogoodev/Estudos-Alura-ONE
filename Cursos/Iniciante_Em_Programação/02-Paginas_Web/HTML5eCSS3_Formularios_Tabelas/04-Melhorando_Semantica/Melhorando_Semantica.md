# Inputs para celulares

Quando estamos fazendo nosso formulário, devemos pensar na aparência no mobile. E no HTML temos "types" que nos ajudam a facilitar a vida do usuário, e a receber dados mais corretos.
Vamos ver alguns deles aqui:

## Input do tipo texto

Como escreve:

```html
<input type="text" />
```

Como aparece e para qual uso:

Esse input irá mostrar o teclado padrão do celular, útil para áreas onde queremos que o usuário deixe uma mensagem, escreva seu nome e etc.

## Input do tipo email

Como escreve:

```html
<input type="email" />
```

Como aparece e para qual uso:

Esse input irá mostrar o teclado do celular modificado, com a tecla de espaço menor e aparecendo o símbolo do @, em alguns aparelhos também aparece o .com, muito útil para facilitar a digitação no campo de email

## Input do tipo tel

Como escreve:

```html
<input type="tel" />
```

Como aparece e para qual uso:

Esse input irá mostrar o teclado numérico do celular, no caso o teclado que usamos para digitar o número de alguém e fazer chamada, isso facilitará e muito na hora de inserir o telefone, o usuário ganha tempo e agilidade para digitar o número de telefone.

## Input do tipo number

Como escreve:

```html
<input type="number" />
```

Como aparece e para qual uso:

Esse input irá mostrar o teclado de número do celular, mas cuidado ao usar pois diferente do tipo tel, aqui ainda aparece o texto para o usuário. Normalmente usado para área onde inserimos o CEP ou CPF por exemplo.

## Input do tipo password

Como escreve:

```html
<input type="password" />
```

Como aparece e para qual uso:

Esse input irá mostrar o teclado comum do celular, porém na tela a senha irá ser coberta por asteriscos ou bolinhas, dependendo do sistema que está sendo usado. É interessante usar para as áreas de login.

### Inputs fortemente recomendados apenas para mobile

#### Input do tipo data

Como escreve:

```html
<input type="data" />
```

Como aparece e para qual uso:

Esse input irá mostrar no teclado uma área para que possamos selecionar a data mais facilmente com o touch. Muito mais prático do que criar várias regras de validações.

#### Input do tipo datetime

Como escreve:

```html
<input type="datetime" />
```

Como aparece e para qual uso:

Esse input irá mostrar no teclado uma área para que possamos selecionar a data e hora mais facilmente com o touch. É importante escolher bem quando usar essa combinação, pois varia bastante de projeto para projeto.

#### Input do tipo month

Como escreve:

```html
<input type="month" />
```

Como aparece e para qual uso:

Esse input irá mostrar no teclado uma área para que possamos selecionar o mês e ano mais facilmente com o touch. Útil para áreas onde é necessário inserir uma data específica, mas sem a necessidade de especificar o dia. Como em casos de pagamento ou vencimento de faturas.

#### Input do tipo search

Como escreve:

```html
<input type="search" />
```

Como aparece e para qual uso:

Esse input irá mostrar uma pequena mudança no teclado, ao invés de "go" e "done" mostra uma tecla com buscar ou ir, agilizando a busca. Além disso, o campo do input se torna uma caixa de busca. Aparece inclusive um ícone de lupa ou um "x" para limpar, dependendo do sistema usado.

##### Fontes usadas aqui

- [bettermobileiputs](https://better-mobile-inputs.netlify.app/)
- [fellyph](https://blog.fellyph.com.br/html5-2/use-o-input-type-certo/)

- [mobileinputtypes](http://mobileinputtypes.com/)

## Dados importantes nos inputs

- **required**

Sempre que temos um input e queremos ter 100% de certeza que ele será preenchido, basta adicionar na tag do input a palavra required. Quando adicionamos a propriedade required, o navegador nos ajuda a validar se aquele campo está preenchido.
Por exemplo:

```html
<label for="nome">Nome e Sobrenome</label>
<input type="text" id="nome" class="input-padrao" required />
```

- **placeholder**

Em alguns formulários vemos essas sugestão de preenchimento. Para adicionar isso no seu formulário basta adicionar na sua tag input um placeholder.
Dessa forma:

```html
<label for="email">E-mail</label>
<input
  type="email"
  id="email"
  class="input-padrao"
  required
  placeholder="seuemail@dominio.com" />
```

- **checked**

Usando checked na tag input de um dos radio-buttons deixamos uma deles pré-selecionado.
Por exemplo:

```html
<label for="radio-email"
  ><input
    type="radio"
    name="contato"
    value="email"
    id="radio-email"
    checked />E-mail</label
>
```

### Melhorando a semântica dentro de um formulário

- `<fieldset>`

Para agruparmos um campo no nosso formulário podemos usar a tag `<fieldset>` ao invés da tag `<div>`. No caso vamos agrupar as seções de seleção e checkbox. Dentro de um fieldset não usamos a tag `<p>` para o titulo vamos usar a tag `<legend>`. Ficando assim nossa formatação:

```html
<fieldset>
  <legend>Qual horário prefere ser atendido?</legend>
  <select name="turnos" id="prefere">
    <option value="1">Manhã</option>
    <option value="2">Tarde</option>
    <option value="3">Noite</option>
  </select>
</fieldset>
```

Lembrando que essas alterações fazem com que o nosso formulário continue a se apresentando visualmente da mesma forma. A única coisa que fizemos foi melhorar a escrita do nosso código.

#### Adicionando acessibilidade a imagens

Usando a propriedade `alt="descrição da imagem"` conseguimos deixar o nosso código melhor e o site mais acessível

## Resumindo

Aprendemos:

- Alguns tipos de inputs para celular: email, tel, number, password, date, datetime, month e search
- Como não permitir que um campo não seja preenchido, através do atributo required
- Como exibir uma sugestão de preenchimento para os campos, através do atributo placeholder
- Como deixar uma opção marcada por padrão nos nossos input radio e checkbox, através do atributo checked
- Como estruturar melhor o nosso código com fieldset e legend
- Como adicionar uma alternativa à imagem, descrevendo-a, com o atributo alt

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Formularios_Tabelas/04-Melhorando_Semantica/contatos.html)

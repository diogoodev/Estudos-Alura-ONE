# Tabelas

Quando queremos usar tabelas no site basta inserir a seguinte formatação:

```html
<table>
  <tr>
    <td>Dia</td>
    <td>Horário</td>
  </tr>
  <tr>
    <td>Terça-Feira</td>
    <td>09h00~19h00</td>
  </tr>
  <tr>
    <td>Quarta-Feira</td>
    <td>09h00</td>
  </tr>
  <tr>
    <td>quinta-Feira</td>
    <td>09h00</td>
  </tr>
  <tr>
    <td>Sexta-Feira</td>
    <td>09h00</td>
  </tr>
</table>
```

Onde a tag `<table>` delimita o espaço onde a nossa tabela será construída e as as tags `<tr>` e `<td>`. Sendo que a primeira é para marcar uma linha de uma tabela. e a segunda as colunas.
Com isso temos uma simples tabela.

## Deixando mais semântica

Podemos separar a tabela em 3 partes, cabeçalho, conteúdo e rodapé.
No cabeçalho de uma tabela usamos a tag `<thead>` e para especificar a célula do cabeçalho usamos a tag `<th>`
No conteúdo de uma tabela usamos a tag `<tbody>`.
No rodapé de uma tabela usamos a tag `<tfoot>`.

As tags ` <thead>``<tbody>``<tfoot> ` ajudam a deixar o conteúdo da tabela mais bem dividido e mais semântico.

## Juntando linhas

Em uma tabela quando queremos juntar as linhas podemos fazer uso da propriedade colspan. Por exemplo:

```html
<tr>
  <td colspan="5">Conteúdo</td>
</tr>
```

Nesse caso essa linha irá ocupar cinco colunas. Isso nos dá a possibilidade de juntar células e montar um visual diferente.

## Resumindo

Aprendemos:

- A criar uma tabela HTML
- A tag table, que representa a tabela
- A tag tr, que representa a linha da tabela
- A tag td, que representa a célula da tabela
- A tag thead, que representa o cabeçalho da tabela
- A tag tbody, que representa o corpo da tabela
- A tag th, que representa a célula do cabeçalho da tabela
- A tag tfoot, que representa o rodapé da tabela

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Formularios_Tabelas/06-Estrutura_De_Tabelas/contatos.html)

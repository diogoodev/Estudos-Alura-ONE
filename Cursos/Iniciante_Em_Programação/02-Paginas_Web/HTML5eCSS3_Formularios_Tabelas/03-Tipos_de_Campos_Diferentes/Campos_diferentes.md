# Formulários

Seguindo os estudos sobre formulários agora adicionando campos mais complexos. Vamos adicionar o `<textarea>`, um campo de entrada de dados onde o usuário pode digitar uma mensagem. Podemos ainda definir quantas linhas e colunas esse campo terá.

```html
<textarea cols="30" rows="10"></textarea>
```

## Adicionando uma área de seleção

Nessa parte podemos usar as radio-box para adicionar opções de seleção para o usuário.
Um fato importante é que quando estamos construindo um campo de seleção com input do tipo radio precisamos garantir que só um input estará selecionado. Para isso, os inputs precisam ter uma única identificação, um único termo para que todos tenham sempre um marcado, neste caso, usamos a propriedade name. Isso porque a propriedade name só pode ser preenchida uma única vez, por isso, quando selecionamos um dos itens, ele desmarca o outro, mantendo somente um selecionado. Colocamos todos os inputs do tipo radio com `name="contato"`.

Um exemplo:

```html
<p>Como prefere nosso contato?</p>

<label for="radio-email">E-mail</label>
<input type="radio" name="contato" value="email" id="radio-email" />

<label for="radio-telefone">Telefone</label>
<input type="radio" name="contato" value="telefonema" id="radio-telefone" />

<label for="radio-whatsapp">WhatsApp</label>
<input type="radio" name="contato" value="WhatsApp" id="radio-whatsapp" />
```

Outra opção seria adicionar checkbox, porém tem um funcionamento um pouco diferente. Nesse caso, aplicaríamos para responder uma pergunta de sim ou não. Ou poderíamos usar para identificar preferências do usuário dando mais de uma opção para ele.

Exemplo de sim ou não:

```html
<label
  ><input type="checkbox" />Gostaria de receber nossas novidades por
  E-mail?</label
>
```

Observe que usamos outra forma para escrever o label e input, dessa forma conseguimos ligar o input ao label sem a necessidade de adicionar um id e um "for" nos elementos.

Exemplo com mais de uma opção para identificar as preferências do usuário:

```html
<p>Quais são suas preferências de atividade física?</p>

<label for="checkbox-corrida">Corrida</label>
<input
  type="checkbox"
  name="preferencia"
  value="corrida"
  id="checkbox-corrida" />

<label for="checkbox-natação">Natação</label>
<input
  type="checkbox"
  name="preferencia"
  value="natação"
  id="checkbox-natação" />

<label for="checkbox-ciclismo">Ciclismo</label>
<input
  type="checkbox"
  name="preferencia"
  value="ciclismo"
  id="checkbox-ciclismo" />

<label for="checkbox-musculação">Musculação</label>
<input
  type="checkbox"
  name="preferencia"
  value="musculação"
  id="checkbox-musculação" />
```

### Opções no css

Como fazemos para replicar o mesmo estilo do input para o nosso textarea?

- No css quando queremos replicar a mesma configuração para outro elemento, usamos a vírgula. Essa é uma forma simples de fazermos a mesma configuração de CSS funcionar para os dois itens, sendo eles seletores dos elementos, de ids ou de classes.

  Fica da seguinte forma:

  ```css
  form input,
  form textarea {
    display: block;
    margin: 0 0 20px;
    padding: 10px 25px;
    width: 50%;
  }
  ```

- Outra opção seria extrair o estilo que pode ser repetido para uma classe e usar a classe para aplicar esses estilos nos nossos elementos.

### Evoluindo o nosso CSS - Especificidade

Agora vamos refazer o layout do formulário melhorando e sendo mais especifico no uso do css.
Para isso precisamo entender o que podemos fazer em cada um dos intens no CSS.

- Força dos seletores

  | Seletor | Força |
  | ------- | ----- |
  | tag     | 1     |
  | classe  | 10    |
  | id      | 100   |

Quando estamos selecionado elementos precisamos nos atentar a força daquela seleção.
Por exemplo se usamos a tag `p` para selecionar o elemento e logo em seguida usamos a combinação `form p` a segunda terá mais força pois terá um valor de 2.
exemplo:

```css
/* Seletor com menor especificidade */
p {
  font-size: 12px;
}

/* Seletor com maior especificidade */
form p {
  font-size: 14px;
}
```

Agora se usamos uma classe `.texto` para selecionar o mesmo elemento, agora o estilo aplicado será o do seletor com classe independente dos estilos aplicados anteriormente. Isso acontece porque a classe tem mais força que as tag somadas.

```css
/* Seletor com maior especificidade que os anteriores*/
.texto {
  font-size: 20px;
}
```

O resultado é o nosso texto com tamanho de 20px.

Outra opção de combinação é somar forças entre os seletores.

- Por exemplo:

  ```css
  /* Seletor com menor especificidade */
  p {
    font-size: 12px;
  }

  /*Seletor com maior especificidade */
  p.texto {
    font-size: 14px;
  }
  ```

Nesse caso o valor será 11. Então essa seleção é mais forte do que quando usamos apenas a classe para selecionar.

Temos ainda um ultimo seletor o id. Esse é o mais especifico de todos.

```css
/* Seletor com menor especificidade */
p {
  font-size: 12px;
}

/* Seletor com maior especificidade */
#meu-id {
  font-size: 14px;
}
```

Nesse caso o estilo aplicado será a font com tamanho 14px pois o seletor id tem o maior nível de especificidade que a tag p.

#### Recomendação

É sempre recomendado que usemos classes para estilizar os elementos, pois elas não são tão genéricas a ponto de, ao modificarmos o estilo usando a tag, a classe também seja alterada; e nem são tão específicas, como os identificadores, para que sejam aplicadas somente a um determinado elemento.
Lembrando mais uma vez que classes são estilos que podem ser replicados em vários elementos, sempre que necessário.

##### O select

Para adicionarmos um campo de seleção drop-down com as opções dessa seleção, podemos fazer uso da tag `<select>` no html.

```html
<select name="turnos" id="prefere">
  <option value="1">Manhã</option>
  <option value="2">Tarde</option>
  <option value="3">Noite</option>
</select>
```

Vale notar que a estrutura da tag `<select>`é composta de um ou mais `<option>`. Que servem para criarmos os itens selecionáveis de um `<select>`.

## Resumindo

Aprendemos:

- O textarea, para entradas de texto de mais de uma linha
- O input do tipo radio
- Como agrupar vários input do tipo radio, impedindo que mais de um input seja selecionado
- O input do tipo checkbox
- Que podemos criar um input dentro de um label, assim associando-os
  - Mais estilizações para a nossa página
- Como funciona a hierarquia no CSS
- O select, que é seletor, um campo de seleção de um item, e o option, que representa cada opção do seletor

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Formularios_Tabelas/03-Tipos_de_Campos_Diferentes/contatos.html)

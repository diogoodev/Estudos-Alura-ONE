# Arrumando o footer

- Alinhando a ul e o form
  - Como esses dois elementos tem como pai o container vamos usar ele para inserimos as propriedades

```css
.rodapePrincipal-patrocinadores .container {
  display: flex;
  justify-content: space-between;
}
```

Vamos precisar alinhar as logos então usamos

```css
.rodapePrincipal-patrocinadores-list {
  display: flex;
}
```

Ao aplicaremos o flex no pai dos ícones melhoramos a disposição dos ícones. Mas ainda vamos precisar centralizar

```css
.rodapePrincipal-patrocinadores-list {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
```

Porem ao aplicar o justify-content: space-between; percebemos que não temos espaço para distribuir entre os elementos. Precisamos definir um width.

```css
.rodapePrincipal-patrocinadores-list {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 75%;
}
```

Agora precisamos encaixar o formulário então selecionamos a classe a aplicamos o width aqui.

```css
.rodapePrincipal-contatoForm {
  width: 25%;
}
```

Acontece que ao fazermos isso percebemos que a ultima logo e formulário ficaram colados, então diminuímos o width e adicionamos uma margin-right na lista.

```css
.rodapePrincipal-patrocinadores-list {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 70%;
  margin-right: 5%;
}
```

Apesar dessa alteração ainda não conseguimos o resultado esperado, vamos usar o space-around para conseguir os espaçamentos necessários.

```css
.rodapePrincipal-patrocinadores-list {
  display: flex;
  align-items: center;
  justify-content: space-around;
  width: 70%;
  margin-right: 5%;
}
```

Falta apenas alinha o botão enviar, então aplicamos o flex no elemento pai dele.

```css
.rodapePrincipal-contatoForm-fieldset {
  display: flex;
}
```

Assim conseguimos ver que o flex também deixa os elementos filhos com a mesma aparência do pai.

## Mais propriedades flex

Vamos reorganizar a lista de cursos, para isso começamos identificando o elemento pai (rodapePrincipal-navMap-list), então aplicamos a propriedade display: flex; porem só com ela os itens irão ficar lado a lado, então precisamos setar uma direção usando o `flex-direction: column;` assim o itens irão ficar dispostos no fluxo vertical.

```css
.rodapePrincipal-navMap-list {
  display: flex;
  flex-direction: column;
}
```

Ao aplicarmos essas definições todo o nosso conteúdo ficará na vertical, então definiremos a altura que queremos para as colunas.

```css
.rodapePrincipal-navMap-list {
  display: flex;
  flex-direction: column;
  height: 250px;
}
```

Acontece que ao isso não dá muito certo pois temos muito mais conteúdo do que conseguimos suporta na altura definida então precisamos usar a propriedade `flex-wrap: wrap;` com ela conseguimos fazer com que a coluna se quebre na altura definida e passe para a proxima.

**Extra:** Conseguimos juntas as duas propriedades de distribuição e quebra que vimos em uma `flex-flow: column wrap` .

## justify-content

Podemos distribuir os elementos dentro do pai de diversas formas, podemos por exemplo:

`justify-content: flex-end;` Colocamos todo espaço à esquerda, jogando o conteúdo para direita .

`justify-content: flex-start;` Colocamos todo espaço à direita, jogando o conteúdo para esquerda.

`justify-content: center;` Colocamos todo espaço à esquerda e à direita, jogando o conteúdo para o meio.

`justify-content: space-between;` Colocamos todo espaço entre os elementos como vimos antes usando.

`justify-content: space-around;` Colocamos o espaço em volta dos elementos.

### O projeto até aqui

[Clique aqui](index.html) e veja como está ficando o nosso projeto.

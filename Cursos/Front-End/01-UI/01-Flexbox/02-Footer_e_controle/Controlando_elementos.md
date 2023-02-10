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

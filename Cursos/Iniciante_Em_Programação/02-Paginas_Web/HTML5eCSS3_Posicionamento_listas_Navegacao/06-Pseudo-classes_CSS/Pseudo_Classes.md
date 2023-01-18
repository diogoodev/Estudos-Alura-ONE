# Pseudo Classes de estado

As Pseudo Classes de estado permitem que tornemos a pagina mais interativa para o usuário.

Quando o mouse está por cima do elemento, usamos a propriedade `hover` para estilizar as ações.
Quado queremos aplicar a um link que está numa ancora, usamos a seguinte formatação `a:hover`
No nosso projeto aplicamos o hover no nosso menu e adicionamos ainda o sublinhado ao passar o mouse por cima.

```css
nav a:hover {
  color: #c78c79;
  text-decoration: underline;
}
```

Importante lembrar que em todos os elementos do HTML consigo mapear o comportamento com CSS e alterar o visual do elemento.

## Alterando o comportamento no clique

No css podemos usar a pseudo classe `:active` assim quando o mouse clicar no elemento com a nossa pseudo classe ele irá executar as alterações que forem feitas. No nosso projetos usamos para alterar a cor da borda apos o clique.

```css
.produtos li:active {
  border-color: #088c19;
}
```

### Observações sobre o CSS

A alteração do comportamento que fizemos serve para o elemento e todos os elementos que estão dentro dele, ou seja, que são filhos do elemento. Quando temos alguma coisa do tipo, clicar em um botão e recarregar a página, isso já foge do CSS, nesse caso precisamos do javascript.

## Resumindo

Aprendemos:

- Sobre algumas pseudo-classes CSS
  - `hover`, quando o usuário passa o cursor sobre o elemento
  - `active`, quando um elemento está sendo ativado pelo usuário
- Como mudar a cor do texto e/ou da borda de um elemento, quando o usuário passar o cursor sobre o mesmo
- Como mudar a cor da borda de um elemento, quando o mesmo estiver sendo ativado pelo usuário
  Veja o resultado [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Posicionamento_listas_Navegacao/06-Pseudo-classes_CSS/produtos.html)

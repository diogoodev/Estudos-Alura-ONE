# Introdução a Transições no CSS

No CSS, as transições ocorrem por padrão instantaneamente, mas podemos modificar isso usando as transições no elemento, fazendo uso da propriedade "transition" no CSS. Utilizamos a propriedade `transition` para proporcionar uma transição visual de um elemento.

Assim:

```css
.button:hover {
  background: darkorange;
  transition: 1s background;
}
```

Neste exemplo, ao colocarmos o mouse sobre o botão, teremos uma transição de 1s para a cor laranja escuro, deixando mais suave a nossa estilização.

transform
Usamos a propriedade para fazer cálculos de modificações que queremos aplicar em nosso elemento. Utilizamos a propriedade transform: scale() para aumentar um elemento proporcionalmente. Por exemplo:

```css
transform: scale(1.2);
```

Aplicando essa propriedade, temos um efeito de aumento do nosso elemento, sem a necessidade do uso de javascript ou cálculos complexos.
Temos outras propriedades para serem aplicadas no transform, uma delas é a rotate, ela rotaciona o item na quantidade de graus informadas.
Por exemplo:

```css
transform: rotate(70deg);
```

Podemos inclusive usá-las em conjunto:

```css
transform: scale(1.2) rotate(70deg);
```

## Resumindo

Aprendemos:

- Como estilizar o botão de envio de formulário
- A realizar transições nos nossos elementos, com a propriedade CSS `transition`
- A realizar transformações nos nossos elementos, como aumentar proporcionalmente a escala de determinado elemento ou rotacioná-lo, através da propriedade CSS `transform`.

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Formularios_Tabelas/05-CSS_Avancado/contatos.html)

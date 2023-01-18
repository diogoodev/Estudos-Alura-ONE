# Adicionando bordas

Para montarmos nossa borda precisamos de três configurações:

```css
border-color: #000000;
border-style: solid;
border-width: 2px;
```

Na primeira definimos a cor da nossa borda, a segunda definimos o estilo que queremos e na terceira definimos a largura da borda.
Podemos ainda personalizar de outras maneiras nossa borda, por exemplo adicando um width diferente na parte de cima, de baixo ou dos lados da borda.

```css
border-color: #000000;
border-style: solid;
border-width: 2px;
border-top-width: 10px;
```

Temos ainda outras configurações para borda como `border-style: dotted;`ou `border-style: dashed;`

## tudo em uma

Podemos colocar nossa borda em uma linha para facilitar quanto temos muitas propriedade sendo usada.

```css
border: 2px solid #000000;
```

### Onde a borda fica no css?

Na estrutura de "caixas" do CSS, a borda fica posicionada entre o padding e a margin.

### Arredondando

Para deixarmos a nossa borda com o canto arredondado precisamos apenas adicionar:

```css
border-radius: 10px;
```

Podemos também escolher o tamanho de cada canto:

```css
border-radius-top-left: 2px;
border-radius-top-right: 2px;
border-radius-bottom-right: 2px;
border-radius-bottom-right: 2px;
```

Na pratica estamos definindo o raio de cada canto da borda.

## Resumindo

Aprendemos:

- Como aplicar bordas nos elementos.
- Os diferentes tipos de bordas.
- A deixar a borda arredondada.

Veja o resultado [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Posicionamento_listas_Navegacao/05-Lidando_com_bordas/produtos.html)

# Centralizando div

Para ilustrar vamos partir do seguinte elemento no html:

```html
<div class="container">
  <p>Aqui temos um texto</p>
  <div></div>
</div>
```

## Centralizando os elementos dentro da div

Para que consigamos centralizar os elementos dentro da div podemos usar o seguinte código no css:

```css
.container {
  text-align: center;
}
```

Lembrando que nesse caso vamos conseguir centralizar elementos inline ou inline-block.

## Centralizando a div na pagina

Já para centralizar a div na tela precisamo definir duas coisas tamanho e margem. Como no exemplo

```css
.container {
   width: 740px
   margin-left: auto;
   margin-right: auto;
}
```

Bom dessa forma vamos conseguir centralizar qualquer elemento block.

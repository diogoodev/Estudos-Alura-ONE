# Estruturando o conteúdo

No HTML temos:

- Tags de informação: Identificamos a versão do html que estamos usando com a tag de informação doctype, essas tags não tem fechamento.
  Por exemplo:
  `<!DOCTYPE html>`
  obs: A tag DOCTYPE serve para informar ao navegador qual versão do HTML estamos usando.
- Tags de conteúdo: Usamos a tag de conteúdo html para delimitar onde o html está sendo usado. E por isso temos uma tag de abertura e de fechamento.Nessa tag também especificamos o idioma da pagina.

  ```html
  <html lang="pt-br">
    ...
  </html>
  ```

- A tag meta passa informações para o navegador, nela temo o atributo charset que escolhe o dicionario que será usando e definimos o valor UTF-8 que especifica o conjunto de caracteres que será usado. É preciso apontar para o navegador que estamos usando um dicionário que tenha acentos e cedilha, sinais gráficos comuns na língua portuguesa.

```html
<meta charset="UTF-8" />
```

- A tag title defini o titulo da pagina, por exemplo:

```html
<title>Barbearia</title>
```

O html é dividido em duas partes o head e o body.

- Na tag head, colocamos as informações que queremos passar para o navegador.

```html
<head>
  <meta charset="UTF-8" />
  <title>Barbearia</title>
</head>
```

- Na tag body, passamos as informações que queremos exibir na pagina.

```html
<head>
  <h1>Titulo</h1>
  <p>paragrafo</p>
</head>
```

## Resumindo

Nesta aula, aprendemos:

A definir a estrutura básica do HTML
Com a tag DOCTYPE, definimos qual versão do HTML estamos utilizando

A tag `<html>`, que marca o conteúdo a ser renderizado no navegador
Dentro desta tag, podemos definir a linguagem da página, através da propriedade lang
Como passar as informações do encoding da nossa página para o navegador, através da tag `<meta>` e da propriedade charset.

Como definir o título de uma página, através da tag `<title>`
Como separar as informações que estão sendo passadas para o navegador, utilizando a tag `<head>`
Como separar o conteúdo da página, utilizando a tag `<body>`

Confira o resultado [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_crie_uma_p%C3%A1gina_da_Web/02-Separando_conteudo_e_informacoes/Estruturando_conte%C3%BAdo.html)

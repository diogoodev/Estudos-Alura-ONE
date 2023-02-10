# Organizando o CSS no projeto

Quando temos uma grande quantidade de código com muitas paginas diferentes tende a acontecer o seguinte:

- Código duplicado
- Conflitos de nomes de classes
- Falta de padrão nos nomes das classes

Vamos entender como podemos evitar essas situações

## Uso de componentes

Exemplo de componente:

```html
<!-- começo do componente box -->
   <a class="box" href="#">
       <img class="image" src="#">
       <h3 class="title">Curso de HTML CSS >
   </a>
```

Aqui temos o html que representa um link de um curso de uma plataforma de cursos.
O problema que teremos aqui é que ele será usado em varias partes da aplicação então provavelmente será duplicado.
Teríamos praticamente o css para varias partes diferentes da aplicação, então poderíamos reaproveitar estilo do componente.
Faríamos um arquivo css para cada pagina que precisando de um estilo diferente por exemplo um para a pagina cursos e um para pagina carreiras.

```css
courses.css .box {
}

.image {
}

.title {
}

carreiras.css .box {
}

.image {
}

.title {
}
```

No HTML teríamos :

```html
carreiras.html

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Alura | Carreiras</title>
    <link href="/css/carreiras.css" rel="stylesheet" />
  </head>
  <!-- todo código HTML aqui incluindo o html dos componentes box -->
  . . . courses.html

  <!DOCTYPE html>
  <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <title>Alura | Cursos</title>
      <link href="/css/courses.css" rel="stylesheet" />
    </head>

    <!-- todo código HTML aqui incluindo o html dos componentes box -->

    . . .
  </html>
</html>
```

Apesar dessa forma funcionar ainda temos o problema dos estilos repetidos.
Então procuramos o que temos em comum entre cada pagina e isolamos esse css. No caso o que temos em comum é o componente box.

```css
box.css .box {
}

.image {
}

.title {
}
```

No HTML

```html
carreiras.html

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Alura | Carreiras</title>
    <link href="/css/box.css" rel="stylesheet" />
    <link href="/css/carreiras.css" rel="stylesheet" />
  </head>
  <!-- todo código HTML aqui incluindo o html dos componentes box -->
  . . .
</html>
```

```html
courses.html

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Alura | Cursos</title>
    <link href="/css/box.css" rel="stylesheet" />
    <link href="/css/courses.css" rel="stylesheet" />
  </head>
  <!-- todo código HTML aqui incluindo o html dos componentes box -->
  . . .
</html>
```

Perceba que agora temos 3 arquivos css definido o estilo, sendo 1 para o que tem em comum entre as paginas, e os outros para o estilo particular de cada pagina.

## Estilos gerais

Alguns estilos são aplicáveis a todas paginas do projeto por exemplo: o reset.css que ajuda a remover particularidades dos estilos de navegadores diferentes. E o contêiner que cria um espaçamento lateral no conteúdo das nossas paginas.

```css
courses.html

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Alura | Cursos</title>
    <link href="/css/base.css" rel="stylesheet">
    <link href="/css/box.css" rel="stylesheet">
    <link href="/css/courses.css" rel="stylesheet">
</head>
<!-- todo código HTML aqui incluindo o html dos componentes box -->
.
.
.
```

Resumindo as dicas:

1. Quando temos um componente se repetindo isolamos em um arquivo separado. ex: box.css
2. Os estilos particulares de cada pagina também ficam em arquivos css específicos. Ex: courses.css para courses.html
3. Usamos base.css para estilos comuns e importamos para todas as paginas HTML.

Esses conceitos vem do SCMACSS, cujo os mandamentos são:

1. Base 2. Layout 3. Module 4. State 5. Theme

Base: é o que chamamos de base.css (reset.css, container.css, etc)
Layout: É o estilo especifico para cada pagina( couses.css, carreiras.css)
Module: É o estilo de componentes que se repetem em varias paginas.(box.css)

## State

Conhecido como estado, está relacionado ao estado dos componentes. Exemplo:

```css
<navbar class="navbar">
    <a href="#" class="item">Home</a>
    <a href="#" class="item">Cursos</a>
    <a href="#" class="item">Carreiras</a>
</navbar>
```

Aqui quando o usuário clicar no link cursos, acontecerá o seguinte:

1. O usuário é redirecionado para a pagina de cursos.
2. O item do menu troca de cor para indicar que o usuário está naquela pagina.

Estado ativo: Quando um item fica em um estado diferente apos ser clicado.
Bom para colocar esse estado diferente podemos usar basicamente css e quando clicamos no item, o nosso javascript deve colocar nesse elemento a classe

```javascript
.active {}
```

Assim definimos o 4º mandamento do SMACSS.

State: Devemos criar uma classe para o estado, adicionamos ou removemos do elemento conforme a necessidade.

## Theme

Esse normalmente é pouco usado. Diz a respeito de modificadores de paginas inteiros, modificando rapidamente o layout ou módulos. Ou seja quando temos por exemplo a opção de alterar o tema para dark mo site, como mudara todo o visual devemos organizar teríamos um arquivo css para cada tema

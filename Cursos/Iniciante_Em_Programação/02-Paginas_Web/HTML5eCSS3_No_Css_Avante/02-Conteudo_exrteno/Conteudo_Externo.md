# Conteúdo Externo

Vamos aprender a usar fontes externas no nosso projeto, sejam elas textos, mapas ou vídeos.

## Fonts e Textos

Quando se trata de fontes para web, elas possuem características diferentes das fontes de mídias tradicionais. Por exemplo:

- Funcionam em todos os navegadores

- Possuem comportamento parecido em todos os sistemas operacionais

Alguns agregadores de fonts:

[Google Fonts](https://fonts.google.com/)
[CDN Fonts](https://www.cdnfonts.com/)

### Importando as fontes

A forma mais simples é importando o css da seguinte forma:

```html
<head>
  <link
    href="https://fonts.googleapis.com/css?family=Montserrat&display=swap"
    rel="stylesheet" />
</head>
```

Aplicamos no head do HTML, nesse caso a fonte é a Montserrat. Bom, assim importamos a fonte, agora é só aplicar no CSS e estilizar o documento.

```css
body {
  font-family: 'Montserrat', sans-serif;
}
```

#### Benefícios do uso de fontes externas

Usar fontes externas é uma alternativa muito funcional para termos mais opções, que deixam o nosso site mais bonito e exclusivo, e também padronizado em todos os navegadores. Listando os benefícios:

1. Padronizar o nosso conteúdo em todos os navegadores

2. Deixar o site mais bonito, com visual mais exclusivo.

3. Termos mais alternativas de fonte

## Mapas

Para importar os mapas podemos usar o [Google Maps](https://www.google.com/maps/). Na opção de compartilhamento, escolheremos a opção "incorporar mapa".

```html
<iframe
  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d234093.94602376106!2d-46.73551153298559!3d-23.5426463892018!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5a2b2ed7f3a1%3A0xab35da2f5ca62674!2sAlura%20-%20Escola%20Online%20de%20Tecnologia!5e0!3m2!1spt-BR!2sbr!4v1674405418648!5m2!1spt-BR!2sbr"
  width="600"
  height="450"
  style="border:0;"
  allowfullscreen=""
  loading="lazy"
  referrerpolicy="no-referrer-when-downgrade"></iframe>
```

Copiamos e adicionamos no nosso html. Na section que criamos pro mapa.
Observe que utilizamos a tag `<iframe>`no nosso html.Ela é específica para abrir "janelas" em nosso site, com proporções definidas e endereço da informação.
Podemos ainda configurar a altura e a largura diretamente no html.
Podemos usar essa tag para capturar conteúdos externos de outros sites como por exemplo:

- Videos
- Fotos de Instagram
- Páginas de Facebook e outros

## Videos

Para adicionar vídeos externos em nosso projeto, podemos usar a tag `<iframe>` do HTML, assim como foi feito com o mapa anteriormente. O código para incorporar um vídeo do YouTube, por exemplo, seria algo como:

```html
<iframe
  width="560"
  height="315"
  src="https://www.youtube.com/embed/39mhx5W43T0?start=92"
  title="YouTube video player"
  frameborder="0"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
  allowfullscreen></iframe>
```

Basicamente é isso a partir dai é estilizar o video e deixa-lo com ma apresentação melhor.

## Resumindo

Aprendemos:

- A utilizar fontes externas nas nossas páginas
- Como incorporar um mapa à nossa página
- Como incorporar um vídeo à nossa página

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_No_Css_Avante/02-Conteudo_exrteno/index.html)

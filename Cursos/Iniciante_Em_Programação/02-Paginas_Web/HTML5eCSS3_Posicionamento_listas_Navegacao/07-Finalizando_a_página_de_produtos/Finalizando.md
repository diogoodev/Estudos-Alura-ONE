# Rodapé

Para fazermos o rodapé do nosso site, devemos usar a tag `<footer>`no HTML. Assim delimitamos corretamente a área do rodapé, onde podemos colocar informações relevantes como links para contatos e informações sobre os direitos autorais do site.

## Background com imagem

Até agora, havíamos adicionando backgrounds com cores. Porém, no CSS, também podemos adicionar backgrounds com imagens, de um link externo ou do nosso próprio projeto. Quando fazemos isso o comportamento padrão é repetir varias vezes a imagem até preencher o espaço disponível.

Por exemplo:

```css
background-image: url('link do site ou da pasta onde está o background');
```

Podemos usar outras propriedades para controlar esse efeito como `background-repeat: none;` assim impedimos a imagem de se repetir ou `background-size: cover;`assim usamos a imagem para preencher todo o espaço disponível. Essas são algumas propriedades para controlar o background tem muitas outras disponíveis.

## Adicionando caracteres

Podemos adicionar emoji e caracteres especiais em nosso projeto através da Unicode, por exemplo, para inserir o símbolo de copyright no HTML.
O &coypy; é a a entidade que precisamos adicionar para que apareça o simbolo. Temos muitos outros exemplos que podem ser usado em diversos projetos [aqui](https://unicode-table.com/pt/) você pode conferir outros exemplos para adicionar no seu projeto.

Aqui um exemplo de como inserimos no nosso projeto:

```html
<p class="copyright">&copy; Copyright Barbearia - 2023</p>
```

Os caracteres Unicode estão disponíveis para serem usados como um complemento ao nosso texto.

## Resumindo

Aprendemos:

- Sobre a tag footer, para o rodapé da nossa página
- Que, com CSS, podemos colocar uma imagem de fundo em um elemento
- Quando colocamos uma imagem de fundo em um elemento, o CSS, por padrão, copia e cola a imagem diversas vezes até ocupar todo o espaço do elemento
- A tabela Unicode

Veja o resultado [aqui](/Cursos/Iniciante%20em%20Programa%C3%A7%C3%A3o/02-Paginas_Web/HTML5eCSS3_Posicionamento_listas_Navegacao/07-Finalizando_a_p%C3%A1gina_de_produtos/produtos.html)

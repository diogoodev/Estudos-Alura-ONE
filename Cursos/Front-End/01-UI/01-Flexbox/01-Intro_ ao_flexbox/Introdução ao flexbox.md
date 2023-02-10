# Conceitos iniciais

- O objetivo é arrumar o cabeçalho do projeto
- Para isso, é criado um arquivo novo chamado "flexbox.css"
- A ideia é não misturar o código do flexbox com o código de estilo geral
- O flexbox é uma solução prática e simples para reorganizar os objetos da página
- Um bom jeito de começar com o flexbox é definido quais elementos serão posicionados
- É preciso definir o flex no elemento container, que envolve o título e a nav
- Alinhamos o título e a nav no centro com o "align-items: center"

```css
.cabecalhoPrincipal .container {
  display: flex;
  align-items: center;
}
```

- Inserimos um espaço vazio entre o título e a lista de itens com o "justify-content: space-between"

```css
.cabecalhoPrincipal .container {
  display: flex;
  align-items: center;
  justify-content: space-between;
}
```

- O cabeçalho ficou alinhado corretamente.

## Alinhando Horizontalmente

Concluído o alinhamento horizontal utilizamos o Flexbox para alinhar o título e a nav. A intenção era distribuir os itens do menu horizontalmente. Ao inserir a propriedade display: flex no elemento "pai", .cabecalhoPrincipal-nav, conseguimos realocar os itens, fazendo com que eles ficassem lado a lado, mas usando apenas essa propriedade os elementos iriam ficar colados um no outro, para esse problema, o jeito era usar um margin-left nos li, adicionando assim um espaço entre os elementos, não conseguimos usar a propriedade space-between pois não tem espaço no elemento pai..

```css
.cabecalhoPrincipal-nav {
  display: flex;
}
```

## Principais diferenças entre as nossas propriedades de posicionamento

1. display: inline;

   - Nessa propriedade os elementos são posicionados um ao lado do outro, porem não conseguimos alterar o width e height dificultando o posicionamento em algumas situações

2. display: inline-block;

   - Com essa propriedade os elementos se posicionarem um do lado do outro e conseguimos alterar o width e height.Isso já torna o display: inline-block mais interessante, porem para posicionar precisamos fazer uso de porcentagem ou pixel e margin o que torna mais trabalhoso

3. float: left | right;

   - Com o float conseguimos posicionar onde queremos porem ele empurra o elemento que estamos mexendo e afeta os elemento abaixo o dele o que torna o seu uso mais trabalhoso. Também teríamos trabalho para alinha verticalmente precisaríamos usar as propriedades de margin e fazer contas.

4. display: flex;

- Com a propriedade flex conseguimos direcionar o posicionamento dos elementos filhos, fazemos isso baseado no espaço disponível do elemento pai. Isso permite um posicionamento mais preciso sem o uso de valores fixos o que faz com que os elementos se adaptem a tela tornando o layout mais responsivo.

Veja como ficou o projeto ao fim dessa unidade [aqui](index.html)

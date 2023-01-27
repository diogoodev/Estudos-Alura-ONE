# Salvando alterações

Quando criamos um repositório git ele não inicia o monitoramento automaticamente precisamos dar um start e pra isso temos dois comandos:

`git add`: Quando queremos adicionar apenas um arquivo usamos git add nomedoarquivo.
`git add .`: Quando temos muitos arquivos usamos o . no final para adicionarmos todos de uma vez.

Quando usamos o comando git add, o que estamos fazendo é colocando o arquivo em uma esteira pronto para ser comitado ou para ser removido.

`git rm`: é o comando que usamos para remover um arquivo que adicionamos usando o git add.

Quando realizamos o commit estamos salvando o arquivo naquele momento, adicionando um checkpoint nele. Como já adicionamos o arquivo anteriormente, agora usaremos o seguinte comando para o commit.

`git commit -m "Criando arquivo index.html com lista de cursos"`

Usamos -m para indicar que estamos passando uma mensagem junto ao commit essa mensagem deve ser sempre curta e descritiva.

root-commit: é um commit dentro de um master/main

## Definições no Git status

Quando executamos git status ele vem acompanhado de algumas informações, para entender melhor segue algumas definições.

- HEAD: Estado atual do nosso código, ou seja, onde o Git os colocou
- Working tree: Local onde os arquivos realmente estão sendo armazenados e editados
- index: Local onde o Git armazena o que será commitado, ou seja, o local entre a working tree e o repositório Git em si.

Mais informações [aqui](https://git-scm.com/book/pt-br/v2/Fundamentos-de-Git-Gravando-Altera%C3%A7%C3%B5es-em-Seu-Reposit%C3%B3rio)

## Vendo andamento do nosso projeto

Vamos verificar o histórico de alterações e as mensagens de todos os commits que fizemos.

`git log`: É o comando que usamos para fazer essas verificações, ele nos mostra diversas informações.

- Hash do commit: é como se fosse a identidade daquele commit, cada hash é único pro commit, não temos dois commits com o mesmo hash.
- Branch: Ou ramo que o commit se encontra, aqui temos a HEAD e a master. Sendo a HEAD o local onde estamos, no nosso código, e master o ramo.

Dentro do git log ainda temos, a autoria do commit o email, e a data do commit. O git sabe dessas informações por conta da configuração que fizemos usando o `git config --local` para cada projeto, ou, para a máquina toda, utilizando o `git config --global`. Usamos `git config --local user.name "seu nome aqui"` para adicionarmos um nome de usuário apenas a um projeto especifico.
Para verificar as informações que cadastramos usamos `git config user.name`, ou `git config user.email`

Para mais detalhes e outras configurações possíveis (até algumas mais avançadas), você pode conferir este [link](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration).

### Outras forma de visualização

Existem muitas alternativas e forma de visualizar os logs do git vamos ver outras maneiras.
`git log --online`: Nos permite visualizar todos os commits sendo que cada um ocupa uma única linha.
`git log -p`: Mostra mais detalhes e informações.

#### Filtros para visualização

`git log --pretty="format:%H"`: Com esse comando conseguimos ver apenas o hash
`git log --pretty="format:%h %s"`: Já com este vemos o hash resumido e a mensagem do commit.

Para mais filtros veja [aqui](https://devhints.io/git-log)

### Ignorando arquivos

Pode acontecer de que queiramos evitar que um repositório seja monitorado, para fazer isso vamos precisar saber sobre o arquivo especial que o git possui o .gitignore.
Todas as linhas que estiverem dentro dele serão lidas e os aquivos que possuírem o nome nessa lista serão ignorados pelo monitoramento do git.

### Quando fazer um commit?

Devemos gerar um commit sempre que a nossa base de código está em um estado do qual gostaríamos de nos lembrar. Nunca devemos ter commits de códigos que não funcionam, mas também não é interessante deixar para commitar apenas no final de uma feature.

Essa pode ser uma discussão sem fim e cada empresa ou equipe pode seguir uma estratégia diferente. Estude sobre o assunto, entenda o que faz mais sentido para você e sua equipe e seja feliz!

## Resumindo

Aprendemos:

- Que um commit é a forma de salvar um estado ou versão do nosso código;
- Como adicionar arquivos para serem commitados com git add;
- Como commitar arquivos, utilizando o comando git commit;
- Como verificar o histórico de commits, através do git log e algumas de suas opções:
  - git log --oneline
  - git log -p
  - git log --pretty="parametros de formatação"
- Como fazer o Git não monitorar arquivos, através do .gitignore
- Que não devemos realizar commit, ou seja, salvar um estado, da nossa aplicação que não esteja funcionando.

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/03-Git_Github/02-Iniciando/index.html)

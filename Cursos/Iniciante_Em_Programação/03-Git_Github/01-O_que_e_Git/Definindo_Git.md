# Git pra quê? e o que é?

O git surge a partir da pergunta: De que forma podemos controlar diferentes versões de um mesmo código?

Uma solução seria separar em um servidor especifico em que todos da equipe tem acesso, nesse servidor uma ferramenta identifica a versão enviada verifica se não é a mais recente, se não for não deixa o arquivo ser enviado. Ou seja antes do envio da alteração a pessoa que está enviado precisa baixar a as alterações que foram feitas por outras pessoas da equipe, para só então consiga enviar sua alterações.

Isso que chamamos de VCS (Version Control System) ou controle de versão , quando temos diferentes versões de um mesmo código precisamos de um controle de versão. E é isso que o git irá fazer!
Outros sistemas de controle de versão:

- CVS
- SVN
- Mercurial
- GIT

Uma das grandes vantagens do git é a possibilidade de copia do repositório do projeto na maquina local, para trabalhar offline, e depois envia-lo para outro repositório, chamamos isso de repositórios distribuídos.

## Comandos do git

- `git --version`: Conseguimos ver a versão do git instalada no computador.
- `git init`: Informamos para o git que na pasta tem um repositório, então ele inicializa um repositório no diretório em que o comando for executado. A partir deste comando, o Git poderá gerenciar as modificações realizadas nos arquivos.
- `git status`: mostra o estado do nosso repositório, ou seja, quais arquivos foram alterados, ou não. Mostra o que está rodando no ramo, ou branch master(`On branch master`) e o que não possui nenhum commit(`No commits yet`). Também vemos os arquivos que não estão sendo monitorados `Untracked files`.
  Nesse momento como temos um arquivo que não tá sendo monitorado ele informa que devemos usar o comando:
  - `git add`: Usando ele seguido do nome do arquivo conseguimos inclui-lo no que vamos "commitar"

## Configurando localmente

```git
git config --local user.name "Seu nome aqui"
git config --local user.email "seu@email.aqui"
```

Com esses comandos informamos para o git quem é o autor no computador do repositório local, assim ele armazena corretamente os dados do autor de cada uma das alterações no código.

### Resumindo

Aprendemos:

- O que são (e para que servem) sistemas de controle de versões e como eles podem ajudar o nosso fluxo de desenvolvimento
  - Como eles nos ajudam a manter um histórico de alterações;
  - Como eles nos ajudam a ter controle sobre cada alteração no código;
  - Como eles nos ajudam para que uma alteração de determinada pessoa não influencie na alteração realizada por outra;
- Que com o comando git init nós conseguimos criar um repositório Git;
- Como analisar o estado do nosso repositório através do comando git status.

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/03-Git_Github/01-O_que_e_Git/index.html)

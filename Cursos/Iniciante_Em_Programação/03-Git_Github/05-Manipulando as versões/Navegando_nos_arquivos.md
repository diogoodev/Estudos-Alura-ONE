# Ctrl+z no Git

## Desfazendo alterações antes do git add, ou seja, desfazendo alterações antes de adicioná-las

Em um único arquivo poderíamos usar o ctrl+z, porem em um projeto grande com muitas alterações a forma correta de reverter as alterações antes de ter usado o git add é:

`git checkout -- seguido do que queremos desfazer`

Assim conseguimos entender que o git checkout, portanto, serve para navegarmos em estados do repositório, seja por meio de branches ou desfazendo modificações no arquivo.

## Desfazendo alterações depois de adicioná-las, mas antes de commitá-las

Nesse caso já rodamos o git add e o arquivo já está marcado para ser commitado então vamos desmarcar usando o git reset.

`git reset HEAD seguido do nome do arquivo`: que será desmarcado como algo que precisa passar pelo commit.

Logo em seguida usarmos o:

`git checkout -- nome do arquivo que desmarcamos`

Assim desfazemos as alterações feitas no arquivo.

## Desfazendo após realizar o commit

Para desfazer essa alteração precisaremos do hash do commit então usamos o `git log` e copiamos o hash que precisamos.

Então usamos o git revert.

` git revert seguido do hash`: fará com que o commit informado seja desfeito, criando outro.

## Guardando para depois

No git temos um conceito denominado **Stash**, por meio dele conseguimos guardar alterações em um local temporário, sem a necessidade de um commit ou de se gerar um commit pra isso.
Nesse caso usamos o `git stash`.

`git stash list`: Conseguimos listar tudo que está salvo temporariamente.

Para pegarmos os dados salvos temporariamente e usarmos efetivamente no nosso código, podemos fazer de duas maneira.

**Modo 1**: Executamos o `git stash list` e passamos o numero da stash em `git stash apply 0`, assim as modificações serão aplicadas no código e continuarão salvas temporariamente. E para remover podemos usar o `git stash drop` assim excluímos o arquivo temporário que havíamos criado no inicio.

**Modo 2**: Nesse modo vamos pegar as alterações da stash e já remover o arquivo temporário.
Usamos o `git stash pop`, ele realiza o merge das alterações que tínhamos feito e e aplica as alterações que estão na stash.

**_Importante_**: O git stash é muito util quando precisamos pausar o desenvolvimento de alguma funcionalidade, ou correção, antes de finalizar, talvez não seja interessante realizar um commit, pois o nosso código pode não estar funcionando ainda. Nesse caso é interessante salvar o trabalho para podermos voltar a ele depois.

## Observando o projeto

Podemos navegar entre as versões do nosso projeto de forma desanexada do controle de versão. Usando o já conhecido `git checkout`, porem agora usamos junto o hash especifico para onde queremos ir, podemos pegar esse hash como `git log --oneline`, aqui temos os sete primeiros caracteres que serão suficientes para realizamos a navegação, assim:

`git checkout hash`: Com esse comando não estaremos em nenhuma branch, mas sim em um commit especifico.

Tudo que é feito,commits, apos executar o `git checkout hash` é descartado quando retornamos a master. Para salvar as alterações é necessário criar uma nova branch

## Resumindo

Aprendemos:

- Que o Git pode nos ajudar a desfazer alterações que não vamos utilizar;
- Que, para desfazer uma alteração antes de adicioná-la para commit (com git add), podemos utilizar o comando `git checkout -- <arquivos>`;
- Que, para desfazer uma alteração após adicioná-la para commit, antes precisamos executar o `git reset HEAD <arquivos>` e depois podemos desfazê-las com `git checkout -- <arquivos>`;
- Que, para revertermos as alterações realizadas em um commit, o comando git revert pode ser a solução;
- Que o comando git revert gera um novo commit informando que alterações foram desfeitas;
- Que, para guardar um trabalho para retomá-lo posteriormente, podemos utilizar o git stash;
- Que, para visualizar quais alterações estão na stash, podemos utilizar o comando git stash list;
- Que, com o comando `git stash apply <numero>`, podemos aplicar uma alteração específica da stash;
- Que o comando `git stash drop <numero>` remove determinado item da stash;
- Que o comando `git stash pop` aplica e remove a última alteração que foi adicionada na stash;
- Que o git checkout serve para deixar a cópia do código da nossa aplicação no estado que desejarmos:
  - `git checkout <branch>` deixa o código no estado de uma branch com o nome `<branch>;`
  - git checkout `<hash>`deixa o código no estado do commit com o hash `<hash>`

Veja o resultado [aqui](https://github.com/diogoodev/alura-git)

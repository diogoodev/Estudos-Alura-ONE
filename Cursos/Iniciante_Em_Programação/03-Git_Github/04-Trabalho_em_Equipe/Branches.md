# Branches

Branches ("ramos") são utilizados para desenvolver funcionalidades isoladas umas das outras. A branch master é a branch "padrão" quando você cria um repositório.
A necessidade do uso de branch surge a parti do momento que os desenvolvedores passam a trabalhar em equipe e precisam produzir no mesmo código, assim podemos trabalhar em partes do código sem que se afete o todo.

`git branch`: mostra as branch do git, por padrão inicial aparecerá apenas a master.
`git branch nome_da_nova_branch`: Assim conseguimos adicionar uma nova branch no repositório.
`git checkout nome_da_nova_branch`: com esse comando mudamos para nova branch manualmente, precisamos fazer isso para que os commits seja feitos nessa nova brach.
`git checkout -b nome_da_nova_branch`: com esse comando criamos a brach e já mudamos para a nova branch.

## merge

`git merge nome_da_branch`: Estando na branch que queremos juntar acionamos esse comando assim o git automaticamente criará um commit da branch atual, chamamos de commit de merge, com a branch que selecionamos no comando, ocorrendo assim a junção das duas branches.
Desta forma colocaremos o HEAD na branch master, ou seja, faremos com que o nosso código esteja no estado que o deixamos com o último commit na master. Depois, uniremos o trabalho da branch anterior com a branch atual (master)

## Resumindo

Aprendemos:

Veja o resultado [aqui](https://github.com/diogoodev/alura-git)

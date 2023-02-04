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

## Atualizando a branch

`git rebase nome_da_branch`: Git pegará os commits na branch "nome_da_branch" e irá atualizar na master desde que estejamos na master. Assim a master passará a conter todos os commits de "nome_da_branch" além do commit que havia nela mesmo.
O rebase atualiza a branch, mantendo o trabalho dela como sendo o último.

### Diferença merge x rebase

O merge junta os trabalhos e gera um merge commit. O rebase aplica os commits de outra branch na branch atual.
Com isso, evitamos os commits de merge. Há uma longa discussão sobre o que é "melhor": rebase ou merge. Estude, pesquise, e tire suas próprias conclusões. [Aqui](https://medium.datadriveninvestor.com/git-rebase-vs-merge-cc5199edd77c) tem um artigo (de milhares outros) que cita o assunto.

## Visualizando

`git log --graph`: Serão exibidas linhas específicas representando o desenvolvimento

## Resumindo

Aprendemos:

Veja o resultado [aqui](https://github.com/diogoodev/alura-git)

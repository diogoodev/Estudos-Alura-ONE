# Vendo Alterações

`git diff`: Usamos para conferiremos as diferenças entre commits, branches, etc. Ele funciona de duas formas, primeiro mostra as as diferenças entre o que ainda não foi salvo e o que está salvo.
`git diff hash_do_commit..hash_do_commit`: segundo podemos informar dois commits, branches, etc para vermos essa diferença.

## Tags e releases: Gerando uma versão

`git log -n 2`: Conseguimos acessar o penúltimo commit

### Tags

São como checkpoints do nosso código, com elas fazermos a marcação de um ponto fixo no código e tudo que tem nela não será alterado, as alterações feitas serão aplicadas em uma outra versão.

`git tag -a seguido do nome que damos a ela`

Podemos incluir uma mensagem:

`git tag -a v0.1.0 -m "Lançando a primeira versão (BETA) da aplicação de cursos"`

`git push local v0.1.0`: Enviamos a tag para o servidor

`git remote -v`: Lista os repositórios que estamos usando.

`git push origin v0.1.0`: enviamos a tag para o github

Quando enviamos a tag para o github é gerado uma Release, ou seja, conseguimos baixar um arquivo compactado com o nosso código neste ponto. O GitHub nos dá a possibilidade de baixar um arquivo compactado contendo o código no estado em que a tag foi gerada.

## Resumindo

Aprendemos:

- Que é possível visualizar quais alterações foram realizadas em cada arquivo, com o comando git diff;
- Que, digitando apenas git diff, vemos as alterações em nossos arquivos que não foram adicionadas para commit (com git add);
- Que é possível comparar as alterações entre duas branches com `git diff <branch1>..<branch2>`
- Que é possível comparar as alterações feitas entre um commit e outro, através do comando `git diff <commit1>..<commit2>`;
- Que o Git nos possibilita salvar marcos da nossa aplicação, como por exemplo, lançamento de versões, através do git tag;
- Que o comando git tag -a é utilizado para gerar uma nova tag;
- As Releases do GitHub, que são geradas para cada tag do Git criada em nosso repositório.

Veja o resultado [aqui](https://github.com/diogoodev/alura-git)

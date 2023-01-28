# Repositórios remotos

Vamos criar um servidor remoto para que possamos armazenar as alterações dos nossos arquivos.
Começamos usando o comando `mkdir servidor` para criarmos a pasta como nome servidor
`cd servidor`: com esse comando acessamos a pasta servidor. Usamos o git init para inciarmos o repositório.
`git init --bare`: Com este comando indicamos que o repositório é puro, ou seja irá conter apenas as alterações dos arquivos.
Uma das vantagens de usar essa abordagem é poder adicionar facilmente esse repositório a outro.
Com este comando nós criamos um repositório que não terá a working tree, ou seja, não conterá uma cópia dos nossos arquivos. Como o repositório servirá apenas como servidor, para que outros membros da equipe sincronizem seus trabalhos, poupamos espaço de armazenamento desta forma.
Ao fazermos essas modificações o Git nos fornece o caminho para a pasta, que serve como nosso servidor vamos copiar esse caminho e usarmos daqui a pouco.
Voltamos para a pasta que tínhamos criado primeiro nela executamos o comando git remote.

`git remote`: Todos os repositórios remotos que o repositório local conhece são listados.

`git remote add local caminho do servidor`: Usando esse comando teremos um link do nosso repositório local com o repositório remoto. Apos local, incluiremos, primeiro o nome que queremos para a pasta e depois um caminho onde o servidor está, que poderá ser uma URL de um servidor pela internet, um endereço na rede, inclusive de outro computador, qualquer endereço válido para um repositório Git. Neste caso, será uma pasta no próprio servidor.

`git remote -v`: conseguimos ver o endereço do servidor

`fetch`: dados deste caminho serão buscados
`push`: enviados para este mesmo caminho

## Clonado repositório

`git clone caminho do repositório`: com esse comando conseguimos adicionar repositórios remotos para sincronizar os dados, além disso traz um repositório remoto para o nosso computador, criando um repositório local.
`git clone caminho do repositório projeto`: Quando colocamos um nome após o enderenço, o repositório que clonamos receberá esse nome.

## Enviando os dados para o servidor

`git push`: É o comando que empurra as modificações para o local que queremos.
`git push repositório master`: As vezes somente o git push não será o suficiente precisamos ser mais específicos. Desta forma, nós enviamos as alterações em nosso branch master para o repositório remoto.

### Buscando dados no servidor

`git pull`: Com o esse comando conseguimos puxar os arquivos que foram enviados para o servidor
`git pull repositório master`: Com esse comando conseguimos trazer os dados que estiverem no repositório remoto.
`git remote rename origin local`: Com esse comando conseguimos renomear a pasta de um repositório remoto, primeiro vem o nome que vamos mudar e depois o novo nome que daremos para o repositório.

## Entendendo Github

## Resumindo

Aprendemos:

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/03-Git_Github/02-Iniciando/index.html)

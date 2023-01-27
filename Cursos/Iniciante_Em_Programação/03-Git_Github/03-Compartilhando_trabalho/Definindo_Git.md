# Repositórios remotos

Vamos criar um servidor remoto para que possamos armazenar as alterações dos nossos arquivos.
Começamos usando o comando `mkdir servidor` para criarmos a pasta como nome servidor
`cd servidor`: com esse comando acessamos a pasta servidor. Usamos o git init para inciarmos o repositório.
`git init --bare`: Com este comando indicamos que o repositório é puro, ou seja irá conter apenas as alterações dos arquivos.
Uma das vantagens de usar essa abordagem é poder adicionar facilmente esse repositório a outro.
Ao fazermos essas modificações o Git nos fornece o caminho para a pasta, que serve como nosso servidor vamos copiar esse caminho e usarmos daqui a pouco.
Voltamos para a pasta que tínhamos criado primeiro nela executamos o comando git remote.
`git remote`: Todos os repositórios remotos que o repositório local conhece são listados.

`git remote add local caminho do servidor`: com esse comando adicionamos um repositório remoto. Apos local, incluiremos um caminho, que poderá ser uma URL de um servidor pela internet, um endereço na rede, inclusive de outro computador, qualquer endereço válido para um repositório Git. Neste caso, será uma pasta no próprio servidor.

`git remote -v`: conseguimos ver o endereço do servidor

`fetch`: dados deste caminho serão buscados
`push`: enviados para este mesmo caminho

## Clonado repositório

`git clone caminho do repositório`: com esse comando conseguimos trazer todos os arquivos do enderenço que digitamos.
`git clone caminho do repositório projeto`: Quando colocamos um nome após o enderenço, o repositório que clonamos receberá esse nome.

## Resumindo

Aprendemos:

Veja o resultado [aqui](/Cursos/Iniciante_Em_Programa%C3%A7%C3%A3o/03-Git_Github/02-Iniciando/index.html)

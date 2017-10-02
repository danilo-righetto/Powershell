# Powershell - Active Directory Report

Através desse módulo é possível extrair os grupos e seus respectivos membros além dos computadores que estão no domínio.

Comando utilizados:
  - [Get-ADGroup](https://docs.microsoft.com/en-us/powershell/module/addsadministration/get-adgroup?view=win10-ps) - Para buscar os grupos do Active Directory
  - [Get-ADComputer](https://docs.microsoft.com/en-us/powershell/module/addsadministration/get-adcomputer?view=win10-ps) - Para buscar os computadores que estão no domínio pelo Active Directory
  - [Get-Date](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-date?view=powershell-5.1) - Para pegar o valor da data atual

Importante
----

> Antes de executar qualquer conteúdo desse projeto leia a documentação (readme.md) de cada arquivo. Não me responsabilizo por qualquer dano ao seu computador.

Dúvidas envie um e-mail para: [Danilo Righetto](mailto:danilonewtrue@gmail.com)

Ou procure mais informações no site: [Microsoft Documentation](https://docs.microsoft.com/pt-br/powershell/scripting/getting-started/getting-started-with-windows-powershell?view=powershell-5.1)

#### Observação: para o desenvolvimento dos Módulos e Scripts aqui descritos estou usando a [versão 5.1 do Powershell]()

### Pré-requisitos

Instalação do Módulo do Active Directory no seu Windows Powershell.

- Passo 1: Acesse o site do módulo [Active Directory PowerShell Module](https://gallery.technet.microsoft.com/Install-the-Active-fd32e541) e siga as instruções de download.
- Passo 2: Após fazer o download do arquivo "Install-ADModule.p-s-1.txt" renomeie para "Install-ADModule.p-s-1.ps1"
- Passo 3: Execute o script como administrador

### Execução

Para a execução do Módulo acesse via Terminal (Console) do Powershell a pasta onde você baixou o arquivo e execute o comando abaixo para importar o módulo:

```sh
$ Import-Module .\ad-group-computer.ps1
```
Em seguida execute a função [PesquisaInfoAD]() passando como parâmetro o domínio que você deseja extrair as informações:

```sh
$ PesquisaInfoAD -Dominio "seu-dominio"
```

### Instalação do Módulo

Caso você queira tornar esse módulo permanente do seu "Windows Powershell" execute o comando abaixo (Como Administrador):

```sh
$ Install-Module .\ad-group-computer.psm1 -Force
```

E Pronto. Sempre que você digitar [PesquisaInfoAD]() no terminal do Powershell você terá acesso ao módulo.

### Relatório de Execução

Por padrão esse script gera a pasta "relatorio-ad-group" no seu disco "C:\" com um arquivo ".txt" contendo as informações do que foram extraidas ou não no momento da execução e para isso o módulo precisa ser executado com privilégios mais altos (Como Administrador).

Acesse no seu computador a pasta "C:\relatorio-ad-group\" e veja os arquivos que foram criados.

### Versões do Powershell

Essas são as versões do Powershell existentes:

| Versão | S.O |
| ------ | ------ |
| Powershell 1.0 | Windows XP SP2, Windows Server 2003 SP1 e Windows Vista |
| Powershell 2.0 | Windows 7 e Windows Server 2008 R2 |
| Powershell 3.0 | Windows 8 e Windows Server 2012 |
| Powershell 4.0 | Windows 8.1 e Windows Server 2012 R2 |
| Powershell 5.0 | Windows Server 2016 e Windows 10 |


License
----

MIT License

Copyright (c) 2017 Danilo Righetto

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


Software Livre - \o/
----

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [dillinger]: <https://dillinger.io/>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [Ashley McGlone]: <https://gallery.technet.microsoft.com/Install-the-Active-fd32e541>

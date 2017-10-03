# Powershell - Backup and Report

Através desse módulo é possível realizar o backup dos drivers do windows e da imagem do sistema operacional além de listar os programas que estão instalados, as informações sobre marca e modelo, as informações sobre a BIOS e os 10 processos que estão consumindo mais memória atualmente.

Comando utilizados:
  - [Export-WindowsDriver](https://docs.microsoft.com/en-us/powershell/module/dism/export-windowsdriver?view=win10-ps) - Para exportar os drivers do Windows
  - [Wbadmin start backup](https://technet.microsoft.com/pt-br/library/cc742083(v=ws.10) - Para realizar um backup da imagem do sistema
  - [Get-ItemProperty](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-itemproperty?view=powershell-5.1) - Para buscar dados de uma propriedade
  - [Get-WmiObject](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-wmiobject?view=powershell-5.1) - Para buscar dados de um objeto nativo do Windows
  - [Get-Date](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/get-date?view=powershell-5.1) - Para pegar o valor da data atual

Importante
----

> Antes de executar qualquer conteúdo desse projeto leia a documentação (readme.md) de cada arquivo. Não me responsabilizo por qualquer dano ao seu computador.

Dúvidas envie um e-mail para: [Danilo Righetto](mailto:danilonewtrue@gmail.com)

Ou procure mais informações no site: [Microsoft Documentation](https://docs.microsoft.com/pt-br/powershell/scripting/getting-started/getting-started-with-windows-powershell?view=powershell-5.1)

#### Observação: para o desenvolvimento dos Módulos e Scripts aqui descritos estou usando a [versão 5.1 do Powershell]()

### Execução

Para a execução do Módulo acesse via Terminal (Console) do Powershell a pasta onde você baixou o arquivo e execute o comando abaixo para importar o módulo:

```sh
$ Import-Module .\computer-report.ps1
```
Em seguida execute a função [RelatorioWorkstation]() passando como parâmetro o caminho para o backup dos drivers e para a criação da imagem do sistema:

```sh
$ RelatorioWorkstation -DriverBackup "caminho-para-backup-dos-drivers" -ImageBackup "caminho-para-backup-da-imagem"
```

### Instalação do Módulo

Caso você queira tornar esse módulo permanente do seu "Windows Powershell" execute o comando abaixo (Como Administrador):

```sh
$ Install-Module .\computer-report.psm1 -Force
```

E Pronto. Sempre que você digitar [RelatorioWorkstation]() no terminal do Powershell você terá acesso ao módulo.

### Relatório de Execução

Por padrão esse script gera a pasta "report-computers" no seu disco "C:\" com um arquivo ".txt" contendo as informações do que foram extraídas ou não no momento da execução e para isso o módulo precisa ser executado com privilégios mais altos (Como Administrador).

Acesse no seu computador a pasta "C:\report-computers\" e veja os arquivos que foram criados.

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

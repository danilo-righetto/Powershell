# Powershell - Git Update Script

Através desse script é possível automatizar a verificação e atualização dos seus repositórios Git.

Comando "Git" utilizados:
  - [Git status](https://git-scm.com/docs/git-status) - Para verificar o status do seu projeto
  - [Git pull](https://git-scm.com/docs/git-pull) - Para fazer o download das últimas alterações (commits)
  - [Git log --shortstat -3](https://git-scm.com/docs/git-log) - Para mostrar as últimas 3 principais alterações

Importante
----

> Antes de executar qualquer conteúdo desse projeto leia a documentação (readme.md) de cada arquivo. Não me responsabilizo por qualquer dano ao seu computador.

Dúvidas envie um e-mail para: [Danilo Righetto](mailto:danilonewtrue@gmail.com)

Ou procure mais informações no site: [Microsoft Documentation](https://docs.microsoft.com/pt-br/powershell/scripting/getting-started/getting-started-with-windows-powershell?view=powershell-5.1)


#### Observação: para o desenvolvimento dos Módulos e Scripts aqui descritos estou usando a [versão 5.1 do Powershell]()

### Execução

Para a execução dos Scripts acesse via Terminal (Console) do Powershell a pasta onde você baixou o script.

Dentro do arquivo ".\git-pull.ps1" altere a linha 22 mudando o valor da variável "$caminho" para a pasta de sua necessidade. Em seguida salve o mesmo e execute o comando abaixo:

```sh
$ .\git-pull.ps1
```

### Execução Automática

Você pode automatizar a execução desse script através do [Agendador de Tarefas]() do Windows.

Ao criar a nova tarefa na aba "Ações" você pode definir no campo "Programa/script" o caminho de execução do Powershell como no exemplo abaixo. E no campo "Adicione Argumentos" você defini o local do script que deverá ser executado.

```sh
$ Programa/script: "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$ Adicione argumentos: -File "C:\user\seu-nome\sua-pasta\seu-script.ps1"
```

### Relatório de Execução

Por padrão esse script gera a pasta "relatorio-git" no seu disco "C:\" com um arquivo ".txt" contendo as informações do que foi atualizado ou não no momento da execução e para isso o script precisa ser executado com privilégios mais altos (Como Administrador).

Acesse no seu computador a pasta "C:\relatorio-git\" e veja o arquivo que foi criado.

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

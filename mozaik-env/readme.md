# Powershell - Mozaik Dashboard ENV Script

Através desse script é possível iniciar a dashboard Mozaik.Rocks (http://mozaik.rocks/).

Caso você ainda não tenha o Nodejs instalado [clique aqui](https://nodejs.org/en/) e caso você não tenha instalado o Mozaik.Rocks instalado [clique aqui](http://mozaik.rocks/) e saiba mais.

Comandos utilizados:
  - [cd C:\mozaik\mozaik-demo-git](http://mozaik.rocks/) - Para acessar a pasta que contem o projeto Mozaik.Rocks
  - [npm install](https://nodejs.org/docs/) - Para realizar a atualização das dependência do Mozaik.Rocks
  - [npm run build](https://nodejs.org/docs/) - Para realizar o build do projeto Mozaik.Rocks
  - [node server.js conf/config-github.yml](https://nodejs.org/docs/) - Para inicializar o servidor com o projeto Mozaik.Rocks previamente configurado

Importante
----

> Antes de executar qualquer conteúdo desse projeto leia a documentação (readme.md) de cada arquivo. Não me responsabilizo por qualquer dano ao seu computador.

Dúvidas envie um e-mail para: [Danilo Righetto](mailto:danilonewtrue@gmail.com)

Ou procure mais informações no site: [Microsoft Documentation](https://docs.microsoft.com/pt-br/powershell/scripting/getting-started/getting-started-with-windows-powershell?view=powershell-5.1)

#### Observação: para o desenvolvimento dos Módulos e Scripts aqui descritos estou usando a [versão 5.1 do Powershell]()

### Execução

Para a execução dos Scripts acesse via Terminal (Console) do Powershell a pasta onde você baixou o script.

Execute o comando abaixo:

```sh
$ .\mozaik.ps1
```

E Pronto. Agora o script vai se encarregar de executar todos os passos previamente configurados.

### Execução Automática

Você pode automatizar a execução desse script através do [Agendador de Tarefas]() do Windows.

Ao criar a nova tarefa na aba "Ações" você pode definir no campo "Programa/script" o caminho de execução do Powershell como no exemplo abaixo. E no campo "Adicione Argumentos" você defini o local do script que deverá ser executado.

```sh
$ Programa/script: "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe"
$ Adicione argumentos: -File "C:\user\seu-nome\sua-pasta\seu-script.ps1"
```

### Relatório de Execução

Por padrão esse script gera a pasta "relatorio-mozaik" no seu disco "C:\" com um arquivo ".txt" contendo as informações do que foi atualizado ou não no momento da execução e para isso o script precisa ser executado com privilégios mais altos (Como Administrador).

Acesse no seu computador a pasta "C:\relatorio-mozaik\" e veja o arquivo que foi criado.

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
   [Nodejs]: <https://nodejs.org/docs/>

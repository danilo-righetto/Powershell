# Powershell - Modules and Scripts

Através desse repositório vou disponibilizar:

  - Módulos
  - Scripts

Feitos em Powershell (".psm1",".ps1",".psd1")

Importante
----

> Antes de executar qualquer conteúdo desse projeto leia a documentação (readme.md) de cada arquivo. Não me responsabilizo por qualquer dano ao seu computador.

Dúvidas envie um e-mail para: [Danilo Righetto](mailto:danilonewtrue@gmail.com)

Ou procure mais informações no site: [Microsoft Documentation](https://docs.microsoft.com/pt-br/powershell/scripting/getting-started/getting-started-with-windows-powershell?view=powershell-5.1)

### Ambiente de Desenvolvimento

Antes de executar qualquer módulo ou script precisamos antes preparar o ambiente.

Primeiramente abra o [Windows Powershell]() e verifique qual a versão do Powershell que está instalada no seu computador através do comando:

```sh
$ Get-host
```

Verifique se o seu computador tem autorização para executar Scripts e Módulos sem restrições através do comando:

```sh
$ Get-ExecutionPolicy
```

Caso o resultado do comando acima seja diferente de "Unrestricted" execute o comando como Administrador abaixo:

```sh
$ Set-ExecutionPolicy Unrestricted
```

E Pronto.

#### Observação: para o desenvolvimento dos Módulos e Scripts aqui descritos estou usando a [versão 5.1 do Powershell]()

### Execução

Para a execução dos Scripts acesse via Terminal (Console) do Powershell a pasta onde você baixou o script e execute usando o comando abaixo como exemplo:

```sh
$ .\seu-script.ps1
```

### Versões do Powershell

Essas são as versões do Powershell existentes:

| Versão | S.O |
| ------ | ------ |
| Powershell 1.0 | Windows XP SP2, Windows Server 2003 SP1 e Windows Vista |
| Powershell 2.0 | Windows 7 e Windows Server 2008 R2 |
| Powershell 3.0 | Windows 8 e Windows Server 2012 |
| Powershell 4.0 | Windows 8.1 e Windows Server 2012 R2 |
| Powershell 5.0 | Windows Server 2016 e Windows 10 |

## Documentação

Acesse a pasta `Documents` para mais informações sobre o projeto.

## Autor

#### [Danilo Righetto](https://danilo-righetto.github.io/) - Analista de Sistemas

License
----

MIT


**Software Livre - \o/**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>

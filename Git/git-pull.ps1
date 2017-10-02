<#----------------------------------------------------------------------------------------------------------------
Autor: Danilo Righetto
------------------------------------------------------------------------------------------------------------------
Descrição:
Atualizador dos repositórios Git do Workstation
------------------------------------------------------------------------------------------------------------------
Como executar:
Passo 1: Abra o powershell no seu computador
(Como administrador)

Passo 2: Execute o comando:
$Set-ExecutionPolicy Unrestricted
Observação: Ele concede acesso de executar para qualquer script no seu computador.
Para mais informações acesse:
https://social.technet.microsoft.com/wiki/pt-br/contents/articles/29932.como-habilitar-a-execucao-de-scripts-em-powershell.aspx

Passo 3: Troque o valor da Variavél "$caminho" pelo caminho da sua pasta em que se encontram os seus reposiórios Git e Pronto
----------------------------------------------------------------------------------------------------------------#>

echo "-------------------------------------------------------" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
$data = Get-Date -UFormat "%d-%m-%Y-%H-%M"
$caminho = 'C:\wksp'
echo "Realizando atualização dos repositorio do Git ... Data:$data" #| Out-File -FilePath C:\wksp\relatorioGit-$data.txt -Append
foreach($folders in Get-ChildItem -Path $caminho){
    foreach($folders2 in Get-ChildItem -Path $folders.FullName){
        if((Get-Item $folders2.FullName) -is [System.IO.DirectoryInfo]){
            echo "#############################################################" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
            echo "Executando na pasta: $folders2 ...." | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
            $gitstatus = $folders2.FullName
            Invoke-Expression -Command:"git --git-dir=$gitstatus\.git --work-tree=$gitstatus status" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
            Invoke-Expression -Command:"git --git-dir=$gitstatus\.git --work-tree=$gitstatus pull" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
            Invoke-Expression -Command:"git --git-dir=$gitstatus\.git --work-tree=$gitstatus log --shortstat -3" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
            echo "#############################################################" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
        }
    }
}
echo "-------------------------------------------------------" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force

<#----------------------------------------------------------------------------------------------------------------
Para listar as propriedades de um objeto:
| Format-List -Property *
| Format-List *
| Get-Member
| Select *
| Format-Table -Property Path,Name,Id,Company -
AutoSize
[string]$comand = $file.FullName
Invoke-Expression -Command:"git --git-dir=$comand\.git --work-tree=$comand status" | out-file C:\wksp\relatorio-git\status-$data2.txt -Append -Force
Invoke-Expression -Command:"git --git-dir=$comand\.git --work-tree=$comand pull" | out-file C:\wksp\relatorio-git\pull-$data2.txt -Append -Force

Old Commands:
Invoke-Expression -Command "git -C $gitstatus status" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
Invoke-Expression -Command "git -C $gitstatus pull" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
Invoke-Expression -Command "git -C $gitstatus log --shortstat -3" | Out-File -FilePath C:\relatorio-git\relatorioGit-$data.txt -Append -Force
----------------------------------------------------------------------------------------------------------------#>

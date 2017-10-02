<#----------------------------------------------------------------------------------------------------------------
Autor: Danilo Righetto
------------------------------------------------------------------------------------------------------------------
Descrição:
Atualizador do Composer
------------------------------------------------------------------------------------------------------------------
Como executar:
Passo 1: Abra o powershell no seu computador
(Como administrador)

Passo 2: Execute o comando:
$Set-ExecutionPolicy Unrestricted
Observação: Ele concede acesso de executar para qualquer script no seu computador.
Para mais informações acesse:
https://social.technet.microsoft.com/wiki/pt-br/contents/articles/29932.como-habilitar-a-execucao-de-scripts-em-powershell.aspx

Passo 3:
Leia a documentação através do arquivo "readme.md"
----------------------------------------------------------------------------------------------------------------#>

echo "-------------------------------------------------------" | Out-File -FilePath C:\relatorio-composer\composer-$data.txt -Append -Force
$data = Get-Date -UFormat "%d-%m-%Y-%H-%M"
echo "Realizando atualização do Composer ... Data:$data" #| Out-File -FilePath C:\wksp\relatorioGit-$data.txt -Append
echo "#############################################################" | Out-File -FilePath C:\relatorio-composer\composer-$data.txt -Append -Force
echo "Executando :  ...." | Out-File -FilePath C:\relatorio-composer\composer-$data.txt -Append -Force
Invoke-Expression -Command:"composer --version" | Out-File -FilePath C:\relatorio-composer\composer-$data.txt -Append -Force
Invoke-Expression -Command:"composer self-update" | Out-File -FilePath C:\relatorio-composer\composer-$data.txt -Append -Force
echo "#############################################################" | Out-File -FilePath C:\relatorio-composer\composer-$data.txt -Append -Force
echo "-------------------------------------------------------" | Out-File -FilePath C:\relatorio-composer\composer-$data.txt -Append -Force

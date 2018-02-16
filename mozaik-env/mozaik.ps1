<#----------------------------------------------------------------------------------------------------------------
Autor: Danilo Righetto
------------------------------------------------------------------------------------------------------------------
Descrição:
Comandos para inciar o http://mozaik.rocks/ Dashboard
Que é um dashboard sobre commits entre outras informações
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

echo "-------------------------------------------------------" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
$data = Get-Date -UFormat "%d-%m-%Y-%H-%M"
echo "Realizando o inicio do Dashboard Mozaik ... Data:$data"
echo "#############################################################" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
echo "Executando :  ...." | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
Invoke-Expression -Command:"cd C:\mozaik\mozaik-demo-git" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
Invoke-Expression -Command:"npm install" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
Invoke-Expression -Command:"npm run build" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
Invoke-Expression -Command:"node server.js conf/config-github.yml" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
Start-Process "localhost:5000" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
echo "#############################################################" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
echo "-------------------------------------------------------" | Out-File -FilePath C:\relatorio-mozaik\mozaik-$data.txt -Append -Force
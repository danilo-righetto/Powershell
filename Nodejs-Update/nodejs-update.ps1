<#----------------------------------------------------------------------------------------------------------------
Autor: Danilo Righetto
------------------------------------------------------------------------------------------------------------------
Descrição:
Atualizador do Nodejs
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

echo "-------------------------------------------------------" | Out-File -FilePath C:\relatorio-nodejs\nodejs-$data.txt -Append -Force
$data = Get-Date -UFormat "%d-%m-%Y-%H-%M"
echo "Realizando atualização do Nodejs ... Data:$data"
echo "#############################################################" | Out-File -FilePath C:\relatorio-nodejs\nodejs-$data.txt -Append -Force
echo "Executando :  ...." | Out-File -FilePath C:\relatorio-nodejs\nodejs-$data.txt -Append -Force
Invoke-Expression -Command:"node -v" | Out-File -FilePath C:\relatorio-nodejs\nodejs-$data.txt -Append -Force
Invoke-Expression -Command:"npm i -g npm" | Out-File -FilePath C:\relatorio-nodejs\nodejs-$data.txt -Append -Force
Invoke-Expression -Command:"npm update -g" | Out-File -FilePath C:\relatorio-nodejs\nodejs-$data.txt -Append -Force
echo "#############################################################" | Out-File -FilePath C:\relatorio-nodejs\nodejs-$data.txt -Append -Force
echo "-------------------------------------------------------" | Out-File -FilePath C:\relatorio-nodejs\nodejs-$data.txt -Append -Force

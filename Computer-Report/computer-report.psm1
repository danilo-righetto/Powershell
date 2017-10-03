<#----------------------------------------------------------------------------------------------------------------
Autor: Danilo Righetto
------------------------------------------------------------------------------------------------------------------
Descrição:
Relatorio do Computador
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
function RelatorioWorkstation{
  param ([string]$DriverBackup = $null, [string]$ImageBackup = $null,)
  if($DriverBackup -ne $null -and $ImageBackup -ne $null){
    Try{
      if((Test-Path $DriverBackup) -and (Test-Path $ImageBackup)){
        $data = Get-Date -UFormat "%d-%m-%Y-%H"
        echo "Realizand o o backup dos Drivers: " | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force
        Export-WindowsDriver -Online -Destination $DriverBackup | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force

        echo "Cria uma imagem do sistema: " | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force
        Invoke-Expression -Command: "wbAdmin start backup -backupTarget:$ImageBackup -include:C: -allCritical -quiet" | out-file C:\wksp\relatorio-ad-group\report-computers-$data.txt -Append -Force

        echo "Listar todos os programas instalados no computador atualmente: " | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force
        Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion | Sort-Object -Property DisplayName -Unique | Format-Table -AutoSize| out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force

        echo "Exibe as informações sobre marca e modelo o seu PC: " | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force
        Get-WmiObject -Class Win32_ComputerSystem | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force

        echo "Exibe as informações da BIOS do seu computador: " | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force
        Get-WmiObject -Class Win32_BIOS -ComputerName . | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force

        echo "Lista os 10 processos que estão utilizando mais memória: " | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force
        Invoke-Expression -Command: "ps | sort –p ws | select –last 10"

        echo "Relatorio gerado com sucesso! " | out-file C:\wksp\report-computers\report-computers-$data.txt -Append -Force
        echo "Relatorio gerado com sucesso!"
      }
    }Catch{
      Write-Host "Erro: O Caminho informado nao existe ou esta inacessivel"
    }
  }else{
    Write-Host "Por preencha os parametros: -DriverBackup e -ImageBackup"
  }
}
#RelatorioWorkstation -DriverBackup "caminho-para-backup" -ImageBackup "caminho-para-backup"

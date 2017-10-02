<#----------------------------------------------------------------------------------------------------------------
Autor: Danilo Righetto
------------------------------------------------------------------------------------------------------------------
Descrição:
Script para gerar um relatório dos grupos, usuários e computadores cadastrados no Active Directory
------------------------------------------------------------------------------------------------------------------
Como executar:
Leia a documentação através do arquivo "readme.md"
----------------------------------------------------------------------------------------------------------------#>

function PesquisaInfoAD{
  param ([string]$Dominio = $null)
    if($Dominio -ne $null){
      Try{
        $data = Get-Date -UFormat "%d-%m-%Y-%H"
        <############ PEGANDO AS INFORMACOES DE GRUPOS DO AD - INICIO ################>
        $Groups = Get-ADGroup -Properties * -Filter * -SearchBase "DC=$Dominio,DC=local" -ErrorAction Stop
        $Groups | out-file C:\wksp\relatorio-ad-group\report-groups-$data.txt -Append -Force
        <############ PEGANDO AS INFORMACOES DE GRUPOS DO AD - FIM ###################>

        <############ PEGANDO AS INFORMACOES DE COMPUTADORES DO AD - INICIO ################>
        $Computers = Get-ADComputer -Properties * -Filter * -SearchBase "DC=$Dominio,DC=local" -ErrorAction Stop
        $Computers | out-file C:\wksp\relatorio-ad-group\report-computers-$data.txt -Append -Force
        <############ PEGANDO AS INFORMACOES DE COMPUTADORES DO AD - FIM ###################>
      }Catch{
        Write-Host "Erro: O Dominio informado nao existe ou esta inacessivel"
      }
    }else{
      Write-Host "Por gentileza informe um dominio válido!"
    }
}

#PesquisaInfoAD -Dominio "seu-dominio"
<#-----------------------------------------------------------------------------
FONTES:
https://blogs.technet.microsoft.com/ashleymcglone/2016/02/26/install-the-active-directory-powershell-module-on-windows-10/
https://gallery.technet.microsoft.com/Install-the-Active-fd32e541#content
https://gallery.technet.microsoft.com/
https://gallery.technet.microsoft.com/Get-a-List-of-Installed-c47393ed
PESQUISAR O PRIMEIRO - | Select-Object -first 1
| Where-Object {$_.CN -eq "Grupo"}
-----------------------------------------------------------------------------#>

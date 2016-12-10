Function Get-AltName ($CmdletToAlias,$AliasToCmdlet) {
# Alternate name: Alias or cmdlet         
    if ($CmdletToAlias) {
        $Alias = Get-Alias | where {$_.ResolvedCommandName -eq "$CmdletToAlias"} | select @{Name="Alias Name";Expression={$_.name}}
            if ($Alias -eq $Null) { "No Alias Found" }Else{ Return $Alias }     
    }else{       
        $Cmdlet = get-alias | where {$_.Name -eq "$AliasToCmdlet"} | select @{Name="Cmdlet Name";Expression={$_.ResolvedCommand}}
            if ($Cmdlet -eq $Null) { "No Alias Found" }Else{ Return $Cmdlet }      
    }
}

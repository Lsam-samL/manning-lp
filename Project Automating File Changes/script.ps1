#for this sctipt to work your working directory should
#be the directory which has the Images directory as subdirectory
function Rename_If_Image{
    param ( 
            [string]$ImageName
    )
    if ($ImageName -match ".jpg$")
    {
        $ImageName -match "\d{6}"
        $NewName = $matches[0] + ".jpg"
        Rename-Item -Path $ImageName -NewName $NewName  
    }
     

}
Get-ChildItem .\images | ForEach-Object {Rename_If_Image($_)} | Out-Null
"The jpg-files have been renamed"


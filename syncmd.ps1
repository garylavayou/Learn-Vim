Get-Item -Filter "*.md" ./* | ForEach-Object { 
    $filename=$_.Name; 
    # Remove-Item src/$filename;
    New-Item -Force -ItemType SymbolicLink -Path "src\$filename" -Target "..\$filename";
}

Get-Item src/* -Filter "*.md"
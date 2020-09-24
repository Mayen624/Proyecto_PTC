param($installPath, $toolsPath, $package, $project)
[System.Reflection.Assembly]::LoadFile("$($installPath)\lib\net35\System.Data.CData.MariaDB.dll")
[System.Data.CData.MariaDB.Nuget]::CheckNugetLicense("nuget")
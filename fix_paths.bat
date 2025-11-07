@echo off
echo Fixing image paths for Vercel deployment...

REM Fix paths in index.html
powershell -Command "(Get-Content 'index.html') -replace 'href=\"/', 'href=\"./' | Set-Content 'index.html'"

REM Fix paths in Home.html
powershell -Command "(Get-Content 'Home\Home.html') -replace 'src=\"/Image/', 'src=\"../Image/' | Set-Content 'Home\Home.html'"
powershell -Command "(Get-Content 'Home\Home.html') -replace 'href=\"/CSS/', 'href=\"../CSS/' | Set-Content 'Home\Home.html'"
powershell -Command "(Get-Content 'Home\Home.html') -replace 'href=\"/', 'href=\"../' | Set-Content 'Home\Home.html'"

REM Fix paths in Service.html
powershell -Command "(Get-Content 'Service\Service.html') -replace 'src=\"/Image/', 'src=\"../Image/' | Set-Content 'Service\Service.html'"
powershell -Command "(Get-Content 'Service\Service.html') -replace 'href=\"/CSS/', 'href=\"../CSS/' | Set-Content 'Service\Service.html'"
powershell -Command "(Get-Content 'Service\Service.html') -replace 'href=\"/', 'href=\"../' | Set-Content 'Service\Service.html'"

REM Fix paths in Our Team\Our Team.html
powershell -Command "(Get-Content 'Our Team\Our Team.html') -replace 'src=\"/Image/', 'src=\"../Image/' | Set-Content 'Our Team\Our Team.html'"
powershell -Command "(Get-Content 'Our Team\Our Team.html') -replace 'href=\"/CSS/', 'href=\"../CSS/' | Set-Content 'Our Team\Our Team.html'"
powershell -Command "(Get-Content 'Our Team\Our Team.html') -replace 'href=\"/', 'href=\"../' | Set-Content 'Our Team\Our Team.html'"

REM Fix paths in Our Company\Our Company.html
powershell -Command "(Get-Content 'Our Company\Our Company.html') -replace 'src=\"/Image/', 'src=\"../Image/' | Set-Content 'Our Company\Our Company.html'"
powershell -Command "(Get-Content 'Our Company\Our Company.html') -replace 'href=\"/CSS/', 'href=\"../CSS/' | Set-Content 'Our Company\Our Company.html'"
powershell -Command "(Get-Content 'Our Company\Our Company.html') -replace 'href=\"/', 'href=\"../' | Set-Content 'Our Company\Our Company.html'"

REM Fix paths in About\About.html
powershell -Command "(Get-Content 'About\About.html') -replace 'src=\"/Image/', 'src=\"../Image/' | Set-Content 'About\About.html'"
powershell -Command "(Get-Content 'About\About.html') -replace 'href=\"/CSS/', 'href=\"../CSS/' | Set-Content 'About\About.html'"
powershell -Command "(Get-Content 'About\About.html') -replace 'href=\"/', 'href=\"../' | Set-Content 'About\About.html'"

REM Fix paths in Login\Login.html
powershell -Command "(Get-Content 'Login\Login.html') -replace 'src=\"/Image/', 'src=\"../Image/' | Set-Content 'Login\Login.html'"
powershell -Command "(Get-Content 'Login\Login.html') -replace 'href=\"/CSS/', 'href=\"../CSS/' | Set-Content 'Login\Login.html'"
powershell -Command "(Get-Content 'Login\Login.html') -replace 'href=\"/', 'href=\"../' | Set-Content 'Login\Login.html'"

echo All paths have been fixed for Vercel deployment!
echo Now you can deploy to Vercel without path issues.
pause

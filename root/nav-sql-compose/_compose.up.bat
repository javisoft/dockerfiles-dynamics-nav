call _createlinks.bat

docker-compose up -d

powershell docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' navsqlcompose_nav_1
powershell docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' navsqlcompose_sql_1
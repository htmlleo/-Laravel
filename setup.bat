@echo off
echo ======================================================
echo   Setup Inicial - Projeto Laravel CRUD Academico
echo ======================================================

echo 1. Instalando dependencias via Composer...
call composer install

echo.
echo 2. Configurando arquivo .env...
if not exist .env (
    copy .env.example .env
    echo Arquivo .env criado a partir do .env.example.
) else (
    echo Arquivo .env ja existe.
)

echo.
echo 3. Gerando chave da aplicacao...
php artisan key:generate

echo.
echo 4. Criando banco de dados SQLite...
if not exist database\database.sqlite (
    type nul > database\database.sqlite
    echo Banco de dados database.sqlite criado.
) else (
    echo Banco de dados ja existe.
)

echo.
echo 5. Executando migrations...
php artisan migrate --force

echo.
echo ======================================================
echo   Setup concluido com sucesso!
echo   Para iniciar o servidor, use: php artisan serve
echo ======================================================
pause

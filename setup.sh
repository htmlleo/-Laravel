#!/bin/bash

echo "======================================================"
echo "  Setup Inicial - Projeto Laravel CRUD Academico"
echo "======================================================"

echo "1. Instalando dependências via Composer..."
composer install

echo ""
echo "2. Configurando arquivo .env..."
if [ ! -f .env ]; then
    cp .env.example .env
    echo "Arquivo .env criado a partir do .env.example."
else
    echo "Arquivo .env já existe."
fi

echo ""
echo "3. Gerando chave da aplicação..."
php artisan key:generate

echo ""
echo "4. Criando banco de dados SQLite..."
if [ ! -f database/database.sqlite ]; then
    touch database/database.sqlite
    echo "Banco de dados database.sqlite criado."
else
    echo "Banco de dados já existe."
fi

echo ""
echo "5. Executando migrations..."
php artisan migrate --force

echo ""
echo "======================================================"
echo "  Setup concluído com sucesso!"
echo "  Para iniciar o servidor, use: php artisan serve"
echo "======================================================"

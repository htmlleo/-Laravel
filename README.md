# -Laravel
Sistema Acadêmico CRUD de Produtos e Fornecedores
# Sistema de Gestão de Produtos e Fornecedores

Este é um projeto acadêmico desenvolvido em **Laravel** para o gerenciamento de um cadastro de produtos e seus respectivos fornecedores. O sistema permite realizar todas as operações de CRUD (Criar, Ler, Atualizar e Excluir) para ambas as entidades, mantendo a integridade referencial entre elas.

## Alunos
- **Leonardo Estevão Alves** - R.A: 00250458-1
- **Vinicius Correia De Andrade** - R.A: 251953-1

## Descrição
O sistema foi construído seguindo o padrão de arquitetura **MVC** (Model-View-Controller) do Laravel. A interface foi desenvolvida utilizando o motor de templates **Blade** e estilizada com **Bootstrap 5**, garantindo um visual limpo e responsivo sem a necessidade de frameworks JavaScript complexos.

## Tecnologias Utilizadas
- **Framework:** Laravel
- **Linguagem:** PHP
- **Template Engine:** Blade
- **Estilização:** Bootstrap 5
- **Banco de Dados:** SQLite

## Funcionalidades
- **CRUD de Fornecedores:** Cadastro, listagem, edição e exclusão de fornecedores.
- **CRUD de Produtos:** Cadastro, listagem, edição e exclusão de produtos.
- **Relacionamento:** Cada produto está obrigatoriamente vinculado a um fornecedor (1:N).
- **Validações:** Garantia de dados consistentes (preços positivos, campos obrigatórios, etc).
- **Feedback Visual:** Mensagens de sucesso e erro utilizando alertas do Bootstrap.

## Requisitos para Rodar
- PHP >= 8.1
- Composer
- SQLite

## Instalação e Execução Local
1. Clone o repositório ou extraia os arquivos.
2. No terminal, acesse a pasta do projeto.
3. Execute o comando para instalar as dependências:
   ```bash
   composer install
   ```
4. O arquivo `.env` já está configurado para usar SQLite.
5. Crie o arquivo do banco de dados (se não existir):
   - No Linux/Mac: `touch database/database.sqlite`
   - No Windows: Crie um arquivo vazio chamado `database.sqlite` dentro da pasta `database`.
6. Execute as migrations para criar as tabelas:
   ```bash
   php artisan migrate
   ```
7. Inicie o servidor local:
   ```bash
   php artisan serve
   ```
8. Acesse no seu navegador: `http://127.0.0.1:8000`

## Como Testar
1. Acesse o menu **Fornecedores** e cadastre pelo menos um fornecedor.
2. Acesse o menu **Produtos** e cadastre um novo produto, selecionando o fornecedor criado anteriormente.
3. Teste as funcionalidades de edição, visualização e exclusão em ambos os módulos.

## Observações
- Este projeto não utiliza frameworks JavaScript como Vue ou React, nem Livewire, conforme solicitado nos requisitos acadêmicos.
- O arquivo `.env` foi incluído no versionamento para facilitar a entrega acadêmica.

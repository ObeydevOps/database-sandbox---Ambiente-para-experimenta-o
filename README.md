# Banco de Dados do Projeto

## Estrutura do Banco

O banco de dados consiste em 4 tabelas principais:
- `users` - Armazena informações de usuários
- `products` - Cataloga os produtos do sistema
- `orders` - Registra os pedidos dos clientes
- `order_items` - Itens que compõem cada pedido

## Como Configurar

1. Execute o script de schema:
   ```bash
   sqlite3 database.db < database/schema.sql
   ```

2. (Opcional) Popule com dados de exemplo:
   ```bash
   sqlite3 database.db < database/sample_data.sql
   ```

## Diagrama Simplificado

```
users ? orders ? order_items
           ?
products ---+
```
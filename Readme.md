# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

### Запросы, создающие базу данных и выдающие права пользователю
```

--- Создание БД

CREATE DATABASE store;

--- Создание пользователя

CREATE USER new_user;

--- Добавление пароля пользователю

ALTER USER new_user WITH PASSWORD 'password_for_new_user';

--- Выдача привbлегий для новой БД и для схемы public

GRANT ALL PRIVILEGES ON DATABASE store TO new_user;
GRANT ALL PRIVILEGES ON SCHEMA public TO new_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON TABLES TO new_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL PRIVILEGES ON SEQUENCES TO new_user;

```


### Запрос, выдающий какое количество сосисок было продано за каждый день предыдущей недели
```

SELECT o.date_created, SUM(op.quantity) FROM orders AS o JOIN order_product AS op ON o.id = op.order_id WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY' GROUP BY o.date_created;
```

# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

#Запрос, выдающий какое количество сосисок было продано за каждый день предыдущей недели

SELECT o.date_created, SUM(op.quantity) FROM orders AS o JOIN order_product AS op ON o.id = op.order_id WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY' GROUP BY o.date_created;

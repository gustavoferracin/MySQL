use turmax;
-- listar o nome de cada material e o valor médio desse material

SELECT m.id,m.nome,AVG(valor)as media
FROM item_ordem_compra as ioc, material as m
WHERE ioc.idmaterial m.id
GROUP BY m.nome
ORDER BY m.id

-- listar o nome de cada material e o valor médio desse material entre os dias 10/05/2022 e 13/05/2022

AND ordem_compra.data BETWEEN'2022-05-10'AND'2022-05-13'
GROUP BY m.nome
ORDER BY m.id
    
-- qual é o produto que mais aparece nas compras?

select m.id,m.nome,count(ioc.idMaterial)as contagem
from material as m, item_ordem_compra as ioc
where m.id = ioc.idMaterial
group by ioc.idMaterial
order by contagem desc;

-- CRUD (insert, select, update, delete)

UPDATE `material` SET`nome`='Prego'WHERE id2;

DELETE FROM item_ordem_compra WHERE item_ordem_compra.idOrdemCompra= 5
AND item_ordem_compra.idMaterial=11
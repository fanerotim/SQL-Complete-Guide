SELECT usr.email, addr.street, addr.house_number, cty.name
FROM users AS usr
INNER JOIN addresses AS addr ON usr.address_id = addr.id
INNER JOIN cities AS cty ON addr.city_id = cty.id;

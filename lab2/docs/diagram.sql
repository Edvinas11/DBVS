Table clients {
  client_id integer [primary key]
  
  name text
  lastname text
  personal_code text [unique]
  birth_date date
  address_street text
  address_city text
  address_zip_code text
}

Table cars {
  car_id integer [primary key]
  
  brand text
  model text
  price_per_day decimal(10, 2)
}

Table orders {
  order_id integer [primary key]
  
  client_id integer [not null, ref: > clients.client_id]
  order_date_start date [not null]
  order_date_end date [not null]
  price decimal(10, 2)
  status text
  payment_method text
}

Table order_cars {
  id integer [primary key]
  
  order_id integer [ref: > orders.order_id]
  car_id integer [ref: > cars.car_id]
  
  days_rented integer
  total_price decimal(10, 2) // Relationship attribute
}


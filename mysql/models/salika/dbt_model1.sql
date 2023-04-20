
with source_store_sales as(
select film.title as title2,
film_id,
film.description


 from {{ source('sakila', 'film') }}
left join {{ source('sakila', 'film_text') }} using (film_id)
),

final as(
select * from source_store_sales
)
select * from final
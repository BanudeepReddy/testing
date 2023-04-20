{{ config(materialized='table') }}
with source_store_sales as(
select
film.film_id,
film.title as title2,
film.description,
release_year


 from {{ source('sakila', 'film') }}
left join {{ source('sakila', 'film_text') }} using (description)
),

final as(
select * from source_store_sales
)
select * from final
{{ config(materialized='table') }}
with source_store_sales as(
select
film.film_id,
film.title as title,
film.description,
release_year


 from {{ source('sakila', 'film') }}
left join {{ source('sakila', 'film_text') }} using (description)
)

select * from source_store_sales
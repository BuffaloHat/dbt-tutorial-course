WITH source AS (
    SELECT *

    from {{ source ('thelook_ecommerce', 'orders') }}
)

SELECT
    order_id,
    user_id,
	status,
	created_at,
	returned_at,
	shipped_at,
	delivered_at,
	num_of_item

FROM source
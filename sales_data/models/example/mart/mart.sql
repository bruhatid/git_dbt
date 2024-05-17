{{config(materialized='ephemeral')}}
select * from{{ref("join_q")}}

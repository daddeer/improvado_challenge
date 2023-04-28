{{ config(materialized='table') }}

with stg_ads_creative_tiktok as (
  select 
      date,
      add_to_cart,
      clicks,
      0 as comments,
      0 as engagements,
      impressions,
      0 as installs,
      0 as likes,
      0 as link_clicks,
      0 as post_click_conversions,
      0 as post_view_conversions,
      0 as posts,
      purchase,
      0 as registrations,
      0 as revenue,
      0 as shares,
      spend,
      0 as total_conversions,
      0 as video_views,
      0 as ad_id,
      0 as adset_id,
      campaign_id,
      channel,
      0 as creative_id,
      0 as placement_id

  from {{ref('stg_ads_tiktok_ads_all_data')}}
)
select * from stg_ads_creative_tiktok
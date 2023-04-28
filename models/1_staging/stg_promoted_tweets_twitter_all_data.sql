with src_promoted_tweets_twitter_all_data as (
  select * from {{ source('mcdm_paid_ads_basic_performance_twitter_gbq','src_promoted_tweets_twitter_all_data') }}
),

stg_ads_twitter_all_data as (

select
    __insert_date              as insert_date,
    campaign_id                as campaign_id,
    channel                    as channel,
    url                        as url,
    text                       as text,
    clicks                     as clicks,
    comments                   as comments,
    date                       as date,
    engagements                as engagements,
    impressions                as impressions,
    likes                      as likes,
    url_clicks                 as link_clicks,
    retweets                   as retweets,
    spend                      as spend,
    video_total_views          as video_total_views



  from src_promoted_tweets_twitter_all_data
)
select * 
from stg_ads_twitter_all_data
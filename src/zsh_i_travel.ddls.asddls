@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel - Interface View'
define root view entity ZSH_I_Travel
  as select from zsh_travel
{
  key travel_uuid,
  travel_id,
  agency_id,
  customer_id,
  begin_date,
  end_date,
  @Semantics.amount.currencyCode: 'currency_code'
  booking_fee,
  @Semantics.amount.currencyCode: 'currency_code'
  total_price,
  currency_code,
  description,
  overall_status,
  local_created_by,
  local_created_at,
  local_last_changed_by,
  local_last_changed_at,
  last_changed_at
}

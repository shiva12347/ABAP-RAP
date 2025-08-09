@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel - Projection View'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: { typeName: 'Travel', typeNamePlural: 'Travels', title: { value: 'travel_id' } }

define root view entity ZSH_C_Travel
  as projection on ZSH_I_Travel
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
  overall_status
}

@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Consumption Entity'
@Metadata.allowExtensions: true
@VDM.viewType:  #CONSUMPTION
define root view entity ZSH_TRAVEL_C
  provider contract transactional_query as projection on ZSH_TRAVEL_I
{
    key TravelUuid,
    TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    BookingFee,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    TotalPrice,
    CurrencyCode,
    Description,
    OverallStatus,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _Booking:redirected to composition child ZSH_BOOKING_C
}

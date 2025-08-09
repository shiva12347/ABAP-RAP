@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BookingSupplyment Consumption enity'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@VDM.viewType:  #CONSUMPTION
define view entity ZSH_BOOKINGSUPP_C as projection on ZSH_BOOKINGSUPP_I
{
    key BooksupplUuid,
    TravelUUID,
    BookingUUID,
    BookingSupplementId,
    SupplementId,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    Price,
    CurrencyCode,
    LocalLastChangedAt,
    /* Associations */
    _Booking:redirected to parent ZSH_BOOKING_C,
    _Travel:redirected to ZSH_TRAVEL_C
}

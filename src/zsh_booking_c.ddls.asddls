@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking Consumption entity'
@Metadata.allowExtensions: true
@VDM.viewType:  #CONSUMPTION
define view entity ZSH_BOOKING_C as projection on ZSH_BOOKING_I
{
    key BookingUuid,
    TravelUUID,
    BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LocalLastChangedAt,
    /* Associations */
    _BookingSupplement:redirected to composition child ZSH_BOOKINGSUPP_C,
    _Travel:redirected to parent ZSH_TRAVEL_C
}

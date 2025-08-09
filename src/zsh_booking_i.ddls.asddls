@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZSH_BOOKING_CDS_ENTITY'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSH_BOOKING_I as select from zsh_booking
 
composition [0..*] of ZSH_BOOKINGSUPP_I as _BookingSupplement

association to parent ZSH_TRAVEL_I  as _Travel on $projection.TravelUUID = _Travel.TravelUuid
{
    key booking_uuid as BookingUuid,
    parent_uuid as TravelUUID,
    booking_id as BookingId,
    booking_date as BookingDate,
    customer_id as CustomerId,
    carrier_id as CarrierId,
    connection_id as ConnectionId,
    flight_date as FlightDate,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    flight_price as FlightPrice,
    currency_code as CurrencyCode,
    booking_status as BookingStatus,
    @Semantics.systemDateTime.lastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    
    _Travel, // make assocaition public
    _BookingSupplement
    
}

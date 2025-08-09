@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZSH_BOOKINGSUPP_CDS_ENTITY'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZSH_BOOKINGSUPP_I as select from zsh_bksuppl

association to parent ZSH_BOOKING_I as _Booking      on $projection.BookingUUID = _Booking.BookingUuid
    
association [1] to ZSH_TRAVEL_I     as _Travel      on $projection.TravelUUID = _Travel.TravelUuid    
{
    key booksuppl_uuid as BooksupplUuid,
    root_uuid as TravelUUID,
    parent_uuid as BookingUUID,
    booking_supplement_id as BookingSupplementId,
    supplement_id as SupplementId,
    @Semantics.amount.currencyCode : 'CurrencyCode'
    price as Price,
    currency_code as CurrencyCode,
    local_last_changed_at as LocalLastChangedAt,
    
    _Booking,     // Make association public  // 1st-level association (Booking)
    _Travel     // 2nd-level via _Booking → _Travel
  
}

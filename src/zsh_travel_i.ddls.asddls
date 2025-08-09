@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZSH_ TRAVEL _CDS_ENTITY'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
define root view entity ZSH_TRAVEL_I 
   as select from zsh_travel
   composition [0..*] of ZSH_BOOKING_I as _Booking
{
    key travel_uuid as TravelUuid,
    travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
     @Semantics.amount.currencyCode : 'CurrencyCode'
    booking_fee as BookingFee,
     @Semantics.amount.currencyCode : 'CurrencyCode'
    total_price as TotalPrice,
    currency_code as CurrencyCode,
    description as Description,
    overall_status as OverallStatus,
    @Semantics.user.createdBy: true
    local_created_by as LocalCreatedBy,
    @Semantics.systemDateTime.createdAt: true
    local_created_at as LocalCreatedAt,
    @Semantics.user.lastChangedBy: true
    local_last_changed_by as LocalLastChangedBy,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
     @Semantics.systemDateTime.lastChangedAt: true    // this annotation ensures the field lastcahngeAt use for DRAFT  // should be used for total etag
    last_changed_at as LastChangedAt,
    _Booking  // Make association public
}

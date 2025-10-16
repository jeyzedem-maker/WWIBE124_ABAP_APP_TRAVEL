@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Project View Travels'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZJM_C_Travels as projection on ZJM_R_Travels
{
    key TravelUuid,
    TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    Description,
    Status,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangeAt
}

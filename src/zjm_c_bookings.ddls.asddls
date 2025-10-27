@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Project View Bookings'
@Metadata.allowExtensions: true
define view entity ZJM_C_BOOKINGS
  as projection on ZJM_R_BOOKING
{
  key BookingUuid,
      TravelUuid,
      BookingId,
      BookingDate,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _travel : redirected to parent ZJM_C_Travels
}

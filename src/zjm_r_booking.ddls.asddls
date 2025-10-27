@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic View Booking'
define view entity ZJM_R_BOOKING
  as select from zjm_booking
  association to parent ZJM_R_Travels as _travel on $projection.TravelUuid = _travel.TravelUuid
{
  key booking_uuid  as BookingUuid,
      travel_uuid   as TravelUuid,
      booking_id    as BookingId,
      booking_date  as BookingDate,
      carrier_id    as CarrierId,
      connection_id as ConnectionId,
      flight_date   as FlightDate,
      
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price  as FlightPrice,
      currency_code as CurrencyCode,
      
      _travel
}

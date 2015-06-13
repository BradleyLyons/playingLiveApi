#Earth Radius constant
R = 6378.1 

#Change this to your location latitude and longitude.
LAT = 34.1796934
LON = -118.4187109

#Method that sends the degree of bearing from loci and the distance to new location
#and returns the GPS location. Using generic seed locations here. No realtion to 
#the real world 
def getNextLon (degree, distance )
  
  #converting everything to radians
  lat = LAT * Math::PI/180
  lon = LON * Math::PI/180
  bearing = degree * Math::PI / 180
  #converting miles to km
  d = distance * 1.60934
  
  lat2 = (Math.asin( Math.sin(lat)*Math.cos(d/R) + Math.cos(lat)*Math.sin(d/R)*Math.cos(bearing)))/(Math::PI/180)

  #BigDecimal.new((lon + Math.atan2(Math.sin(bearing)*Math.sin(d/R)*Math.cos(lat),Math.cos(d/R)-Math.sin(lat)*Math.sin(lat2)))/(Math::PI/180), 6)
  #BigDecimal.new("52.123456", 6)
  (lon + Math.atan2(Math.sin(bearing)*Math.sin(d/R)*Math.cos(lat),Math.cos(d/R)-Math.sin(lat)*Math.sin(lat2)))/(Math::PI/180)
end

def getNextLat (degree, distance )
  
  #converting everything to radians
  lat = LAT * Math::PI/180
  lon = LON * Math::PI/180
  bearing = degree * Math::PI / 180
  #converting miles to km
  d = distance * 1.60934
  
  BigDecimal.new((Math.asin( Math.sin(lat)*Math.cos(d/R) + Math.cos(lat)*Math.sin(d/R)*Math.cos(bearing)))/(Math::PI/180), 6)
  #BigDecimal.new("52.123456", 6)
  (Math.asin( Math.sin(lat)*Math.cos(d/R) + Math.cos(lat)*Math.sin(d/R)*Math.cos(bearing)))/(Math::PI/180)
end




user = User.create(
    [
      {firstName: 'unknown', lastName: 'unknown', email: 'unknown.unknown@example.com', password: '111111111'},
      {firstName: 'Babara', lastName: 'Smith', email: 'barbara.smith@example.com', password: '111111111'},
      {firstName: 'Charles', lastName: 'Johnson', email: 'charles.johnson@example.com', password: '112112112'},
      {firstName: 'David', lastName: 'Williams', email: 'david.williams@example.com', password: '113113113'},
      {firstName: 'Dorothy', lastName: 'Brown', email: 'dorothy.brown@example.com', password: '114114114'},
      {firstName: 'Elizabeth', lastName: 'Jones', email: 'elizabeth.jones@example.com', password: '115115115'},
      {firstName: 'James', lastName: 'Miller', email: 'james.miller@example.com', password: '116116116'},
      {firstName: 'Jennifer', lastName: 'Davis', email: 'jennifer.davis@example.com', password: '117117117'},
      {firstName: 'John', lastName: 'Garcia', email: 'john.garcia@example.com', password: '118118118'},
      {firstName: 'Joseph', lastName: 'Rodriguez', email: 'joseph.rodriguez@example.com', password: '119119119'},
      {firstName: 'Linda', lastName: 'Wilson', email: 'linda.wilson@example.com', password: '120120120'},
      {firstName: 'Margaret', lastName: 'Martinez', email: 'margaret.martinez@example.com', password: '121121121'},
      {firstName: 'Maria', lastName: 'Anderson', email: 'maria.anderson@example.com', password: '122122122'},
      {firstName: 'Mary', lastName: 'Taylor', email: 'mary.taylor@example.com', password: '123123123'},
      {firstName: 'Micheal', lastName: 'Thomas', email: 'micheal.thomas@example.com', password: '124124124'},
      {firstName: 'Patricia', lastName: 'Hernandez', email: 'patricia.hernandez@example.com', password: '125125125'},
      {firstName: 'Richard', lastName: 'Moore', email: 'richard.moore@example.com', password: '126126126'},
      {firstName: 'Robert', lastName: 'Martin', email: 'robert.martin@example.com', password: '127127127'},
      {firstName: 'Susan', lastName: 'Jackson', email: 'susan.jackson@example.com', password: '128128128'},
      {firstName: 'Thomas', lastName: 'Thompson', email: 'thomas.thompson@example.com', password: '129129129'},
      {firstName: 'William', lastName: 'White', email: 'william.white@example.com', password: '130130130'}
      
    ]
  )
  
  venue = Venue.create(
    [
      {venueName: 'CBGBs', address: '3 East Washington Ave', venueCity: 'City', venueState: 'ST', venueZip: '12340', user_id: '1', latitude: getNextLat(0,3), longitude: getNextLon(0,3) },
      {venueName: 'Scaragon', address: '5 South Lincoln Prkway', venueCity: 'City', venueState: 'ST', venueZip: '12341', user_id: '2', latitude: getNextLat(154,5), longitude: getNextLon(154,5) },
      {venueName: 'Slippery Noodle', address: '8 West Jackson Ave', venueCity: 'City', venueState: 'ST', venueZip: '12342', user_id: '3', latitude: getNextLat(308,8), longitude: getNextLon(308,8) },
      {venueName: 'The Palace', address: '13 North Rosevelt Prkwy', venueCity: 'City', venueState: 'ST', venueZip: '12343', user_id: '4', latitude: getNextLat(462,13), longitude: getNextLon(462,13) },
      {venueName: 'The Roxbury', address: '21 East Jefferson Ave', venueCity: 'City', venueState: 'ST', venueZip: '12344', user_id: '5', latitude: getNextLat(616,21), longitude: getNextLon(616,21) },
      {venueName: 'The Brown Derby', address: '34 South Madison Prkwy', venueCity: 'City', venueState: 'ST', venueZip: '12345', user_id: '6', latitude: getNextLat(770,34), longitude: getNextLon(770,34) },
      {venueName: 'The Casa Vega', address: '55 West Adams Ave', venueCity: 'City', venueState: 'ST', venueZip: '12346', user_id: '7', latitude: getNextLat(924,55), longitude: getNextLon(924,55) }
    ]
  )
  

  venue = Venue.create(
    [
      # {venueName:"Name1", user_id: '1', venueAddress: "address1"},
      # {venueName:"Name2", user_id: '2', venueAddress: "address2"},
      # {venueName:"Name3", user_id: '3', venueAddress: "address3"},
      # {venueName:"Name4", user_id: '4', venueAddress: "address4"},
      # {venueName:"Name5", user_id: '5', venueAddress: "address5"},
      # {venueName:"Name6", user_id: '6', venueAddress: "address6"},
      # {venueName:"Name7", user_id: '7', venueAddress: "address7"}
      # {venueName: 'CBGBs', venueAddress: '3 East Washington Ave', venueCity: 'City', venueState: 'ST', venueZip: '12340', user_id: '1', latitude: getNextLat(0,3), longitude: getNextLon(0,3) },
      # {venueName: 'Scaragon', venueAddress: '5 South Lincoln Prkway', venueCity: 'City', venueState: 'ST', venueZip: '12341', user_id: '2', latitude: getNextLat(154,5), longitude: getNextLon(154,5) },
      # {venueName: 'Slippery Noodle', venueAddress: '8 West Jackson Ave', venueCity: 'City', venueState: 'ST', venueZip: '12342', user_id: '3', latitude: getNextLat(308,8), longitude: getNextLon(308,8) },
      # {venueName: 'The Palace', venueAddress: '13 North Rosevelt Prkwy', venueCity: 'City', venueState: 'ST', venueZip: '12343', user_id: '4', latitude: getNextLat(462,13), longitude: getNextLon(462,13) },
      # {venueName: 'The Roxbury', venueAddress: '21 East Jefferson Ave', venueCity: 'City', venueState: 'ST', venueZip: '12344', user_id: '5', latitude: getNextLat(616,21), longitude: getNextLon(616,21) },
      # {venueName: 'The Brown Derby', venueAddress: '34 South Madison Prkwy', venueCity: 'City', venueState: 'ST', venueZip: '12345', user_id: '6', latitude: getNextLat(770,34), longitude: getNextLon(770,34) },
      # {venueName: 'The Casa Vega', venueAddress: '55 West Adams Ave', venueCity: 'City', venueState: 'ST', venueZip: '12346', user_id: '7', latitude: getNextLat(924,55), longitude: getNextLon(924,55) }
            # {venueName: 'CBGBs', venueAddress: '3 East Washington Ave', venueCity: 'City', venueState: 'ST', venueZip: '12340', user_id: '1', latitude: 10, longitude: 20 },
      # {venueName: 'Scaragon', venueAddress: '5 South Lincoln Prkway', venueCity: 'City', venueState: 'ST', venueZip: '12341', user_id: '2', latitude: 10, longitude: 20 },
      # {venueName: 'Slippery Noodle', venueAddress: '8 West Jackson Ave', venueCity: 'City', venueState: 'ST', venueZip: '12342', user_id: '3', latitude: 10, longitude: 20 },
      # {venueName: 'The Palace', venueAddress: '13 North Rosevelt Prkwy', venueCity: 'City', venueState: 'ST', venueZip: '12343', user_id: '4', latitude: 10, longitude: 20 },
      # {venueName: 'The Roxbury', venueAddress: '21 East Jefferson Ave', venueCity: 'City', venueState: 'ST', venueZip: '12344', user_id: '5', latitude: 10, longitude: 20 },
      # {venueName: 'The Brown Derby', venueAddress: '34 South Madison Prkwy', venueCity: 'City', venueState: 'ST', venueZip: '12345', user_id: '6', latitude: 10, longitude: 20 },
      # {venueName: 'The Casa Vega', venueAddress: '55 West Adams Ave', venueCity: 'City', venueState: 'ST', venueZip: '12346', user_id: '7', latitude: 10, longitude: 20 }
    ]
  )
  



  genre = Genre.create(
    [
      {genreDescription: 'Unknown'},
      {genreDescription: 'Electronic'},
      {genreDescription: 'Funk/Soul'},
      {genreDescription: 'Hip Hop'},
      {genreDescription: 'Jazz'},
      {genreDescription: 'Latin'},
      {genreDescription: 'Pop'},
      {genreDescription: 'Rock'}
      
    ]
  )
  
  band = Band.create(
    [
      {bandName: 'The Aardvarks', bandPhone: '9995551001', genre_id: '1', user_id: '8'},
      {bandName: 'The Baboons', bandPhone: '9995551002', genre_id: '2', user_id: '9'},
      {bandName: 'The Cockatoos', bandPhone: '9995551003', genre_id: '3', user_id: '10'},
      {bandName: 'The Dingos', bandPhone: '9995551004', genre_id: '4', user_id: '11'},
      {bandName: 'The Elephants', bandPhone: '9995551005', genre_id: '5', user_id: '12'},
      {bandName: 'The Ferrets', bandPhone: '9995551006', genre_id: '6', user_id: '13'},
      {bandName: 'The Gorillas', bandPhone: '9995551007', genre_id: '7', user_id: '14'},
      {bandName: 'The Hippos', bandPhone: '9995551008', genre_id: '1', user_id: '15'},
      {bandName: 'The Iguanas', bandPhone: '9995551009', genre_id: '2', user_id: '16'},
      {bandName: 'The Jackals', bandPhone: '9995551010', genre_id: '3', user_id: '17'},
      {bandName: 'The Kangaroos', bandPhone: '9995551011', genre_id: '4', user_id: '18'},
      {bandName: 'The Llamas', bandPhone: '9995551012', genre_id: '5', user_id: '19'},
      {bandName: 'The Manatees', bandPhone: '9995551013', genre_id: '6', user_id: '20'},
    ]
  )
  today = DateTime.now
  
  purchase = Ticket.create(
    [
      {purchase: "Online"},
      {purchase: "Will Call"},
      {purchase: "Ticket Master"}
    ]
  )
  
  
  event = Event.create(
    [
      {eventStartTime: DateTime.new(today.year, today.month, today.day+1, 7), venue_id: '1', age: '0', ticket_id: '1' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+1, 7), venue_id: '2', age: '0', ticket_id: '2' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+1, 9), venue_id: '3', age: '18', ticket_id: '3' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+2, 8, 30), venue_id: '4', age: '0', ticket_id: '1' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+2, 10), venue_id: '5', age: '0', ticket_id: '2' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+3, 3), venue_id: '6', age: '0', ticket_id: '3' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+3, 7), venue_id: '7', age: '21', ticket_id: '1' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+3, 9), venue_id: '1', age: '0', ticket_id: '2' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+3, 9, 30), venue_id: '2', age: '0', ticket_id: '3' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+4, 7), venue_id: '3', age: '18', ticket_id: '1' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+5, 7, 30), venue_id: '4', age: '0', ticket_id: '2' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+7, 9), venue_id: '5', age: '0', ticket_id: '3' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+8, 8, 30), venue_id: '6', age: '0', ticket_id: '1' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+8, 10), venue_id: '7', age: '21', ticket_id: '2' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+9, 4), venue_id: '1', age: '0', ticket_id: '3' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+9, 9, 30), venue_id: '1', age: '0', ticket_id: '1' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+9, 10), venue_id: '2', age: '18', ticket_id: '2' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+11, 7, 45), venue_id: '3', age: '0', ticket_id: '3' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+11, 10), venue_id: '4', age: '0', ticket_id: '1' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+11, 10, 30), venue_id: '5', age: '0', ticket_id: '2' },
      {eventStartTime: DateTime.new(today.year, today.month, today.day+15, 7), venue_id: '6', age: '21', ticket_id: '3' }
    ]
  )
  
  item = EventItem.create(
    [
      {band_id: '1', event_id: '1', time: Event.find_by(id: "1")['eventStartTime'] + 15.minutes, priority: '20'},
      {band_id: '2', event_id: '1', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '3', event_id: '1', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '4', event_id: '2', time: Event.find_by(id: "1")['eventStartTime'], priority: '20'},
      {band_id: '5', event_id: '2', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '6', event_id: '2', time: Event.find_by(id: "1")['eventStartTime'] + 70.minutes, priority: '0'},
      {band_id: '7', event_id: '3', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '8', event_id: '3', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '9', event_id: '3', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '10', event_id: '4',time: Event.find_by(id: "1")['eventStartTime'] + 15.minutes, priority: '20'},
      {band_id: '11', event_id: '4', time: Event.find_by(id: "1")['eventStartTime'] + 45.minutes, priority: '10'},
      {band_id: '12', event_id: '4', time: Event.find_by(id: "1")['eventStartTime'] + 75.minutes, priority: '0'},
      {band_id: '13', event_id: '5', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '1', event_id: '5', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '2', event_id: '5', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '3', event_id: '6', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '4', event_id: '6', time: Event.find_by(id: "1")['eventStartTime'] + 15.minutes, priority: '10'},
      {band_id: '5', event_id: '6', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '6', event_id: '7', time: Event.find_by(id: "1")['eventStartTime'] + 15.minutes, priority: '20'},
      {band_id: '7', event_id: '7', time: Event.find_by(id: "1")['eventStartTime'] + 45.minutes, priority: '10'},
      {band_id: '8', event_id: '7', time: Event.find_by(id: "1")['eventStartTime'] + 75.minutes, priority: '0'},
      {band_id: '9', event_id: '8', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '10', event_id: '8', time: Event.find_by(id: "1")['eventStartTime'] + 45.minutes, priority: '10'},
      {band_id: '11', event_id: '8', time: Event.find_by(id: "1")['eventStartTime'] + 90.minutes, priority: '0'},
      {band_id: '12', event_id: '9', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '13', event_id: '9', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '1', event_id: '9', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '2', event_id: '10', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '3', event_id: '10', time: Event.find_by(id: "1")['eventStartTime'] + 45.minutes, priority: '10'},
      {band_id: '4', event_id: '10', time: Event.find_by(id: "1")['eventStartTime'] + 75.minutes, priority: '0'},
      {band_id: '5', event_id: '11', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '6', event_id: '11', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '7', event_id: '11', time: Event.find_by(id: "1")['eventStartTime'] + 75.minutes, priority: '0'},
      {band_id: '8', event_id: '12', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '20'},
      {band_id: '9', event_id: '12', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '10'},
      {band_id: '10', event_id: '12', time: Event.find_by(id: "1")['eventStartTime'] + 90.minutes, priority: '0'},
      {band_id: '11', event_id: '13', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '12', event_id: '13', time: Event.find_by(id: "1")['eventStartTime'] + 15.minutes, priority: '10'},
      {band_id: '13', event_id: '13', time: Event.find_by(id: "1")['eventStartTime'] + 45.minutes, priority: '0'},
      {band_id: '1', event_id: '14', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '2', event_id: '14', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '3', event_id: '14', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '4', event_id: '15', time: Event.find_by(id: "1")['eventStartTime'] + 10.minutes, priority: '20'},
      {band_id: '5', event_id: '15', time: Event.find_by(id: "1")['eventStartTime'] + 40.minutes, priority: '10'},
      {band_id: '6', event_id: '15', time: Event.find_by(id: "1")['eventStartTime'] + 75.minutes, priority: '0'},
      {band_id: '7', event_id: '16', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '8', event_id: '16', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '9', event_id: '16', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '10', event_id: '17', time: Event.find_by(id: "1")['eventStartTime'] + 15.minutes, priority: '20'},
      {band_id: '11', event_id: '17', time: Event.find_by(id: "1")['eventStartTime'] + 45.minutes, priority: '10'},
      {band_id: '12', event_id: '17', time: Event.find_by(id: "1")['eventStartTime'] + 90.minutes, priority: '1'},
      {band_id: '13', event_id: '17', time: Event.find_by(id: "1")['eventStartTime'] + 135.minutes, priority: '0'},
      {band_id: '1', event_id: '18', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '2', event_id: '18', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '3', event_id: '18', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '4', event_id: '19', time: Event.find_by(id: "1")['eventStartTime'] + 15.minutes, priority: '20'},
      {band_id: '5', event_id: '19', time: Event.find_by(id: "1")['eventStartTime'] + 45.minutes, priority: '10'},
      {band_id: '6', event_id: '19', time: Event.find_by(id: "1")['eventStartTime'] + 75.minutes, priority: '0'},
      {band_id: '7', event_id: '20', time: Event.find_by(id: "1")['eventStartTime'] + 0.minutes, priority: '20'},
      {band_id: '8', event_id: '20', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '10'},
      {band_id: '9', event_id: '20', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '0'},
      {band_id: '10', event_id: '21', time: Event.find_by(id: "1")['eventStartTime'] + 30.minutes, priority: '20'},
      {band_id: '11', event_id: '21', time: Event.find_by(id: "1")['eventStartTime'] + 60.minutes, priority: '10'},
      {band_id: '12', event_id: '21', time: Event.find_by(id: "1")['eventStartTime'] + 90.minutes, priority: '0'},
    ]
  )
  
  
  

# now = DateTime.now.change(hour: 19, min: 0, sec: 0, offset: 0) 
# now2 = DateTime.new(now.year, now.month, now.day+1, now.hour, 30)
# now3 = DateTime.new(now.year, now.month, now.day+2, 6, 45).change(offset: '-1')
# puts now
# puts now2
# puts now3


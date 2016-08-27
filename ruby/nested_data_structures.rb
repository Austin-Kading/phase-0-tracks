#Nested structure for hotel

hotel = {
  honeymoon_suite: {
    room_class: 'Best rooms in the building', 
    room_info: {
      total_rooms: 4,
    },
    perks: [
      "Swimming pool on roof", 
      "Champagne in the room",
      "Free dinner in hotel restaurant"
    ]
  },
  high_roller_suite: {
    room_class: 'Second to best rooms in the building',
    room_info: {
      total_rooms: 5,
    },
    perks: [
      "Access to swimming pool on roof",
      "Good food delivery service",
      "All paid for by the hotel"
    ]
  },
  lower_floors: {
    room_class: 'For the regular traveling folk',
    room_info: {
      total_rooms: 25,
    },
    perks: []
  }
}

###########################################

#Examples of accessing nested hashes and arrays.

hotel[:high_roller_suite][:room_class]

hotel[lower_floors][perks].push("Nothing really that great here")

["Access to swimming pool on roof","Good food delivery service","All paid for by the hotel"].each_with_index do |item, index|
       print "#{item} " if index%2==0
     end

hotel[:high_roller_suite][:perks][1]

hotel[:high_roller_suite][:perks][2].swapcase
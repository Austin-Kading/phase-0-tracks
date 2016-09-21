# Building ship hash with nested data structure

ship = {
  bottom_deck: {
    living_quarters: {
      total_beds: 10,
      beds_used: 7
      },
      kitchen: [
        'stew',
        'salad',
        'steak'
      ]
  },
  middle_deck: {
    entertainment_deck: {
      pool_tables: 3,
      foozball_tables: 2
      },
      game_tables: [
          'blackjack',
          'poker',
          'monopoly'
      ]
  },
  top_deck: {
    captains_quarters: {
      captains: 1,
      top_deck_crew: 5
    },
    crew_members: [
      'Tony',
      'Dick', 
      'Jane',
      'Stephen',
      'Ben'
    ]
  }
}

# DRIVER CODE TO ACCESS NESTED DATA

p ship[:middle_deck][:game_tables]
p ship[:top_deck][:crew_members][2] 
ship[:top_deck][:crew_members][2] = 'Austin'
p ship[:top_deck][:crew_members]
ship[:bottom_deck][:kitchen].push('hamburgers')
ship[:bottom_deck][:kitchen].push('hot dogs')
ship[:bottom_deck][:kitchen].push('pork')
p ship[:bottom_deck][:kitchen]
p ship[:bottom_deck][:kitchen][3]
p ship[:middle_deck][:entertainment_deck]
ship[:middle_deck][:entertainment_deck][:pool_tables] = 5
p ship[:middle_deck][:entertainment_deck]
p ship[:top_deck][:crew_members]
ship[:top_deck][:crew_members].delete('Tony')
p ship[:top_deck][:crew_members]


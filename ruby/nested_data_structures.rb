nhl_captains = {
    Blackhawks: {
        first_name: 'Jonathan',
        last_name: 'Toews',
        stats:   {
                goals: '28',
                assists: '30'
                 }
                },

    Penguins: {
        first_name: 'Sidney',
        last_name: 'Crosby',
        stats:   {
                goals: '43',
                assists: '49'
                 }
               },

  Islanders: {
        first_name: 'Jon',
        last_name: 'Tavares',
        stats:   {
                goals: '33',
                assists: '37'
                 }
               }
              }

#nhl_captains[:Islanders][:stats]
#p nhl_captains[:Penguins][:first_name]+" "+nhl_captains[:Penguins][:last_name]+ " scored " + nhl_captains[:Penguins][:stats][:goals] + " goals this season."
#Crosby gets hurt for a few games. Let's update the captain name to Evgeni Malkin.
nhl_captains[:Penguins][:first_name] = 'Evegeni'
nhl_captains[:Penguins][:last_name] = 'Malkin'
nhl_captains[:Penguins][:stats][:goals] = '27'
nhl_captains[:Penguins][:stats][:assists] = '31'


p nhl_captains[:Penguins]

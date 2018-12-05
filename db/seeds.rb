empire = Song.create(title: "Empire State of Mind", duration: 4.37)

vocal = Category.create(description: "vocal")
outward = Category.create(description: "outward")
instrumental = Category.create(description: "instrumental")
inward = Category.create(description: "inward")
onward = Category.create(description: "onward")

SongCategory.create(song: empire, category: vocal)
SongCategory.create(song: empire, category: outward)

paparazzi = Song.create(title: "Paparazzi", duration: 4.15)
SongCategory.create(song: paparazzi, category: vocal)
SongCategory.create(song: paparazzi, category: outward)



divenire = Song.create(title: "Divenire", duration: 3.48)

SongCategory.create(song: divenire, category: instrumental)
SongCategory.create(song: divenire, category: inward)

praise_you = Song.create(title: "Praise You", duration: 5.24)
SongCategory.create(song: praise_you, category: vocal)
SongCategory.create(song: praise_you, category: outward)


reverie = Song.create(title: "Reverie", duration: 4.40)
SongCategory.create(song: reverie, category: instrumental)
SongCategory.create(song: reverie, category: inward)


get_on_the_good_foot = Song.create(title: "Get on the Good Foot", duration: 3.35)
SongCategory.create(song: get_on_the_good_foot, category: vocal)
SongCategory.create(song: get_on_the_good_foot, category: outward)


humanised = Song.create(title: "Humanised", duration: 3.35)
SongCategory.create(song: humanised, category: vocal)
SongCategory.create(song: humanised, category: outward)

flow = Song.create(title: "Flow", duration: 4.19)
SongCategory.create(song: flow, category: instrumental)
SongCategory.create(song: flow, category: onward)

flower_garden = Song.create(title: "The Flower Garden", duration: 2.58)
SongCategory.create(song: flower_garden, category: instrumental)
SongCategory.create(song: flower_garden, category: inward)


om = Song.create(title: "Om Namah Shivaya", duration: 4.51)
SongCategory.create(song: om, category: vocal)
SongCategory.create(song: om, category: outward)

prayer = Song.create(title: "Prayer for Peace", duration: 3.21)
SongCategory.create(song: prayer, category: instrumental)
SongCategory.create(song: prayer, category: inward)


moniebah= Song.create(title: "Moniebah", duration: 3.22)
SongCategory.create(song: moniebah, category: instrumental)
SongCategory.create(song: moniebah, category: outward)


cuter = Song.create(title: "You Couldn't Be Cuter", duration: 3.22)
SongCategory.create(song: cuter, category: vocal)
SongCategory.create(song: cuter, category: outward)

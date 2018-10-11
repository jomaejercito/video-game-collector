DATA = [
  {name: "Jenel", email: "jenel@gmail.com",  password: "password"},
  {name: "JM", email: "jm@gmail.com",  password: "password"},
  {name: "Francis", email: "francis@gmail.com",  password: "password"},
  {name: "Tom", email: "tom@gmail.com",  password: "password"},
  {name: "Diana", email: "diana@gmail.com",  password: "password"},
  {name: "Paul", email: "paul@gmail.com",  password: "password"},
  {name: "Vivian", email: "vivian@gmail.com",  password: "password"},
  {name: "Sofia", email: "sofia@gmail.com",  password: "password"},
  {name: "Dan", email: "dan@gmail.com",  password: "password"}
]

def main
  make_users
  make_consoles_and_games
  make_collections
end

def make_users
  DATA.each{|user| User.create(user)}
end

def make_consoles_and_games
  ps4 = Console.create(name: "PlayStation 4")
  ps4.games.create(title: "Persona 5", genre: "JRPG", description: "Persona 5 takes place in modern-day Tokyo, and follows a player-named protagonist after his transfer to the fictional Shujin Academy after being put on probation for an assault of which he was falsely accused.")
  ps4.games.create(title: "Horizon Zero Dawn", genre: "Action RPG", description: "Players take control of Aloy, a hunter who ventures through a post-apocalyptic land ruled by robotic creatures.")
  ps4.games.create(title: "Until Dawn", genre: "Horror", description: "Set in Western Canada, Until Dawn centres around a group of eight teenagers who decide to have a holiday for a night in a cabin on the fictional Blackwood Mountain, exactly one year after the disappearance of two girls, the twin sisters of a member of their group.")
  ps4.games.create(title: "Marvel's Spider-Man", genre: "Action-adventure", description: "Spider-Man is an action-adventure game set in an open world modern-day New York City and played from a third-person perspective. It features combat systems such as aerial combat, Spider Sense reflexes, web-shooting, and finishing moves.")
  ps4.games.create(title: "Uncharted 4: A Theif's End", genre: "Action-adventure", description: "Years before the events of Uncharted: Drake's Fortune, brothers Nate and Sam Drake hunt for the treasure of infamous pirate Henry Avery, who plundered $400 million during the 1695 Gunsway heist.")

  xboxone = Console.create(name: "Xbox One")
  xboxone.games.create(title: "Forza Horizon 4", genre: "Racing", description: "Forza Horizon 4 is a racing video game set in an open world environment based in a fictional representation of United Kingdom and features over 450 licensed cars.")
  xboxone.games.create(title: "Halo 5: Guardians", genre: "First-person Shooter", description: "Halo 5: Guardians is a first-person shooter, with players experiencing most gameplay through the eyes of a playable character. The camera switches to a third-person view for some cinematics and gameplay sequences.")
  xboxone.games.create(title: "Gears of War 4", genre: "Third-person Shooter", description: "Gears of War 4 takes place 25 years after the events of Gears of War 3. Although the use of the Imulsion Countermeasure weapon destroyed all Imulsion on the planet Sera, killing the Locust and the Lambent in the process, the weapon forced humanity to adapt to new ways of survival after knocking out the use of fossil fuels, and bringing across the planet powerful windstorms called 'Windflares'.")
  xboxone.games.create(title: "Sea of Thieves", genre: "Action-adventure", description: "Sea of Thieves is a pirate-themed action-adventure cooperative multiplayer game played from a first-person perspective.")
  xboxone.games.create(title: "Dance Central Spotlight", genre: "Music/Rhythm", description: "Similarly to previous installments in the franchise, players must mirror the dance routine of an on-screen dancer, as instructed by 'flash cards' indicating specific moves in the routine. Players are judged and scored on the accuracy of their performance.")

  switch = Console.create(name: "Nintendo Switch")
  switch.games.create(title: "Super Mario Odyssey", genre: "Platformer", description: "Super Mario Odyssey is a platform game in which players control Mario as he travels across many different worlds, known as 'Kingdoms', on the Odyssey, a hat-shaped ship, to rescue Princess Peach from Bowser, who plans to forcibly marry her.")
  switch.games.create(title: "The Legend of Zelda: Breath of the Wild", genre: "Action-adventure", description: "Breath of the Wild is an action-adventure game set in an open world environment where players are tasked with exploring the kingdom of Hyrule while controlling Link.")
  switch.games.create(title: "Xenoblade Chronicles 2", genre: "JRPG", description: "The game employs an open world design, with players able to freely navigate seamlessly interconnected environments. A day-and-night time cycle exists in the game, with the time of day often affecting in-game events, quests, enemy strengths, and item availability.")
  switch.games.create(title: "Fire Emblem Warriors", genre: "Hack-and-slash", description: "Fire Emblem Warriors is a hack-and-slash action role-playing game in which players take the role of multiple characters including original characters Rowan and Lianna, and characters from several Fire Emblem games.")
  switch.games.create(title: "Super Mario Party", genre: "Party", description: "The standard game mode, Party Mode, features up to four players taking turns and navigating the board in search of stars while competing against one another in a variety of minigames.")
end

def make_collections
  users = User.all
  users.each do |user|
    Game.all.each do |game|
      user.games << game
      user.save
    end
  end
end

main

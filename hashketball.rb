# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def num_points_scored(str)
  game = game_hash
  game[:home][:players].each do |x|
    if x[:player_name] == str
      return x[:points]
    end
  end
  game[:away][:players].each do |x|
    if x[:player_name] == str
      return x[:points]
    end
  end
  
end

def shoe_size(str)
  game = game_hash
  game[:home][:players].each do |x|
    if x[:player_name] == str
      return x[:shoe]
    end
  end
  game[:away][:players].each do |x|
    if x[:player_name] == str
      return x[:shoe]
    end
  end
  return nil
end

def team_colors(str)
  game = game_hash
  game[:home][:team_name] == str ? (return game[:home][:colors]) : (return game[:away][:colors])
end

def team_names
  game = game_hash
  teams = []
  teams.push(game[:home][:team_name])
  teams.push(game[:away][:team_name])
  teams
end

def player_numbers(str)
  game = game_hash
  nets_numbers = []
  hornets_numbers = []
  game[:home][:players].each do |x|
    nets_numbers.push(x[:number])
  end
  game[:away][:players].each do |x|
    hornets_numbers.push(x[:number])
  end
  game[:home][:team_name] == str ? (return nets_numbers) : (return hornets_numbers)
end

def player_stats(str)
    game = game_hash
  game[:home][:players].each do |x|
    if x[:player_name] == str
      return x
    end
  end
  game[:away][:players].each do |x|
    if x[:player_name] == str
      return x
    end
  end
  return nil
end

def big_shoe_rebounds
rebounds = 0
max_value = 0
game = game_hash
game[:home][:players].each do |x|
if x[:shoe] > max_value
   max_value = x[:shoe]
   rebounds = x[:rebounds]
 else
   max_value = max_value
   rebounds = rebounds
end
end
game[:away][:players].each do |x|
if x[:shoe] > max_value
   max_value = x[:shoe]
   rebounds = x[:rebounds]
 else
   max_value = max_value
   rebounds = rebounds
end

end

return rebounds
end
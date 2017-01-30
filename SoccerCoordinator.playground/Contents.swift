// Part 1
// individual player constants are stored into their own dictionary as well as one constant that holds all the players, both of these groups are referenced to a typealias that holds the Type
typealias Player = [String: Any]
typealias PlayerArray = [Player]
//test commit

let player1: Player = ["Name": "Joe Smith", "Height": 42.0, "isExperienced": true, "Guardian": "Jim and Jan Smith"]
let player2: Player = ["Name": "Jill Tanner", "Height": 36.0, "isExperienced": true, "Guardian": "Clara Tanner"]
let player3: Player = ["Name": "Bill Bonn", "Height": 43.0, "isExperienced": true, "Guardian": "Sara and Jenny Bon"]
let player4: Player = ["Name": "Eva Gordon", "Height": 45.0, "isExperienced": false, "Guardian": "Wendy and Mike Gordon"]
let player5: Player = ["Name": "Matt Gill", "Height": 40.0, "isExperienced": false, "Guardian": "Charles and Sylvia Gill"]
let player6: Player = ["Name": "Kimmy Stein", "Height": 41.0, "isExperienced": false, "Guardian": "Bill and Hillary Stein"]
let player7: Player = ["Name": "Sammy Adams", "Height": 45.0, "isExperienced": false, "Guardian": "Jeff Adams"]
let player8: Player = ["Name": "Karl Saygan", "Height": 42.0, "isExperienced": true, "Guardian": "Heather Bledsoe"]
let player9: Player = ["Name": "Suzane Greenberg", "Height": 44.0, "isExperienced": true, "Guardian": "Henrietta Dumas"]
let player10: Player = ["Name": "Sal Dali", "Height": 41.0, "isExperienced": false, "Guardian": "Gala Dali"]
let player11: Player = ["Name": "Joe Kavalier", "Height": 39.0, "isExperienced": false, "Guardian": "Sam and Elaine Kavalier"]
let player12: Player = ["Name": "Ben Finkelstein", "Height": 44.0, "isExperienced": false, "Guardian": "Aaron and Jill Finkelstein"]
let player13: Player = ["Name": "Diego Soto", "Height": 41.0, "isExperienced": true, "Guardian": "Robin and Sarika Soto"]
let player14: Player = ["Name": "Chloe Alaska", "Height": 47.0, "isExperienced": false, "Guardian": "David and Jamie Alaska"]
let player15: Player = ["Name": "Arnold Willis", "Height": 43.0, "isExperienced": false, "Guardian": "Claire Willis"]
let player16: Player = ["Name": "Phillip Helm", "Height": 44.0, "isExperienced": true, "Guardian": "Thomas Helm and Eva Jones"]
let player17: Player = ["Name": "Les Clay", "Height": 42.0, "isExperienced": true, "Guardian": "Wynonna Brown"]
let player18: Player = ["Name": "Herschel Krustofski", "Height": 45.0, "isExperienced": true, "Guardian": "Hyman and Rachel Krustofski"]

let players: PlayerArray = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

//Part 2
// variables holding the players for each team
var dragons = [[String: Any]]()
var sharks = [[String: Any]]()
var raptors = [[String: Any]]()
let leageue = [dragons, sharks, raptors]

// variables holding the players who have expereince with soccer vs those that do not
var experiencedPlayers = [[String: Any]]()
var inexperiencedPlayers = [[String: Any]]()

// logic that sorts all players into two groups, those with experience and the inexperienced
for player in players {
    if player["isExperienced"] as? Bool == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}
// variables holding the logic that sorts the experienced players based on height
var sortedExperiencedPlayers = experiencedPlayers.sorted { (player1, player2) -> Bool in
    let player1Height = (player1["Height"] as? Double) ?? 0
    let player2Height = (player2["Height"] as? Double) ?? 0
    return player1Height > player2Height
}

// variables holding the logic that sorts the inexperienced players based on height [Note: sorted() was more advanced ]
var sortedInexperiencedPlayers = inexperiencedPlayers.sorted { (player1, player2) -> Bool in
    let player1Height = (player1["Height"] as? Double) ?? 0
    let player2Height = (player2["Height"] as? Double) ?? 0
    return player1Height > player2Height
}

//logic that sorts the experienced players into three even teams
var count = experiencedPlayers.count
while count > 0 {
    dragons.append(sortedExperiencedPlayers.removeFirst())
    sharks.append(sortedExperiencedPlayers.removeFirst())
    raptors.append(sortedExperiencedPlayers.removeFirst())
    count -= 3
}

//logic that sorts inexperienced players into three even teams
var counter = inexperiencedPlayers.count
while counter > 0 {
    dragons.append(sortedInexperiencedPlayers.removeFirst())
    sharks.append(sortedInexperiencedPlayers.removeFirst())
    raptors.append(sortedInexperiencedPlayers.removeFirst())
    counter -= 3
}
var dragonHeights: [Double] = []
var sharkHeights: [Double] = []
var raptorHeights: [Double] = []

var dragonsAverage: Double = 0
var sharksAverage: Double = 0
var raptorsAverage: Double = 0

var averageHeightforTeam: Double = 0
var teamsAverageHeight: Double = 0


//Logic that collects all the heights for a team and stores them in an array of type Double. NOTE: 'inout' is more advanced for me.
func heightsCollectorBy(teamHeightBox: inout [Double], teamName: [[String:Any]]) -> [Double] {
    for player in teamName {
        if let heights = player["Height"] as? Double {
            teamHeightBox.append(heights)
        }
    }
    return teamHeightBox
}
heightsCollectorBy(teamHeightBox: &dragonHeights, teamName: dragons)
heightsCollectorBy(teamHeightBox: &sharkHeights, teamName: sharks)
heightsCollectorBy(teamHeightBox: &raptorHeights, teamName: raptors)

dragonHeights
sharkHeights
raptorHeights

// logic that will give the average height for a team
func averageHeightFor(team: [Double]) -> Double {
    averageHeightforTeam = 0
    
    for playerHeights in team {
        averageHeightforTeam += playerHeights
    }
    
    teamsAverageHeight = averageHeightforTeam / Double(team.count)   // Note: more advanced section, divided by type of Double is new fo me.
    return teamsAverageHeight
}
raptorsAverage = averageHeightFor(team: raptorHeights)
sharksAverage = averageHeightFor(team: sharkHeights)
dragonsAverage = averageHeightFor(team: dragonHeights)

//print(raptorsAverage)
//41.1666666666667
raptorHeights
//print(sharksAverage)
//42.5
sharkHeights
//print(dragonsAverage)
//43.6666666666667
dragonHeights

///huh, shoot, looks like the averages are off by more than 1.5
//dragons 43.666
//sharks 42.5
//raptors 41.666

//Part 3
// to be refactored...
let dragonsPractice = "March 17, 1pm"
let sharksPractice = "March 17, 3pm"
let raptorsPractice = "March 18, 1pm"
let practiceTimes = [dragonsPractice, sharksPractice, raptorsPractice]
let dragonsName = "Dragons soccer team"
let sharksName = "Sharks soccer team"
let raptorsName = "Raptors soccer team"
let teamNames = [dragonsName,sharksName, raptorsName]
var team = ""
func guardianLetterBy(teamName: [[String:Any]]) {
    if teamName == raptors {
        team = dragonsName,
        practiceTimes = dragonsPractice
    } else if teamName == sharks {
        team = sharksName,
        practiceTimes = sharksPractice
    } else {
        team = raptorsName,
        practiceTimes = raptorsPractice
    }
    
  for guardianInfo in teamName {
    let guardian = guardianInfo["Guardian"] as! String
    let player = guardianInfo["Name"] as! String
    print("Hi \(guardian), \(player) has been officially accepted to the \(teamNames)!!! The first team pracice will be held on \(practiceTimes) at St. Johns Cathedral park in Portland. We look forward to having \(player) on the team! Thanks, The little league soccer volunteers")
  }
}
guardianLetterBy(teamName: sharks)

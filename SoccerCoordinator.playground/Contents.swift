// Part 1
// individual player constants are stored into their own dictionary as well as one constant that holds all the players, both of these groups are referenced to a typealias that holds the Type
typealias Player = [String: Any]
typealias PlayerArray = [Player]
//test commit

let player1: Player = ["Name": "Joe Smith", "Height": 42.0, "isExperienced": true, "Guardian": "Jim and Jan Smith"]
let player2: Player = ["Name": "Jill Tanner", "Height": 36.0, "isExperienced": true, "Guardian": "Clara Tanner"]
let player3: Player = ["Name": "Bill Bonn", "Height": 43.0, "isExperienced": true, "Guardian": "Sara and Jenny Bonn"]
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
    return player1Height < player2Height
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

//Part 3
/*Part 3: Create logic that iterates through all three teams of players and generates a personalized letter to the guardians, letting them know which team their child has been placed on and when they should attend their first team team practice. As long as you provide the necessary information (player name, team name, guardians’ names, practice date/time), feel free to have fun with the content of the letter. The team practice dates/times are as follows: Dragons - March 17, 1pm, Sharks - March 17, 3pm, Raptors - March 18, 1pm
 
 When your complete code is run in a playground the letters should be visible in the right hand pane. If the code is run within an actual Xcode Project, the letters should be visible in the console.*/

//let dragonsPractice = "March 17, 1pm"
//let sharksPractice = "March 17, 3pm"
//let raptorsPractice = "March 18, 1pm"



for player in players {
    let guardian = player["Guardian"] as! String
    let player = player["Name"] as! String
    // all this needs now is the TEAMname and PRACTICEtime.
    print("\nHi \(guardian),\n\n \(player) has been officially accepted to the \(playersTeamName)!!! The first team pracice will be held on \(practiceTimes) at St. Johns Cathedral park in Portland. We look forward to having \(player) on the team!\n\n Thanks,\n The little league soccer volunteers")
    print("_________________________________")
}

// the code below works but is DRY how can I clean this up by refactoring to one for-in loop?

//for player in dragons {
//        let guardian = player["Guardian"] as! String
//        let player = player["Name"] as! String
//        print("\nHi \(guardian),\n\n \(player) has been officially accepted to the Dragons soccer team!!! The first team pracice will be held on March 17, 1pm at St. Johns Cathedral park in Portland. We look forward to having \(player) on the team!\n\n Thanks,\n The little league soccer volunteers")
//        print("_________________________________")
//}
//for player in sharks {
//    let guardian = player["Guardian"] as! String
//    let player = player["Name"] as! String
//    print("\nHi \(guardian),\n\n \(player) has been officially accepted to the Sharks soccer team!!! The first team pracice will be held on March 17, 1pm at St. Johns Cathedral park in Portland. We look forward to having \(player) on the team!\n\n Thanks,\n The little league soccer volunteers")
//    print("_________________________________")
//}
//for player in raptors {
//    let guardian = player["Guardian"] as! String
//    let player = player["Name"] as! String
//    print("\nHi \(guardian),\n\n \(player) has been officially accepted to the Raptors soccer team!!! The first team pracice will be held on March 17, 1pm at St. Johns Cathedral park in Portland. We look forward to having \(player) on the team!\n\n Thanks,\n The little league soccer volunteers")
//    print("_________________________________")
//}

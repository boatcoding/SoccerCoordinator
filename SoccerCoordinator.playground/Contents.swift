// Part 1
// individual player constants are stored into their own dictionary as well as one constant that holds all the players, both of these groups are referenced to a typealias that holds the Type
typealias Player = [String: Any]
typealias PlayerArray = [Player]

let player1: Player = ["Name": "Joe Smith", "Height": 42, "isExperienced": true, "Guardian": "Jim and Jan Smith"]
let player2: Player = ["Name": "Jill Tanner", "Height": 36, "isExperienced": true, "Guardian": "Clara Tanner"]
let player3: Player = ["Name": "Bill Bonn", "Height": 43, "isExperienced": true, "Guardian": "Sara and Jenny Bon"]
let player4: Player = ["Name": "Eva Gordon", "Height": 45, "isExperienced": false, "Guardian": "Wendy and Mike Gordon"]
let player5: Player = ["Name": "Matt Gill", "Height": 40, "isExperienced": false, "Guardian": "Charles and Sylvia Gill"]
let player6: Player = ["Name": "Kimmy Stein", "Height": 41, "isExperienced": false, "Guardian": "Bill and Hillary Stein"]
let player7: Player = ["Name": "Sammy Adams", "Height": 45, "isExperienced": false, "Guardian": "Jeff Adams"]
let player8: Player = ["Name": "Karl Saygan", "Height": 42, "isExperienced": true, "Guardian": "Heather Bledsoe"]
let player9: Player = ["Name": "Suzane Greenberg", "Height": 44, "isExperienced": true, "Guardian": "Henrietta Dumas"]
let player10: Player = ["Name": "Sal Dali", "Height": 41, "isExperienced": false, "Guardian": "Gala Dali"]
let player11: Player = ["Name": "Joe Kavalier", "Height": 39, "isExperienced": false, "Guardian": "Sam and Elaine Kavalier"]
let player12: Player = ["Name": "Ben Finkelstein", "Height": 44, "isExperienced": false, "Guardian": "Aaron and Jill Finkelstein"]
let player13: Player = ["Name": "Diego Soto", "Height": 41, "isExperienced": true, "Guardian": "Robin and Sarika Soto"]
let player14: Player = ["Name": "Chloe Alaska", "Height": 47, "isExperienced": false, "Guardian": "David and Jamie Alaska"]
let player15: Player = ["Name": "Arnold Willis", "Height": 43, "isExperienced": false, "Guardian": "Claire Willis"]
let player16: Player = ["Name": "Phillip Helm", "Height": 44, "isExperienced": true, "Guardian": "Thomas Helm and Eva Jones"]
let player17: Player = ["Name": "Les Clay", "Height": 42, "isExperienced": true, "Guardian": "Wynonna Brown"]
let player18: Player = ["Name": "Herschel Krustofski", "Height": 45, "isExperienced": true, "Guardian": "Hyman and Rachel Krustofski"]

let players: PlayerArray = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]















//Part 2
// variables holding the players for each team
var dragons = [[String: Any]]()
var sharks = [[String: Any]]()
var raptors = [[String: Any]]()
var league = [dragons, sharks, raptors]

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
    let player1Height = (player1["Height"] as? Int) ?? 0
    let player2Height = (player2["Height"] as? Int) ?? 0
    return player1Height > player2Height
}

// variables holding the logic that sorts the inexperienced players based on height [Note: sorted() was more advanced ]
var sortedInexperiencedPlayers = inexperiencedPlayers.sorted { (player1, player2) -> Bool in
    let player1Height = (player1["Height"] as? Int) ?? 0
    let player2Height = (player2["Height"] as? Int) ?? 0
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






//var teamHeights = [Double]()
//func getsTeamHeights([[String:Any]]) -> Double{
//    
//    return teamHeights
//}
//func getsAverage(teamHeights:Double) -> Double {
//    
//    return
//}

//logic that gives average height for each team as a test for the above, also create a func for this.....
//var teamHeight = [Double]()
//func getsHeights(teamName: [[String:Any]]) -> Double {
//    var playerHeight = (teamName[0]["Height"] as? Int)
//    teamHeight += playerHeight
//    return teamHeight
//}
//











//var team = [Any]()
//func collectsHeights(team: [[String:Any]]) -> [Double] {
//    //collects height value and stores in a variable
//    var collector = (team[0]["Height"] as? Int)
//    return [collector]
//}
//collectsHeights(team: raptors)
//
//
//
//
//
//func getsAverage(collectsHeights: [Double]) -> Double {
//    return Double
//}

//collectsHeights(team: raptors)


var dragonsTotalHeight = [Double]()
for height in dragons {
    var playerHeight = (dragons[0]["Height"] as? Double)
    
    print(test)
}

//var dragonsAverageHeight = dragonsTotalHeight / dragons.count

var sharksTotalHeight = 0
for height in sharks {
    var sharksHeight = (sharks[0]["Height"] as? Int)
    sharksTotalHeight += sharksHeight!
}
var sharksAverageHeight = sharksTotalHeight / sharks.count

var raptorsTotalHeight = 0
for height in raptors {
    var raptorsHeight = (raptors[0]["Height"] as? Int)
    raptorsTotalHeight += raptorsHeight!
}
var raptorsAverageHeight = raptorsTotalHeight / raptors.count









































//Part 3
// create a func for all this hoop plah...

//let dragonsPractice = "March 17, 1pm"
//let sharksPractice = "March 17, 3pm"
//let raptorsPractice = "March 18, 1pm"
//let dragonsName = "Dragons soccer team"
//let sharksName = "Sharks soccer team"
//let raptorsName = "Raptors soccer team"
//
//for guardianLetterInfo in dragons {
//    var guardian = guardianLetterInfo["Guardian"] as! String
//    var player = guardianLetterInfo["Name"] as! String
//    print("Hi \(guardian), \(player) has been officially accepted to the \(dragonsName)!!! The first team pracice will be held on \(dragonsPractice) at St. Johns Cathedral park in Portland. We look forward to having \(player) on the team! Thanks, The \(dragonsName)")
//}
//
//for guardianLetterInfo in sharks {
//    var guardian = guardianLetterInfo["Guardian"] as! String
//    var player = guardianLetterInfo["Name"] as! String
//    print("Hi \(guardian), \(player) has been officially accepted to the \(sharksName)!!! The first team pracice will be held on \(sharksPractice) at St. Johns Cathedral park in Portland. We look forward to having \(player) on the team! Thanks, The \(sharksName)")
//}
//
//for guardianLetterInfo in raptors {
//    var guardian = guardianLetterInfo["Guardian"] as! String
//    var player = guardianLetterInfo["Name"] as! String
//    print("Hi \(guardian), \(player) has been officially accepted to the \(raptorsName)!!! The first team pracice will be held on \(raptorsPractice) at St. Johns Cathedral park in Portland. We look forward to having \(player) on the team! Thanks, The \(raptorsName)")
//}

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

// variables holding the players for each team
var dragons = [[String: Any]]()
var sharks = [[String: Any]]()
var raptors = [[String: Any]]()

// variables holding the players who have expereince with soccer vs those that do not
var experiencedPlayers = [[String: Any]]()
var inexperiencedPlayers = [[String: Any]]()

// logic that sorts all players into two groups, those with experience and the unexperienced
for player in players {
    if player["isExperienced"] as! Bool == true {
        experiencedPlayers.append(player)
    } else {
        inexperiencedPlayers.append(player)
    }
}






experiencedPlayers[0]["Height"] as! Int).sorted { (<#[String : Any]#>, <#[String : Any]#>) -> Bool in
    <#code#>
}



// logic that sorts the experienced players by height

var myArray = [9, player2, 1, 10, player1, 5] as [Any]
print(myArray.sorted($0 < $1))
//    print(myArray.sorted(by: as Int))

// Initialize the Array
var a = [6,3,2,1,5,4]

experiencedPlayers.sorted(by: { (<#[String : Any]#>, <#[String : Any]#>) -> Bool in
    code
})
print(experiencedPlayers)


// Sort (ascending) its elements

a = a.sorted { $0 > $1 }
print(a)

//logic that sorts experienced players into three even teams
var count = experiencedPlayers.count
while count > 0 {
//    experiencedPlayers.sorted(by: { (<#[String : Any]#>, <#[String : Any]#>) -> Bool in
  //      <#code#>
   // })


    dragons.append(experiencedPlayers.removeFirst())
    sharks.append(experiencedPlayers.removeFirst())
    raptors.append(experiencedPlayers.removeFirst())
    count -= 3
}














//logic that sorts inexperienced players into three even teams
var counter = inexperiencedPlayers.count
while counter > 0 {
    dragons.append(inexperiencedPlayers.removeFirst())
    sharks.append(inexperiencedPlayers.removeFirst())
    raptors.append(inexperiencedPlayers.removeFirst())
    counter -= 3
}

// logic that gives average height for each team
var dragonsTotalHeight = 0
for height in dragons {
    var dragonHeight = (dragons[0]["Height"] as! Int)
    print(dragonsTotalHeight += dragonHeight)
}
var dragonsAverageHeight = dragonsTotalHeight / dragons.count

var sharksTotalHeight = 0
for height in sharks {
    var sharksHeight = (sharks[0]["Height"] as! Int)
    sharksTotalHeight += sharksHeight
}
var sharksAverageHeight = sharksTotalHeight / sharks.count

var raptorsTotalHeight = 0
for height in raptors {
    var raptorsHeight = (raptors[0]["Height"] as! Int)
    raptorsTotalHeight += raptorsHeight
}
var raptorsAverageHeight = raptorsTotalHeight / raptors.count

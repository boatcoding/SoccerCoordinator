import UIKit

// individual player variables are stored into their own dictionary

let jSmith: [String: Any] = ["Name": "Joe Smith", "Height": "42", "Experience": true, "Guardian": "Jim and Jan Smith"]
let jTanner: [String: Any] = ["Name": "Jill Tanner", "Height": "36", "Experience": true, "Guardian": "Clara Tanner"]
let bBon: [String: Any] = ["Name": "Bill Bonn", "Height": "43", "Experience": true, "Guardian": "Sara and Jenny Bon"]
let eGordon: [String: Any] = ["Name": "Eva Gordon", "Height": "45", "Experience": false, "Guardian": "Wendy and Mike Gordon"]
let mGill: [String: Any] = ["Name": "Matt Gill", "Height": "40", "Experience": false, "Guardian": "Charles and Sylvia Gill"]
let kStein: [String: Any] = ["Name": "Kimmy Stein", "Height": "41", "Experience": false, "Guardian": "Bill and Hillary Stein"]
let sAdams: [String: Any] = ["Name": "Sammy Adams", "Height": "45", "Experience": false, "Guardian": "Jeff Adams"]
let kSaygan: [String: Any] = ["Name": "Karl Saygan", "Height": "42", "Experience": true, "Guardian": "Heather Bledsoe"]
let sGreenberg: [String: Any] = ["Name": "Suzane Greenberg", "Height": "44", "Experience": true, "Guardian": "Henrietta Dumas"]
let sDali: [String: Any] = ["Name": "Sal Dali", "Height": "41", "Experience": false, "Guardian": "Gala Dali"]
let jKavalier: [String: Any] = ["Name": "Joe Kavalier", "Height": "39", "Experience": false, "Guardian": "Sam and Elaine Kavalier"]
let bFinkelstein: [String: Any] = ["Name": "Ben Finkelstein", "Height": "44", "Experience": false, "Guardian": "Aaron and Jill Finkelstein"]
let dSoto: [String: Any] = ["Name": "Diego Soto", "Height": "41", "Experience": true, "Guardian": "Robin and Sarika Soto"]
let cAlaska: [String: Any] = ["Name": "Chloe Alaska", "Height": "47", "Experience": false, "Guardian": "David and Jamie Alaska"]
let aWillis: [String: Any] = ["Name": "Arnold Willis", "Height": "43", "Experience": false, "Guardian": "Claire Willis"]
let pHelm: [String: Any] = ["Name": "Phillip Helm", "Height": "44", "Experience": true, "Guardian": "Thomas Helm and Eva Jones"]
let lClay: [String: Any] = ["Name": "Les Clay", "Height": "42", "Experience": true, "Guardian": "Wynonna Brown"]
let hKrustofski: [String: Any] = ["Name": "Herschel Krustofski", "Height": "45", "Experience": true, "Guardian": "Hyman and Rachel Krustofski"]

// all players within the league are now stored within this one array
let players = [jSmith, jTanner, bBon, eGordon, mGill, kStein, sAdams, kSaygan, sGreenberg, sDali, jKavalier, bFinkelstein, dSoto, cAlaska, aWillis, pHelm, lClay, hKrustofski]

// variables holding the players for each team
var dragons = [Any]()
var sharks = [Any]()
var raptors = [Any]()

// variables holding the players who have expereince with soccer vs those that do not
var experience: [Any] = []
var noExperience: [Any] = []

// logic that sorts all players into two groups, those with experience and those that have never played before

for player in players {
    if player["Experience"] as! Bool == true {
       experience.append(player)
    } else {
        noExperience.append(player)
    }
}
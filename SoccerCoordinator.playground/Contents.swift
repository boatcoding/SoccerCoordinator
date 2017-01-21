import UIKit

// individual player variables are stored into their own dictionary

let jSmith: [String: String] = ["Name": "Joe Smith", "Height": "42", "Experience": "Yes", "Guardian": "Jim and Jan Smith"]
let jTanner: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Experience": "Yes", "Guardian": "Clara Tanner"]
let bBon: [String: String] = ["Name": "Bill Bonn", "Height": "43", "Experience": "Yes", "Guardian": "Sara and Jenny Bon"]
let eGordon: [String: String] = ["Name": "Eva Gordon", "Height": "45", "Experience": "No", "Guardian": "Wendy and Mike Gordon"]
let mGill: [String: String] = ["Name": "Matt Gill", "Height": "40", "Experience": "No", "Guardian": "Charles and Sylvia Gill"]
let kStein: [String: String] = ["Name": "Kimmy Stein", "Height": "41", "Experience": "No", "Guardian": "Bill and Hillary Stein"]
let sAdams: [String: String] = ["Name": "Sammy Adams", "Height": "45", "Experience": "No", "Guardian": "Jeff Adams"]
let kSaygan: [String: String] = ["Name": "Karl Saygan", "Height": "42", "Experience": "Yes", "Guardian": "Heather Bledsoe"]
let sGreenberg: [String: String] = ["Name": "Suzane Greenberg", "Height": "44", "Experience": "Yes", "Guardian": "Henrietta Dumas"]
let sDali: [String: String] = ["Name": "Sal Dali", "Height": "41", "Experience": "No", "Guardian": "Gala Dali"]
let jKavalier: [String: String] = ["Name": "Joe Kavalier", "Height": "39", "Experience": "No", "Guardian": "Sam and Elaine Kavalier"]
let bFinkelstein: [String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Experience": "No", "Guardian": "Aaron and Jill Finkelstein"]
let dSoto: [String: String] = ["Name": "Diego Soto", "Height": "41", "Experience": "Yes", "Guardian": "Robin and Sarika Soto"]
let cAlaska: [String: String] = ["Name": "Chloe Alaska", "Height": "47", "Experience": "No", "Guardian": "David and Jamie Alaska"]
let aWillis: [String: String] = ["Name": "Arnold Willis", "Height": "43", "Experience": "No", "Guardian": "Claire Willis"]
let pHelm: [String: String] = ["Name": "Phillip Helm", "Height": "44", "Experience": "Yes", "Guardian": "Thomas Helm and Eva Jones"]
let lClay: [String: String] = ["Name": "Les Clay", "Height": "42", "Experience": "Yes", "Guardian": "Wynonna Brown"]
let hKrustofski: [String: String] = ["Name": "Herschel Krustofski", "Height": "45", "Experience": "Yes", "Guardian": "Hyman and Rachel Krustofski"]

// all players within the league are now stored within this one array
var players = [jSmith, jTanner, bBon, eGordon, mGill, kStein, sAdams, kSaygan, sGreenberg, sDali, jKavalier, bFinkelstein, dSoto, cAlaska, aWillis, pHelm, lClay, hKrustofski]

// variables holding the players for each team
var dragons = [String:String]()
var sharks = [String:String]()
var raptors = [String:String]()

// variables holding the players who have expereince with soccer vs those that do not
var experience: [AnyObject] = []
var noExpereience: [AnyObject] = []

// logic that sorts all players into two groups, those with expereicnce and those that have never played before

for player in players {
    if player["Experience"] == "Yes" {
        print(player)
    } else {
        print("wrong")
    }
}
import UIKit

// individual player variables are stored into their own dictionary

var jSmith: [String: String] = ["Name": "Joe Smith", "Height": "42", "Experience": "Yes", "Guardian": "Jim and Jan Smith"]
var jTanner: [String: String] = ["Name": "Jill Tanner", "Height": "36", "Experience": "Yes", "Guardian": "Clara Tanner"]
var bBon: [String: String] = ["Name": "Bill Bonn", "Height": "43", "Experience": "Yes", "Guardian": "Sara and Jenny Bon"]
var eGordon: [String: String] = ["Name": "Eva Gordon", "Height": "45", "Experience": "No", "Guardian": "Wendy and Mike Gordon"]
var mGill: [String: String] = ["Name": "Matt Gill", "Height": "40", "Experience": "No", "Guardian": "Charles and Sylvia Gill"]
var kStein: [String: String] = ["Name": "Kimmy Stein", "Height": "41", "Experience": "No", "Guardian": "Bill and Hillary Stein"]
var sAdams: [String: String] = ["Name": "Sammy Adams", "Height": "45", "Experience": "No", "Guardian": "Jeff Adams"]
var kSaygan: [String: String] = ["Name": "Karl Saygan", "Height": "42", "Experience": "Yes", "Guardian": "Heather Bledsoe"]
var sGreenberg: [String: String] = ["Name": "Suzane Greenberg", "Height": "44", "Experience": "Yes", "Guardian": "Henrietta Dumas"]
var sDali: [String: String] = ["Name": "Sal Dali", "Height": "41", "Experience": "No", "Guardian": "Gala Dali"]
var jKavalier: [String: String] = ["Name": "Joe Kavalier", "Height": "39", "Experience": "No", "Guardian": "Sam and Elaine Kavalier"]
var bFinkelstein: [String: String] = ["Name": "Ben Finkelstein", "Height": "44", "Experience": "No", "Guardian": "Aaron and Jill Finkelstein"]
var dSoto: [String: String] = ["Name": "Diego Soto", "Height": "41", "Experience": "Yes", "Guardian": "Robin and Sarika Soto"]
var cAlaska: [String: String] = ["Name": "Chloe Alaska", "Height": "47", "Experience": "No", "Guardian": "David and Jamie Alaska"]
var aWillis: [String: String] = ["Name": "Arnold Willis", "Height": "43", "Experience": "No", "Guardian": "Claire Willis"]
var pHelm: [String: String] = ["Name": "Phillip Helm", "Height": "44", "Experience": "Yes", "Guardian": "Thomas Helm and Eva Jones"]
var lClay: [String: String] = ["Name": "Les Clay", "Height": "42", "Experience": "Yes", "Guardian": "Wynonna Brown"]
var hKrustofski: [String: String] = ["Name": "Herschel Krustofski", "Height": "45", "Experience": "Yes", "Guardian": "Hyman and Rachel Krustofski"]
pHelm
pHelm["Experience"]

// all players within the league are now stored within this one array
var players = [jSmith, jTanner, bBon, eGordon, mGill, kStein, sAdams, kSaygan, sGreenberg, sDali, jKavalier, bFinkelstein, dSoto, cAlaska, aWillis, pHelm, lClay, hKrustofski]

// variables holding the players for each team
var dragons: [String] = []
var sharks: [String] = []
var raptors: [String] = []

// variables holding the players who have expereince with soccer vs those that do not
var experience: [String] = []
var noExpereience: [String] = []

// logic that sorts all players into two groups, those with expereicnce and those that have never played before

if players["Experience"] === "Yes" {
    experience.append[players]
} else if players["Experience"] == "No" {
    noExpereince.append[players]
}
experience
noExpereience

//Create logic that can iterate through all 18 players and assign them to teams such that the number of experienced players on each team are the same. Store each team’s players in its own new collection variable for use in Part 3. (Please note: your logic should work correctly regardless of the initial ordering of the players and should work, if we theoretically had more or less than 18 players, so NO MAGIC NUMBERS!)


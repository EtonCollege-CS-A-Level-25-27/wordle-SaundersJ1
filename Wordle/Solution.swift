//
//  Solution.swift
//  WordleTeacher
//
//  Created by Bersey, Henry - HTB on 28/09/2025.
//


struct Solution {

    /// 1️⃣ Return an array of Bools where each value is `true`
    /// if the letter in the guess is correct and in the correct position
    ///
    /// - Example:
    ///   - guess:  ["A", "B", "C", "D", "E"]
    ///   - answer: ["A", "X", "C", "Y", "E"]
    ///   - return: [true, false, true, false, true]
    func exactMatches(guess: [Character], answer: [Character]) -> [Bool] {
        var returnArray: [Bool] = []
        
        for (index, item) in guess.enumerated() {
            
            if item == answer[index] {
                returnArray.append(true)
            }
            
            else {
                returnArray.append(false)
            }
        }
        return returnArray
    }
                    


    /// 2️⃣ Return an array of Bools where each value is `true`
    /// if the letter in the guess exists somewhere in the answer
    /// but NOT in the correct position
    ///
    /// - Only mark true if the letter is in the word AND not an exact match
    /// - Example:
    ///   - guess:  ["F", "B", "C", "D", "E"]
    ///   - answer: ["A", "C", "B", "D", "E"]
    ///   - return: [false, true, true, false, false]
    func partialMatches(guess: [Character], answer: [Character]) -> [Bool] {
        var returnArray: [Bool] = []
        
        for (index, item) in guess.enumerated() {
            
            if answer.contains(item) && item != answer[index] {
                returnArray.append(true)
            }
            else {
                returnArray.append(false)
            }
        }
        return returnArray
    }

    /// 3️⃣ Return an array of emoji strings (["✅", "⚠️", "🛑"]) that show
    /// feedback for each letter in the guess:
    /// - ✅ if the letter is correct and in the correct place
    /// - ⚠️ if the letter is in the word but wrong place
    /// - 🛑 if the letter is not in the word at all
    func generateFeedback(guess: [Character], answer: [Character]) -> [String] {
        var returnArray: [String] = []
        
        for (index, item) in guess.enumerated() {
            if item == answer[index] {
                returnArray.append("✅")
            }
            
            else if answer.contains(item) && item != answer[index] {
                returnArray.append("⚠️")
            }
            else {
                returnArray.append("🛑")
            }
        }
        return returnArray
    }

    /// 4️⃣ Convert an array of emoji strings into a single display string
    ///
    /// - Example:
    ///   - input: ["✅", "⚠️", "🛑"]
    ///   - return: "✅ ⚠️ 🛑"
    func arrayToDisplayString(_ arr: [String]) -> String {
        return  arr.joined(separator: "")
    }

    /// 5️⃣ Return true if ALL characters in the guess match the answer exactly
    /// (i.e., the player has guessed the full word)
    ///
    /// - Tip: Use exactMatches and check if all values are `true`
    func isWinningGuess(guess: [Character], answer: [Character]) -> Bool {
        if guess == answer {
            return true
        }
        else {
            return false
        }
    }
}

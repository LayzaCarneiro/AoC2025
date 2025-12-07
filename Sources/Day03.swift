//
//  Day03.swift
//  AdventOfCode
//
//  Created by Layza Maria Rodrigues Carneiro on 04/12/25.
//

import Algorithms

struct Day03: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: [String] {
    data.split(separator: "\n").map { String($0).trimmingCharacters(in: .whitespacesAndNewlines) }
  }

  // Replace this with your solution for the first part of the day's challenge.
  func part1() -> Any {
    var ans = 0
    
    for entity in entities {
      let chars = Array(entity)
      let j = Int(String(chars[0])) ?? 0
      let k = Int(String(chars[1])) ?? 0
      var arr = [j, k]
      
      for c in chars.suffix(entity.count - 2) {
        if let combo = Int("\(arr[0])\(arr[1])"), let v = Int(String(c))  {
          let combOne = Int("\(arr[0])\(v)") ?? 0
          let combTwo = Int("\(arr[1])\(v)") ?? 0
          
          if combOne >= combTwo && combOne >= combo {
            arr[1] = v
          } else if combTwo > combOne && combTwo > combo {
            arr[0] = arr[1]
            arr[1] = v
          }
        }
      }
      
      if let combo = Int("\(arr[0])\(arr[1])") { ans += combo }
    }
    
    return ans
  }

  // Replace this with your solution for the second part of the day's challenge.
//  func part2() -> Any {
//  }
}

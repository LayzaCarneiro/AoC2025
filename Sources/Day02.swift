//
//  Day02.swift
//  AdventOfCode
//
//  Created by Layza Maria Rodrigues Carneiro on 02/12/25.
//

import Algorithms

struct Day02: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: [String] {
    data.split(separator: ",").map { String($0).trimmingCharacters(in: .whitespacesAndNewlines) }
  }

  // Replace this with your solution for the first part of the day's challenge.
  func part1() -> Any {
    var ans = 0
    
    for entity in entities {
      let range = entity.split(separator: "-").map { String($0) }
      let first = Int(range[0]) ?? 0
      let last = Int(range[1]) ?? 0
      
      for id in first...last {
        let str = String(id)
        if str.count % 2 != 0 { continue }

        if str.prefix(str.count / 2) == str.suffix(str.count / 2) { ans += id }
      }
    }
    
    return ans
  }

  // Replace this with your solution for the second part of the day's challenge.
//  func part2() -> Any {
//  }
}

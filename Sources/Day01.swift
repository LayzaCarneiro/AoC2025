//
//  Day01.swift
//  AdventOfCode
//
//  Created by Layza Maria Rodrigues Carneiro on 02/12/25.
//

import Algorithms

struct Rotation {
  let dir: Character
  let num: Int
}

struct Day01: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // Splits input data into its component parts and convert from string.
  var entities: [Rotation] {
    data.split(separator: "\n").compactMap { line in
      guard let direction = line.first else { return nil }
      guard let number = Int(line.dropFirst()) else { return nil }
      return Rotation(dir: direction, num: number)
    }
  }

  // Replace this with your solution for the first part of the day's challenge.
  func part1() -> Any {
    var counter = 0
    var i = 50;

    for v in entities {
      if v.dir == "L" {
        i -= v.num + 100;

      } else {
        i += v.num;
      }
      
      i %= 100;
      if i == 0 { counter += 1 }
    }
    
    print(counter)
    return counter
  }

//  // Replace this with your solution for the second part of the day's challenge.
//  func part2() -> Any {
//    // Sum the maximum entries in each set of data
//    entities.map { $0.max() ?? 0 }.reduce(0, +)
//  }
}

//
//  Day03.swift
//  AdventOfCode
//
//  Created by Layza Maria Rodrigues Carneiro on 04/12/25.
//

import Testing

@testable import AdventOfCode

// Make a copy of this file for every day to ensure the provided smoke tests
// pass.
struct Day03Tests {
  // Smoke test data provided in the challenge question
  let testData = """
    987654321111111
    811111111111119
    234234234234278
    818181911112111
    """

  @Test func testPart1() async throws {
    let challenge = Day03(data: testData)
    #expect(String(describing: challenge.part1()) == "357")
  }

  @Test func testPart2() async throws {
    let challenge = Day00(data: testData)
    #expect(String(describing: challenge.part2()) == "4174379265")
  }
}



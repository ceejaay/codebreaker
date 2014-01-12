Feature: code-breaker starts game

  As a code-breaker
  I want to start a game
  So that I can break the code

  Scenario: start game
    Given I am not yet playing
    When I start a new game
    Then I should see "Welcome to Codebreaker!"
    And I should see "Enter guess:"

Feature: code-breaker submits guess
  The code-breaker sumbits a guess of four numbers. The game marks the guess
  with + and - signs.

  For each number in the guess that matches the number and positoin of a number
  in the secret code, the mark includes on + sign. For each number in the guess
  that matches the number but not the position of a number in the secret code,
  the madrk includeds one - sign

Feature: code-breaker submits guess
  As a code-breaker
  I want to submit a guess
  So that I can try to break the code
=begin
  Scenario: all exact matches
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"
  
  Scenario: 2 exact matches and 2 number matches
    Given the secret code is "1234"
    When I guess "1243"
    Then the mark should be "++--"

  Scenario: 1 exact match and 3 number matches
    Given the secret code is "1234"
    When I guess "1342"
    Then the mark should be "+---"

  Scenario: 4 number matches
    Given the secret code is "1234"
    When I guess "4321"
    Then the mark should be "----"
=end
  Scenario: all numbers correct
  |code|guess|mark|
  |1234|1234| ++++|
  |1234|1243|++--|
  |1234|1423|+---|
  |1234|4321|----|

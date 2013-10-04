Feature: Addition

  This is in order to sum two values into the calculator.

  Scenario Outline: Add two values
    Given I start the calculator
    And I enter <value_one> into the calculator
    And I enter <command_one> into the calculator
    And I enter <value_two> into the calculator

    Then the result should be <result>

    Examples:
      | value_one | command_one | value_two | result |
      | 5         | +           | 10        | 15     |
      | 6         | +           | 6         | 12     |

  Scenario Outline: Add three values
    Given I start the calculator
    And I enter <value_one> into the calculator
    And I enter <command_one> into the calculator
    And I enter <value_two> into the calculator
    And I enter <command_two> into the calculator
    And I enter <value_three> into the calculator

    Then the result should be <result>

    Examples:
      | value_one | command_one | value_two | command_two | value_three | result |
      | 5         | +           | 10        | +           | 10          | 25     |
      | 6         | +           | 6         | +           | 12          | 24     |

  Scenario Outline: Add two values, ask for result and continue adding values
    Given I start the calculator
    And I enter <value_one> into the calculator
    And I enter <command_one> into the calculator
    And I enter <value_two> into the calculator
    And I ask the result
    And I enter <command_two> into the calculator
    And I enter <value_three> into the calculator

    Then the result should be <result>

    Examples:
      | value_one | command_one | value_two | command_two | value_three | result     |
      | 5         | +           | 10        | *           | 4           | 60         |
      | 6         | *           | 6         | +           | 6           | 42         |

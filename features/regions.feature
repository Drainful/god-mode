Feature: Regions
  Background:
    Given I am in buffer "god-mode-test"
    And the buffer is empty
    And I insert "Here we go"
    And I bind "C-SPC" to "set-mark-command"
    And I have god-mode on
    And I go to beginning of buffer

  Scenario: mark is preserved (control)
    When I send the key sequence "SPC f"
    Then "H" is selected in the buffer

  Scenario: mark is preserved (meta)
    When I send the key sequence "SPC gf"
    Then "Here" is selected in the buffer

  Scenario: mark is preserved (control+meta)
    When I send the key sequence "SPC gfGf"
    Then "Here we" is selected in the buffer

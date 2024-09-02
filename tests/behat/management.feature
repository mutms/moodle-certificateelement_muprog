@tool @tool_certificate @certificateelement_programs @openlms @javascript
Feature: Being able to manage programs elements in a certificate template

  Background:
    Given the following certificate templates exist:
      | name | numberofpages |
      | Certificate 1 | 1 |
    And I log in as "admin"
    And I navigate to "Certificates > Manage certificate templates" in site administration
    And I follow "Certificate 1"
    And I change window size to "large"

  Scenario: Add and edit standard programs elements in a certificate template
    When I add the element "Program" to page "1" of the "Certificate 1" site certificate template
    And I should see "Add 'Program field' element" in the ".modal.show .modal-header" "css_element"
    And I set the following fields to these values:
      | Element name  | Nazev            |
      | Program field | Program name     |
    And I click on "Save" "button" in the ".modal.show .modal-footer" "css_element"
    Then I should see "Nazev" in the "[data-region='elementlist']" "css_element"
    When I click on "Edit 'Nazev'" "link" in the "[data-region='elementlist']" "css_element"
    And the following fields match these values:
      | Element name  | Nazev            |
      | Program field | Program name     |
    And I set the following fields to these values:
      | Element name  | ID programu      |
      | Program field | Program idnumber |
    And I click on "Save" "button" in the ".modal.show .modal-footer" "css_element"
    Then I should see "ID programu" in the "[data-region='elementlist']" "css_element"

    When I click on "Edit 'ID programu'" "link" in the "[data-region='elementlist']" "css_element"
    And the following fields match these values:
      | Element name  | ID programu      |
      | Program field | Program idnumber |
    And I click on "Cancel" "button" in the ".modal.show .modal-footer" "css_element"
    Then I should see "ID programu" in the "[data-region='elementlist']" "css_element"

    When I click on "Edit 'ID programu'" "link" in the "[data-region='elementlist']" "css_element"
    And I set the following fields to these values:
      | Element name  | Dokonceno               |
      | Program field | Program completion date |
      | Date format   | strftimedateshort       |
    And I click on "Save" "button" in the ".modal.show .modal-footer" "css_element"
    And I click on "Edit 'Dokonceno'" "link" in the "[data-region='elementlist']" "css_element"
    And the following fields match these values:
      | Element name  | Dokonceno               |
      | Program field | Program completion date |
      | Date format   | strftimedateshort       |
    And I set the following fields to these values:
      | Element name  | Udeleno                 |
      | Date format   | strftimedatetime        |
    And I click on "Save" "button" in the ".modal.show .modal-footer" "css_element"
    And I click on "Edit 'Udeleno'" "link" in the "[data-region='elementlist']" "css_element"
    Then the following fields match these values:
      | Element name  | Udeleno                 |
      | Program field | Program completion date |
      | Date format   | strftimedatetime        |
    And I click on "Cancel" "button" in the ".modal.show .modal-footer" "css_element"

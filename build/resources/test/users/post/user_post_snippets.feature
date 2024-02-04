@ignore
Feature: Reusable scenarios for post a user

  @Create
  Scenario: Post a user
    Given url "https://reqres.in/api/usrs"
    And request { "name": "Batman", "job": "Justice League Member"}
    When method post
    Then status 201
    And def contactId = $.id
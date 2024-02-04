Feature: Post user on reqres

  Background:
    * url "https://reqres.in"
    * path "/api/users/"
    # Estático
    # * def var = { "name": "Batman", "job": "Justice League Member"}
    # Dinámico
    * request { "name": "#(name)", "job": "#(job)" }
    #Las variable pueden ser creadas desde el background o desde el Scenario
    #* request { "name": "Batman", "job": "Justice League Member"}

  Scenario Outline: Post a user
    # Estático
    # * def var = { "name": "Batman", "job": "Justice League Member"}
    # Dinámico
    # Given request var
    When method post
    Then status 201

    Examples:
      | name         | job        |
      | Superman     | Kriptonian |
      | Wonder Woman | Amazona    |
      | Green Arrow  | Billonaire |
      | Flash        | Scientist  |

  Scenario: Post a user without job
    Given request { "name": "Batman", "job": "Justice League Member"}
    When method post
    Then status 201

  Scenario: Post a user with an invalid name
    Given request { "name": "@°!|=)(", "job": "Justice League Member"}
    When method post
    Then status 201
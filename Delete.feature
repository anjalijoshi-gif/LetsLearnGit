Feature: Delete Rating

  Scenario: user should remove rating from movie.
    Given A valid session ID required.
    Then user verify response
    And user verify status code
      | status_code | 13 |
    And user verify succesfull "200" message
      | status_message | The item/record was deleted successfully. |

  Scenario: user verify 400 status code.
    Given : A valid session ID required.
    Then user verify reponse
    And user verify status code
      | status_code | 401 |
    And user verify succesfull "401" message
      | status_message | Authentication failed: You do not have permissions to access the service. |

Feature: POST

  Scenario: User get proper message
    Given A valid session or guest session ID is required.
    Then user verify response
    And user verify response code "201"
      | status_code | 1 |
    And user get succuessfull message
      | status_message | Success. |

  Scenario: User get 401 message
    Given: A valid session or guest session ID is required.

    Then user verify response
    And user verify response code "401"
      | status_message | Invalid API key: You must be granted a valid key. |
      | success        | false                                             |
    And user verify status "7" code.
      | status_code | 7 |
    And user get succuessfull message
      | status_message | Success. |

  Scenario: User get 404 message
    Given: A valid session or guest session ID is required.

    Then User verify response
    And user get status message
      | status_message | The resource you requested could not be found. |
    And user get status code "404" page
      | status_code | 34 |

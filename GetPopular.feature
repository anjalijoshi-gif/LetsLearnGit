Feature: Get Popular

  Scenario: current popular movies on TMDB
    Given This list updates daily.
    Then user get "200" response from json
    And json response contain page data type of integer
      | page | 1 |
    And json response contians results data type of array
    And json response contain poster_path data type string or null
      | poster_path | /e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg |
    And json response contain adult data type boolean
      | adult | false |  |
    And json reponse contain overview data type string
      | overview | From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences. |
    And json reponse contain release_date string data type string
      | release_date | "2016-08-03" |
    And json reponse contain genre_ids data type array[integer]
      | genre_ids |
      |        14 |
      |        28 |
      |        80 |
    And json response contian id data type integer
      | id | "297761" |
    And json response contian original_title data type string
      | original_title | Jason Bourne |
    And json response contian original_language data type string
      | original_language | en |
    And json response contain  title data type string
      | title | Jason Bourne |
    And json response contain backdrop_path data type string or null
      | backdrop_path | /AoT2YrJUJlg5vKE3iMOLvHlTd3m.jpg" |
    And json response contain popularity data type number
      | popularity | "30.690177" |
    And json response contain vote_count data type integer
      | vote_count | "649" |
    And json response contain video data type boolean
      | video | false |
    And json response contain vote_average data type  number
      | vote_average | "5.25" |

  Scenario: user get "401" message.
    Given This list updates daily.
    Then user get status message
    And json reponse "401" message  .
      | status_message | Invalid API key: You must be granted a valid key |
      | success        | false                                            |
      | status_code    | "7"                                              |

  Scenario: user get "404" message.
    Given This list updates daily.
    Then user get status message
    And json reponse "404" message.
      | status_message | The resource you requested could not be found. |
      | status_code    |                                             34 |

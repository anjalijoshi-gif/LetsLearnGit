Feature: NowPlaying

  Scenario: Get a list of movies in theatres.
    Given That have a release type of 2 or 3 within the specified date range.
    Then user get "200" response from json
    And json response contain page data type of integer
      | page | 1 |
    And json response contain  results data type of array[object] {Movie List Result Object}
    And json response id data type of integer
      | id | 297761 |
    And json response contain poster_path data type string or null
      | poster_path | /e1mjopzAS2KNsvpbpahQ1a6SkSn.jpg" |
    And json response contain adult data type boolean
      | adult | false |
    And json response contain overview data type string
      | overview | From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences. |
    And json response contain release_date data type string
      | release_date | 2016-08-03 |
    And json response contain  genre_ids data type array[integer]
      | genre_ids |
      |        14 |
      |        28 |
      |        80 |
    And json response contain id data type integer
      | id | 297761 |
    And json response contain original_title data type string
      | original_title | Suicide Squad |
    And json response contain original_language data type string
      | original_language | en |
    And json response contain title data type string
      | title | Suicide Squad |
    And json response contain backdrop_path data type string or null
      | backdrop_path | /ndlQ2Cuc3cjTL7lTynw6I4boP4S.jpg |
    And json response contain popularity data type number
      | popularity | 48.261451 |
    And json response contain vote_count data type integer
      | vote_count | 1466 |
    And json response contain video data type boolean
      | video | false |
    And json response contain vote_average data type number
      | vote_average | 5.91 |
    And json response contain dates data type object
    And json response contain maximum data type string  format: date
      | maximum | 2016-09-01 |
    And json response contain minimum data type string format: date
      | minimum | 2016-07-21 |
    And json response contain total_pages data type integer
      | total_pages | 33 |
    And json response contain total_results data type integer
      | total_results | 649 |

  Scenario: user get "401" message.
    Given That have a release type of 2 or 3 within the specified date range.
    Then user get status message
    And json reponse "401" message  .
      | status_message | Invalid API key: You must be granted a valid key |
      | success        | false                                            |
      | status_code    | "7"                                              |

  Scenario: user get "404" message.
    Given That have a release type of 2 or 3 within the specified date range.
    Then user get status message
    And json reponse "404" message.
      | status_message | The resource you requested could not be found. |
      | status_code    |                                             34 |

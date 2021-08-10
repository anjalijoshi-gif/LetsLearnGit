Feature: Get latest movie

  Scenario: user get the most newly created movie
    Given This is a live response and will continuously change.
    Then Verify that status code should be "200".
    And json response contains "adult" of type boolean
    |adult| false|
    And json response backdrop_path of type string or null
    |backdrop_path| null|
    And json response belongs_to_collection of type of null
    |belongs_to_collection| null|
    And json response budget of type integer
    |budget| 0|
    And json response genres of type array[object]
    And json response id of type integer  
    |id| 99|
   
    And json response name of type string |
     |name|Documentary|
    And json response homepage of type string
    |homepage| ""|
    And json response id of type integer
    |id|413323|
    And json response imdb_id of type string
     |imdb_id| "tt5852644"|
    And json response original_language of type string
     |original_language|en|
    And json response original_title of type string
     |original_title|Deadpool: From Comics to Screen... to Screen|
    And json response overview of type string
    |overview|
    """  
    This documentary divided into five segments examines the source and its path to the movies, 
    backstory, special effects story/character areas, cast and performances. It includes notes from Reynolds, Liefeld, Miller, Wernick, Reese, 
    executive producers Aditya Sood and Stan Lee, co-creator/comics writer Fabian Nicieza, producer Simon Kinberg, comics writer Joe Kelly, 
    specialty costume designer Russell Shinkle, makeup designer Bill Corso, production designer Sean Haworth, director of photography Ken Seng, 
    executive producer/unit production manager John J. Kelly, previs supervisor Franck Balson, stunt coordinator Philip J. Silvera, visual effects 
    supervisors Pauline Duvall and Jonathan Rothbart, visual effects producer Annemarie Griggs, 2nd unit director/stunt coordinator Robert Alonzo,
    special effects coordinator Alex Burdett, utility stunts Regis Harrington, composer Tom Holkenberg, and actors Morena Baccarin, TJ Miller, 
    Brianna Hildebrand, Leslie Uggams, Ed Skrein, and Gina Carano.
    """
    
    And json response popularity of type integer
    |popularity|0|
     And json response poster_path of type string or null
     |poster_path|/chV0avy5ogIB2PMTInT4KpHDzwj.jpg|
    And json response production_companies of type array
     |production_companies|[]|
    And json response production_countries of type array[object]
    |production_countries|[]|
    And json response release_date of type string
     |release_date|2016-05-10|
    And json response revenue  of type integer
    |revenue|0|
    And json response runtime    of type integer
    |runtime|80|
    And json response spoken_languages    of type array[object]
     |spoken_languages| []|
    And json response status    of type string
     |status|Released|
    And json response tagline   of type string
     |tagline| ""|
    And json response title    of type string
    |title|Deadpool: From Comics to Screen... to Screen|
    And json response video   of type boolean
    |video| false|
    And json response vote_average   of type integer
     |vote_average| 0|
    And json response vote_count  of type integer
     |vote_count| 0|

  Scenario: user get "401" status code
    Given: Get the most newly created movie. This is a live response and will continuously change.

    Then user get response with Invalid API key
    And user get "401" status message and accept data type
    |status_message|Invalid API key: You must be granted a valid key.",
    |success| false|
    |status_code| 7|
    
  Scenario: user get "404" status code
    Given: Get the most newly created movie. This is a live response and will continuously change.

    Then user get response recourse not found
    And user get "404" status message and accept data type
     |status_message|The resource you requested could not be found.|
     |status_code| 34|

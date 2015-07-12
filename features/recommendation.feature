Feature: Recommendation Engine


  Scenario: Recommendation data is loaded from a json file
    Given a empty recomendation database
    When I loaded a file named "purchase_data_test.json"
    Then the exit status should be 0

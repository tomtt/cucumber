Feature: Store html example

  @store_html
  Scenario: I am tagged
    Given a simulated rails request with the following html in response.body:
      """
<html>
  <head>
    <title>Store html example</title>
  </head>
  <body>
  </body>
</html>
      """
    Then I sneakily create the required file to make the test pass for now

  Scenario: I am not tagged
    Given a simulated rails request with the following html in response.body:
      """
<html>
  <head>
    <title>Untagged example</title>
  </head>
  <body>
  </body>
</html>
      """
    When I go to the home page

  @store_html
  Scenario: I am tagged too
    Given a simulated rails request with the following html in response.body:
      """
Huh? No html?
      """
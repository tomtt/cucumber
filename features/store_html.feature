Feature: Custom Formatter

  Scenario: store html
    When I run cucumber --format Cucumber::Formatter::StoreHtml features/store_html_example.feature
    Then "examples/self_test/tmp/store_html_example__i_am_tagged.html" should contain
      """
<html>
  <head>
    <title>Store html example</title>
  </head>
  <body>
  </body>
</html>
      """

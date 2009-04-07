Feature: Custom Formatter

  Scenario: store html
    When I run cucumber --format Cucumber::Formatter::StoreHtml features/store_html_example.feature
    Then the file "examples/self_test/tmp/store_html_example__i_am_not_tagged.html" should not exist
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
    Then "examples/self_test/tmp/store_html_example__i_am_tagged_too.html" should contain
      """
Huh? No html?
      """

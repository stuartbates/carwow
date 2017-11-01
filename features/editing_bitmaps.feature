Feature: Editing Bitmaps

  Scenario: Created and editing a Bitmap from and command file
    Given a mocked home directory
    When I run `./bin/bitmap_editor examples/show.txt`
    Then the stdout should match the template at: "spec/fixtures/golden_master.txt"

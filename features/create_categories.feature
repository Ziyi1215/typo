Feature: Create category
    As a blog administrator
    In order to share my thoughts with the world
    I want to be able to add categories to my blog

    Background:
        Given the blog is set up
        And I am logged into the admin panel

    Scenario: Successfully write articles
        Given I am on the new category page
        When I fill in "category_name" with "Cat"
        And I fill in "category_keywords" with "Tom"
        And I fill in "category_permalink" with "WWW"
        And I fill in "category_description" with "Hello"
        And I press "Save"
        Then I should see "Cat"
        Then I should see "Tom"
        Then I should see "WWW"
        Then I should see "Hello"

        Then I follow "Cat"

        When I fill in "category_name" with "Cat1"
        And I fill in "category_keywords" with "Tom1"
        And I fill in "category_permalink" with "WWW1"
        And I fill in "category_description" with "Hello1"
        And I press "Save"
        Then I should see "Cat1"
        Then I should see "Tom1"
        Then I should see "WWW1"
        Then I should see "Hello1"
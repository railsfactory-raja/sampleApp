Feature: Manage Articles

		In order to make a blog
		As an author
		I want to create and mange articles


Scenario: Articles List

		Given I have articles titled dhoni, sachin

		When I go to list of articles

		Then I should see "dhoni"
		
		And I should see "sachin"
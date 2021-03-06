Feature: Bible book resource

	Scenario: Default content type for book collection
		When I visit "/api/v1/bible/books"
		Then the http response status code should be 200
		And the content_type should be json

	Scenario: Lookup the collection of books
		When I visit "/api/v1/bible/books"
		Then the JSON should have "books"
		And the JSON at "books" should be an array
		And the JSON at "total_count" should be 66

	Scenario: Default content type for book
		When I visit "/api/v1/bible/books/Genesis"
		Then the http response status code should be 200
		And the content_type should be json

	Scenario: Lookup a book
		When I visit "/api/v1/bible/books/Genesis"
		Then the JSON at "book" should be "Genesis"
		And the JSON at "chapters" should be an array
		And the JSON at "total_count" should be 50

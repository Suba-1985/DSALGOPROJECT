@TreeTest
Feature: Test Tree Page
 
   Scenario Outline: The user is able to navigate to all options in tree page
    Given The user is on the "Tree" tree page after logged in
    When The user clicks "<options>" button in tree page
    Then The user in  "<options>" page 
  Examples:
  		|	options	|
			|	Overview of Trees	|  
 			|	Terminologies |
 			|Types of Trees|
 			|	Tree Traversals |
 			|	Traversals-Illustration	|  
 	
 		 		
 	 Scenario Outline: The user is able to navigate to all options in tree page
    Given The user is on the "Tree" tree page after logged in
    When The user clicks "<options>" button in tree page
    And The user clicks tryEditor with a Run button to test on tree page
    Then The user in "tryEditor" page
  Examples:
  		|	options	|
			|	Overview of Trees	|  
 			|	Terminologies |
 			|Types of Trees|
 			|	Tree Traversals |
 			|	Traversals-Illustration	|  
 	
 			 
 	Scenario Outline: The user is able tree run code in tryEditor 
    Given The user is in a "<options>" tree page having an tryEditor with a Run button to test
    When The user enter valid python code in tree tryEditor from sheet "<Sheetname>" and <RowNumber>
		And The user clicks on tree run button
		Then The user should be presented with Run result of tree
		 Examples: 
   		|	options	| Sheetname  | RowNumber |
			|	Overview of Trees	| array|  0 | 
 			|	Terminologies |	array|  0 |
 			|Types of Trees|	array|  0 |
 			|	Tree Traversals | array|  0 |
 			|	Traversals-Illustration	| array|  0 |  
 
	
 	Scenario Outline: The user is able run code in tryEditor 
    Given The user is in a "<options>" tree page having an tryEditor with a Run button to test
    When The user enter python code with invalid syntax in tree tryEditor from sheet "<Sheetname>" and <RowNumber>
		And  The user clicks on tree run button
		Then The user should be presented with error message in tree page
		 Examples: 
   		|	options	| Sheetname  | RowNumber |
			|	Overview of Trees	| array|  1 | 
 			|	Terminologies |	array|  1 |
 			|Types of Trees|	array|  1 |
 			|	Tree Traversals | array|  1 |
 			|	Traversals-Illustration	| array|  1 |  
 		
 	
 	 Scenario: The user is able to navigate to Practice page
  	Given The user is on the type of tree after logged in
 		When The user clicks tree Practice Questions link
 		Then The user should be redirected to "practice" page in tree
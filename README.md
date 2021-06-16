# datshoppinglist 
 
 TestSuite developed with Python/Robot Framework. 
 Test cases cover the following
   - Create shopping list
   - Add items to the list
   - Delete items from the list

 Pre-requisite 
 
 - Python - 3.7.7
 
 - Robot framework - 3.2.1 
 
 - Deploy the datshoppinglist (https://github.com/jimpick/dat-shopping-list)

-   start the server using docker
 
  
Clone the Test suite from github

```sh  
  		git clone https://github.com/parikho/datshoppinglist
```

Navigate to workflows directory
  
```sh
		 	cd datshoppinglist/workflows
 ```

Execute the tests

```sh
  
				robot  test_datshoppingtc1.robot
```
   
 
 
Report generated in workflows directory - report.html
![alt text](https://github.com/parikho/datshoppinglist/blob/main/Report.png)

Log generated in workflows directory - log.html
![alt text](https://github.com/parikho/datshoppinglist/blob/main/Log.png)

 





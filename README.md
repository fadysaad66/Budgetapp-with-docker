# Budgetapp-with-docker
The Porpose of this Project is to run the ruby project and the database each on separate container

------------------------------------------------------------------
Using Ubuntu as OS
The project depends on ----> Using project from this repo: https://github.com/evans22j/Budget-App

Prerequisites
 Install Ruby from here: https://gorails.com/setup/ubuntu.
 
 Install PostgreSQL from here: https://www.postgresql.org/download/linux/ubuntu/ 
 
 Install Git from here: https://git-scm.com/downloads/linux
 
 Install Docker from here: https://docs.docker.com/engine/install/ubuntu/
 
 Also you will need latest version of python to avoid error with database.

---------------------------------------------------
Work

Step 1

 Get the project by:
 
     git clone https://github.com/evans22j/Budget-App.git
   
 Then go to file path:
 
  cd Budget-App
   
Step 2

 On  file path ---> (~/Rails-capstone-Budgy-Budget/Budget-App) you have to add 
 2 files 
 
      docker-compose.yml
   
      Dockerfile 
   
 On file path ---> (~/Rails-capstone-Budgy-Budget/Budget-App/config) you need to change 
 file contants with new data
 
     database.yml
   
Step 3

 Run These commands 

	 docker compose build

 Then 

	 docker compose up -d

 Then This 

	docker compose exec web rails db:migrate 

 You can run this command to check you already have two separate containers 

	docker ps

---------------------------------------------------------------------

Test you work by browsing 
   
	http://localhost:3000

You should get a screen like this 

![Screenshot 2025-05-30 203543](https://github.com/user-attachments/assets/e74cfd06-e4df-41bc-96a6-3e6d4dbeee3d)




 
	  
	    
 

 




 
 


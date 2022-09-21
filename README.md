# CabinetVision Automations and Utilities


1.Automate the header section with the specs of each job.
  Created some parameters at the Job Class then passing those into database and later on on the reports design schema.
The repository will also include a bunch of UCS's that aren't related with the automation of the reports.

1. Adding the parameters


From the Utilities tab go to the Parameters
Add the desired parameters
Make the promts as an unique name, also input the parameters name
Type should be text, on the values set the defaults
The Class have to be Job and the style as Note

![parameters](https://user-images.githubusercontent.com/51535734/191551595-e4b07416-ebc5-4dfe-b84c-a954e898cf42.png)


Create a new job or fill in the existing one

Input the job details as job no, description, Address, Contact and Phone
Then go to the Notes Tab where yo will find all the created parameters

![fill1](https://user-images.githubusercontent.com/51535734/191551670-c7ec7604-e673-427a-9761-8bee33562469.png)


Go to the Notes tab and fill in all the specs

![fill2](https://user-images.githubusercontent.com/51535734/191551443-7365bf28-0f63-437e-8735-c7a05050c203.png)

Go to the Reports and select the ones you've configured and want to use
All the header info was filled in based on those parameters we've set up
![report1](https://user-images.githubusercontent.com/51535734/191553893-b1e71c23-401b-4b8b-a83c-c3370c97a80b.png)

See also the shipping info

![report2](https://user-images.githubusercontent.com/51535734/191554277-f13abb53-8c20-460b-b9d0-aec340170a30.png)

How to pick up the parameters in the database:

From the Setup Reports chose the Report Properties

Create a table for each parameter; see in my example the "BoxSpecies" table
Have the sql query to reference to the created parameters:

SELECT *
FROM [Notes]  Where Prompt="2. Cab_Box_Species"

![prop1](https://user-images.githubusercontent.com/51535734/191555376-c3a3466d-7e98-4b76-bf52-d0c1ef7ab97d.png)

In order to display that info go to the design of that report
In your container choose where you want to display that info and access it on the tables name: "BoxSpecies.Note" - 

![des1](https://user-images.githubusercontent.com/51535734/191557180-7b053a88-18f9-40f2-9983-e41592989c97.png)

Use the User Variables to style your report container.
Set the default on export from the Project/Layout Regions /Export Media

![des2](https://user-images.githubusercontent.com/51535734/191558400-3be83a6d-5186-4127-b78c-000f7635f8b6.png)






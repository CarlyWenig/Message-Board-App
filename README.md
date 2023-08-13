# Message-Board

Description: 

A messaging board that allows users to post messages to a message board. The messages are displayed on the message board from most recent to less recent. 

Overview: 

The application is written in swift and uses XCode and SwiftUI. The application utilizes JSON encoder/decoder, Core Data, and the UserDefaults to store the messages even after the application has closed essentially saving the data. This application consists of five files. Message_Board which is the main method where it starts the application. Message which defines what a message is. Messages where it creates a list of the messages and stores them. messageView which is constructs how the messages look on screen. AddMessages which is the page where the user can add messages to the board. 


To Start Application: 

Application used: Xcode, Swift UI 

1. Open up Xcode 
2. Choose screen of choosing to display the application 
3. Press play 


Application Explained: 

In the homescreen, the message board starts off as a blank board. 

<img width="364" alt="Screenshot 2023-01-14 at 00 57 16" src="https://user-images.githubusercontent.com/69254490/212458671-421981f2-4f5d-4db8-bc2a-c9453ceb41d0.png">


To add a new message, click on the plus icon on the top right corner. 
After the plus icon is pressed, a new page will pop up where you can enter the message as well as your username handle(optional) 

<img width="428" alt="Screenshot 2023-08-13 at 17 03 53" src="https://github.com/CarlyWenig/Message-Board-App/assets/69254490/98d0797a-a505-46d1-9203-69ae75e397f9">

If you wanted to change the background color of the app to pink, press the change background color : 

<img width="437" alt="Screenshot 2023-08-13 at 17 03 58" src="https://github.com/CarlyWenig/Message-Board-App/assets/69254490/df3e54a7-89bc-4649-b950-f11a2e54e411">

Once you fill out all the fields, the message will appear on the message board 

<img width="379" alt="Screenshot 2023-01-14 at 00 57 38" src="https://user-images.githubusercontent.com/69254490/212458697-5abf089d-942f-4ebd-8bad-f78747f76baf.png">


<img width="357" alt="Screenshot 2023-01-14 at 00 57 44" src="https://user-images.githubusercontent.com/69254490/212458700-c0a9e7e4-3111-4828-97ae-29b0f58e15e7.png">

If you don't fill out any of the fields, it will not submit and no message will be added as the button will not be clickable unless the fields are filled in 

The word count is also considered as it will prevent you from typing any more characters past 128 

<img width="365" alt="Screenshot 2023-01-14 at 01 01 02" src="https://user-images.githubusercontent.com/69254490/212458748-6ac9560a-2ad1-4a63-a1c9-25a65338c408.png">

If you add another message, it will go first on the board since it is the most recent and this is done by comparing the timestamps 

<img width="369" alt="Screenshot 2023-01-14 at 01 00 43" src="https://user-images.githubusercontent.com/69254490/212458758-e1e7d687-778c-4fd5-b193-564a72eea8fb.png">

An extra feature is that it will censor out bad words, for this application, a small list of bad words are provided. If you type in a bad word, an alert will show up and will not post the message 

<img width="368" alt="Screenshot 2023-01-14 at 00 59 35" src="https://user-images.githubusercontent.com/69254490/212458817-e8630b6c-2635-4cb1-b46b-1296b09f43da.png">

Once you've posted all the messages, you can exit out of the application and re-enter and the data will still be stored for you to see 


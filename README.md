# Spiral Api


This project is for showing the characters and creatures from the witcher game
This project is based on a catalogue of dog clothes

## About

In this application, I have an appointment app for a Spiral's office. The user can choose from a list of houses and choose an appointment with the agent who is selling that house. The user logs in and signs up to the application using Json Web Token.

To build this application we used:

 - Ruby on Rails;
 - Active Storage;
 - Postgresql database;
 - Json Web Token (jwt);
 - (bcrypt) to crypt password;
 - Rspec to test the project;
 - Linters ( Rubocop )

## Features

 - Log in, log out and sign up
 - Show the list of all houses;
 - Show the list of all agents;
 - Show the list of houses for every agents;
 - Show the list of the appointments of the user;
 - Create a new appointment;

## How to use the application

Application has secure login and signup. A user must provide e-mail and password while logging in. On Sign Up User must provide a username, e-mail and password.

In this Application, on the houses page, the user can see all the houses. When the User creates a new account or sign in with their account they can choose any agent to make appointment with him.

User can click any of the listed houses to get a detailed information about avery house. User can make an appointment from both agents listing page and houses listing page. User also has access to USER PAGE where they can see their appointments.

## Getting started

To get a local copy of the repository please run the following commands on your terminal:

  - ```git clone git@github.com:MkrtichSargsyan/spiral-backend.git```
  - ```cd spiral-backend```
  - ```rails db:create```
  - ```rails db:migrate```
  - ```rails db:seed```

## Launch the application

After making the local copy of the repository:

 - get inside the repository folder;
 - setup the gems of the project: in the terminal run: ```bundle install```
 - enter the command: ```rails s```  to start the server in localhost.
 - then you get the application in the localhost in your web browser.

## Test the application

After making the local copy of the repository:

 - get inside the repository folder;
 - setup the dependencies of the project: in the terminal run: bundle install
 - enter the command: ```bundle exec rspec``` to test the application.
 - then you get the application tested.


Feel free to reach out. I'm always happy to connect :slightly_smiling_face:

👤 **Mkrtich Sargsyan**

[<code><img height="26" src="https://cdn.iconscout.com/icon/free/png-256/github-153-675523.png"></code>](https://github.com/MkrtichSargsyan)
[<code><img height="26" src="https://upload.wikimedia.org/wikipedia/sco/thumb/9/9f/Twitter_bird_logo_2012.svg/1200px-Twitter_bird_logo_2012.svg.png"></code>](https://twitter.com/MkrtichSargsyan)
[<code><img height="26" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Linkedin.svg/1200px-Linkedin.svg.png"></code>](https://www.linkedin.com/in/mkrtich-sargsyan/)
[<code><img height="26" src="https://cdn4.iconfinder.com/data/icons/free-colorful-icons/360/gmail.png"></code>](mailto:mkrtichsargsyan24@gmail.com)

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- <a href="https://www.theodinproject.com/" target="_blank">The Odin Project</a>
- <a href="https://www.stackoverflow.com/" target="_blank">Stackoverflow</a>
- <a href="https://youtube.com/" target="_blank">YouTube player page</a>

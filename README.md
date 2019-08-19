# Code Challenge: Lytt Chat-bot

Lytt, the first digital assistant that makes it easy for employees to communicate sensitive topics at work and is currently working in a new assistant functionality:

Recognise the language of ther users message and reply accordingly with the correct Bot message. ``Lytt asked me to develop this new REST API!``

Guidelines
Detect German, English and Spanish language only
Receive a text message from a reporting person (user) in any language
Reply with the correct Salutation on every user input, in the correct user session.

I was asked to make something like this:

<img src="https://camo.githubusercontent.com/95baf7619294bc868de2bf31883be2704b32e115/68747470733a2f2f692e696d6775722e636f6d2f753538537434582e706e67" alt="Chatbot example">

* Ruby version 2.5.3

* Rails version 5.2.3

* System dependencies (run Gem and Yarn install in terminal)

# Deployment instructions:

Clone the repo:

``git clone https://github.com/PeterGillis/lytt-chatbot.git``

change directory to the project:

``cd lytt-chatbot``

Ensure you have the corect gems and yarn packages:

``bundle install, yarn install``

start your server with your terminal:

``yarn start / rails s``

# Important Requirements:

1. the chat must:
Receive a user message
A user will join a Chat Session and can send any message into that session. User messages will always go through this process and messages should have an unique, randomly generated ID.

 Note: The session is used to keep track of how many messages were sent between a user and the bot and if a refresh occurs, still display past messages from that session.

2. The chat must:
Reply with Bot Message
The first message sent into the session defines the language that is going to be used in the entirety of the conversation between the user and the bot.

Contact: ``peterg.developer@gmail.com``

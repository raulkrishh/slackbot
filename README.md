# slackbot
A way to get a slack notification via terminal for long running process

You do need to 
 -  create a slack bot
 -  get the webhook url from the slack bot
 -  add the bot to a slack channel you want.

You can copy the bash function to a terminal and add the ruby files accordingly

Example of workflow:
 Let you have a function called begin_sleep() in ruby ---> which takes 10 mins to complete
 You can call the following function in your terminal and it will send a notificationt to your slack channel when it runs.
 It will also attach the ouput and screenshot (this is tricky it takes screeshot of your main screen if you have multiple monitors) of the run in slack   channel
 
 notify_slack_newest ruby begin_sleep() 

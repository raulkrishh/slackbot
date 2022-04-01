notify_slack_newest(){
    input="$$ $1 $2 $3 $4"
    curl -X POST -H 'Content-type: application/json' --data  '{"text": "'"${input}"' :::Starting the command:::"}' https://hooks.slack.com/services/*
    unbuffer $@ | tee /Users/"Username"/Desktop/Screenshot/output$$.txt
    screencapture ~/Desktop/Screenshot/$$.png
    ruby /Users/"Username/Screenshot_code/slack.rb $$
   
    curl -X POST -H 'Content-type: application/json' --data  '{"text": "Command Ended '"${input}"'"}' https://hooks.slack.com/services/*
}

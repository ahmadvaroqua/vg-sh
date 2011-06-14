#-----------------------------------------------
# TimeStream
# Add these functions to your bash alias script or source it in your .bashrc or .profile file

# Add new task
tsn ()
{
  # Show response inline
  # curl -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt

  # Show response on a new line
  # paste -d " " <(curl -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt)
  # Use colorized output
  color=$(tput setaf 6)
  reset=$(tput op)
  response=$(paste -d " " <(curl -s -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt))
  echo "${color}${response}${reset}"
}

# Get current task
# Sample response: This is my awesome task
tsc ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current.txt))
  echo "${color}${response}${reset}"
}

# Get current time + task
# Sample response: [00:02:31] This is my awesome task
tsc1 ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current/time-task.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/time-task.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/time-task.txt))
  echo "${color}${response}${reset}"
}

# Get current task + time
# Sample response: This is my awesome task [00:02:31]
tsc2 ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current/task-time.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/task-time.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/task-time.txt))
  echo "${color}${response}${reset}"
}

# Get current time
# Sample response: 00:02:31
tst ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo/current/time.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/time.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo/current/time.txt))
  echo "${color}${response}${reset}"
}

# Get today's tasks
# Sample response:
# 00:02:31 This is my awesome task
# 00:04:07 This is my other awesome task
tstoday ()
{
  # Show response inline
  # curl -G -d "password=demo" https://timestreamapp.com/demo.txt

  # Show response on a new line
  # paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d" " <(curl -s -G -d "password=demo" https://timestreamapp.com/demo.txt))
  echo "${color}${response}${reset}"
}

tssearch ()
{
  # Show response inline
  # curl -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt

  # Show response on a new line
  # paste -d " " <(curl -F "password=demo" -F "task=$*" -F "source=bash" https://timestreamapp.com/demo.txt)
  # Use colorized output
  color=$(tput setaf 2)
  reset=$(tput op)
  response=$(paste -d " " <(curl -s -G -d "password=demo"  https://timestreamapp.com/demo/search/$*.txt))
  echo "${color}${response}${reset}"
}

get_current_task ()
{
  # Show response inline
  curl -G -d "password=demo" https://timestreamapp.com/demo/current.txt
}

# Adds and commits code but does not push up
gc ()
{
  git add .
  git commit -m "$(get_current_task)"
}

# Adds, commits and pushes up code
gcp ()
{
  git add .
  git commit -m "$(get_current_task)"
  git push origin master
}

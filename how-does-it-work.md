HowItWorks
---------------

Checks for a .todo file in $HOME
if not present create it

* list (todo) tasks (jf)
  get the contents of the file by line and push to an array
  and print each todo task in the format: <key> | <status> | <task>
  Option -a to list all tasks
  Option -d to list done tasks only

* create task (jf <string>)
  just append the new task to the file in this format
  <key> | <status> | <task>

* Mark as done (jf -m <key>)
  find dump tasks to array, delete that particular task and write back
  show message. Else show error

* clear list (jf -c)
  delete the .t.list file

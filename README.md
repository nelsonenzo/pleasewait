## Please Wait
A tiny application for making you wait.

#### Why would I use this stupid thing?
As a sys admin, sometimes you want to simulate how a system works (such as a kubernetes cluster) when under duress, 
but you do not want to launch an actual application with all it's dependancies, specific routes, and required parameters.


If you know the average time your real application typically takes to respond to a request, you can launch this little app that has no dependencies and load test against its' 1 route, /wait/:milliseconds.


Naturally, this is not useful for testing if you have concerns around your database, memory, or cpu. In that way, this is not the same as load testing an actual application. If you would like to add routes which simulate those conditions, pull requests are welcome.

This app tries to be as lazy as possible.

#### How do I run this thing?
Use your favorite thing for running docker containers.
Localy from a terminal, Kubernetes, Fleet, Unit Files. No one really cares.
Just remember, sinatra runs on port 4567 by default, and i was definitely too lazy to change that.

```sh
docker run -it -p 80:4567 nelsonenzo/pleasewait

## Testing - each curl will return in X number of milliseconds, and return a string with seconds waited.
curl localhost/wait/500
> 0.5 seconds

curl localhost/wait/5000
> 5.0 seconds

curl localhost/wait/1500
> 1.5 seconds

```
#### Are there tests?
The only government witness I like to be is a hostile witness, so I will answer every question with a question.
Did you write tests for this thing?  No?  Than you wouldn't say there are tests written for it, wouldy you?





## Please Wait
An app for simulating application load.

## Description
As a sys admin, sometimes you want to simulate how a system works (such as a kubernetes cluster) when under durress, 
but you do not want to launch an actual application with all it's dependancies, specific routes, and required parameters.


If you know the average time your real application typically takes to respond to a request, you can launch this little app that has no dependencies and load test against its' 1 route, /wait/:milliseconds.


Naturally, this is not useful for testing if you have concerns around your database, memory, or cpu. In that way, this is not the same as load testing an actual application. If you would like to add routes which simulate those conditions, pull requests are welcome :)

## Usage
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

# Timer Apex Class

Timer class calculates elapsed time

## How to use Timer class?
```
Timer.start('my timer id');
...
System.debug(Timer.getPrintableResult('my timer id'));
```

## Available methods
```
static void start(String timerId) // creates new timer with name "timerId"
static Long finish(String timerId) // returns elapsed time in miliseconds for a specific timer
static String getPrintableResult(String timerId) // returns elapsed time in printable string 
static String getPrintableResults() // returns elapsed time in printable string for all timers
```

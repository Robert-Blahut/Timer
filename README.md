# Timer Apex Class

Timer class calculates elapsed time

## How to use Timer class?
```
Timer.start('my timer id');
...
System.debug(Timer.getPrintableResult('my timer id'));
```

## Available methods

Creates new timer with name "timerId"
```
static void start(String timerId)
```

Returns elapsed time in miliseconds for a specific timer
```
static Long finish(String timerId)
```

Returns elapsed time in printable string 
```
static String getPrintableResult(String timerId)
```

Returns elapsed time in printable string for all timers
```
static String getPrintableResults()
```

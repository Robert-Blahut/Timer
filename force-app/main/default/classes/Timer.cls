public with sharing class Timer {

    private static Map<String, Long> timers;

    public static void start(String timerId) {
        if (timers == null) {
            timers = new Map<String, Long> {
                timerId => System.currentTimeMillis()
            };
        } else {
            if (!timers.containsKey(timerId)) {
                timers.put(timerId, System.currentTimeMillis());
            } else {
                throw new InvalidTimerIdException(
                    String.format(
                        'Such timer identificator is already in use: {0}',                                             
                        new List<String> {timerId}
                    )
                );
            }
        }
    }

    public static Long finish(String timerId) {
        if (timers.containsKey(timerId)) {
            return System.currentTimeMillis() - timers.get(timerId);
        } else {
            throw new InvalidTimerIdException(
                String.format(
                    'There is no such timer identificator: {0}', 
                    new List<String> {timerId}
                )
            );
        }
    }

    public static String getPrintableResult(String timerId) {
        if (timers.containsKey(timerId)) {
            return String.format(
                'Timer "{0}": {1} milliseconds\n', 
                new List<Object> {
                    timerId,
                    finish(timerId)
                }
            );
        } else {
            throw new InvalidTimerIdException(
                String.format(
                    'There is no such timer identificator: {0}', 
                    new List<String> {timerId}
                )
            );
        }
    }

    public static String getPrintableResults() {
        String printableResult = '';
        for (String timerId : timers.keySet()) {
            printableResult += String.format(
                'Timer "{0}": {1} milliseconds\n', 
                new List<Object> {
                    timerId,
                    finish(timerId)
                }
            );
        }
        return printableResult;
    }

    public class InvalidTimerIdException extends Exception {}
}

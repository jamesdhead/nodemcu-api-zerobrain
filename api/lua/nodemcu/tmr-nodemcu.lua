-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  tmr = {
    type = "lib",
    childs = {

      alarm = {
        type = "function",
        description = "This is a convenience function combining [tmr.register()](#tmrregister) and [tmr.start()](#tmrstart) into a single call. , To free up the resources with this timer when done using it, call [tmr.unregister()](#tmrunregister) on it. For one-shot timers this is not necessary, unless they were stopped before they expired.",
        returns = "true if the timer was started, false on error",
      },

      delay = {
        type = "function",
        description = "Busyloops the processor for a specified number of microseconds. , This is in general a **bad** idea, because nothing else gets to run, and the networking stack (and other things) can fall over as a result. The only time tmr.delay() may be appropriate to use is if dealing with a peripheral device which needs a (very) brief delay between commands, or similar. *Use with caution!* , Also note that the actual amount of time delayed for may be noticeably greater, both as a result of timing inaccuracies as well as interrupts which may run during this time.",
        returns = "nil",
      },

      interval = {
        type = "function",
        description = "Changes a registered timer's expiry interval.",
        returns = "nil",
      },

      now = {
        type = "function",
        description = "Returns the system counter, which counts in microseconds. Limited to 31 bits, after that it wraps around back to zero. That is essential if you use this function to [debounce or throttle GPIO input](https://github.com/hackhitchin/esp8266-co-uk/issues/2).",
        returns = "the current value of the system counter",
      },

      register = {
        type = "function",
        description = "Configures a timer and registers the callback function to call on expiry. , To free up the resources with this timer when done using it, call [tmr.unregister()](#tmrunregister) on it. For one-shot timers this is not necessary, unless they were stopped before they expired.",
        returns = "nil",
      },

      softwd = {
        type = "function",
        description = "Provides a simple software watchdog, which needs to be re-armed or disabled before it expires, or the system will be restarted.",
        returns = "nil",
      },

      start = {
        type = "function",
        description = "Starts or restarts a previously configured timer.",
        returns = "true if the timer was started, false on error",
      },

      state = {
        type = "function",
        description = "Checks the state of a timer.",
        returns = "(bool, int) or nil , If the specified timer is registered, returns whether it is currently started and its mode. If the timer is not registered, nil is returned.",
      },

      stop = {
        type = "function",
        description = "Stops a running timer, but does *not* unregister it. A stopped timer can be restarted with [tmr.start()](#tmrstart).",
        returns = "true if the timer was stopped, false on error",
      },

      time = {
        type = "function",
        description = "Returns the system uptime, in seconds. Limited to 31 bits, after that it wraps around back to zero.",
        returns = "the system uptime, in seconds, possibly wrapped around",
      },

      unregister = {
        type = "function",
        description = "Stops the timer (if running) and unregisters the associated callback. , This isn't necessary for one-shot timers (tmr.ALARM_SINGLE), as those automatically unregister themselves when fired.",
        returns = "nil",
      },

      wdclr = {
        type = "function",
        description = "Feed the system watchdog. , *In general, if you ever need to use this function, you are doing it wrong.* , The event-driven model of NodeMCU means that there is no need to be sitting in hard loops waiting for things to occur. Rather, simply use the callbacks to get notified when somethings happens. With this approach, there should never be a need to manually feed the system watchdog.",
        returns = "nil",
      },

    },

  },
}

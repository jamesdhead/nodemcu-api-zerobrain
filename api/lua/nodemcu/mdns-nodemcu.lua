return {
  mdns = {
    type = "lib",
    childs = {

      register = {
        type = "function",
        returns = "nil , #####Errors , Various errors can be generated during argument validation. The NodeMCU must have an IP address at the time of the call, otherwise an error is thrown.",
      },

      close = {
        type = "function",
        description = "Shut down the mDNS service. This is not normally needed.",
        returns = "nil",
      },

    },

  },
}

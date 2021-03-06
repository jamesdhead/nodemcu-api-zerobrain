-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  i2c = {
    type = "lib",
    childs = {

      address = {
        type = "function",
        description = "Setup I²C address and read/write mode for the next transfer.",
        returns = "true if ack received, false if no ack received.",
      },

      read = {
        type = "function",
        description = "Read data for variable number of bytes.",
        returns = "string of received data",
      },

      setup = {
        type = "function",
        description = "Initialize the I²C module.",
        returns = "speed the selected speed",
      },

      start = {
        type = "function",
        description = "Send an I²C start condition.",
        returns = "nil",
      },

      stop = {
        type = "function",
        description = "Send an I²C stop condition.",
        returns = "nil",
      },

      write = {
        type = "function",
        description = "Write data to I²C bus. Data items can be multiple numbers, strings or lua tables.",
        returns = "number number of bytes written",
      },

    },

  },
}

-- Author: Emiliano Gonzalez [ egonzalez@hiperion.com.ar ]
-- Licence: MIT [ https://opensource.org/licenses/MIT ]
-- Date: 13 Dic 2016
-- Version: 0.1

return {
  ow = {
    type = "lib",
    childs = {

      check_crc16 = {
        type = "function",
        description = "Computes the 1-Wire CRC16 and compare it against the received CRC.",
        returns = "true if the CRC matches, false otherwise",
      },

      crc16 = {
        type = "function",
        description = "Computes a Dallas Semiconductor 16 bit CRC.  This is required to check the integrity of data received from many 1-Wire devices.  Note that the CRC computed here is **not** what you'll get from the 1-Wire network, for two reasons: , 1. The CRC is transmitted bitwise inverted. , 2. Depending on the endian-ness of your processor, the binary representation of the two-byte return value may have a different byte order than the two bytes you get from 1-Wire.",
        returns = "the CRC16 as defined by Dallas Semiconductor",
      },

      crc8 = {
        type = "function",
        description = "Computes a Dallas Semiconductor 8 bit CRC, these are used in the ROM and scratchpad registers.",
        returns = "CRC result as byte",
      },

      depower = {
        type = "function",
        description = "Stops forcing power onto the bus. You only need to do this if you used the 'power' flag to ow.write() or used a ow.write_bytes() and aren't about to do another read or write.",
        returns = "nil",
      },

      read = {
        type = "function",
        description = "Reads a byte.",
        returns = "byte read from slave device",
      },

      read_bytes = {
        type = "function",
        description = "Reads multi bytes.",
        returns = "string bytes read from slave device",
      },

      reset = {
        type = "function",
        description = "Performs a 1-Wire reset cycle.",
        returns = "- 1 if a device responds with a presence pulse , - 0 if there is no device or the bus is shorted or otherwise held low for more than 250 µS",
      },

      reset_search = {
        type = "function",
        description = "Clears the search state so that it will start from the beginning again.",
        returns = "nil",
      },

      search = {
        type = "function",
        description = "Looks for the next device.",
        returns = "rom_code string with length of 8 upon success. It contains the rom code of slave device. Returns nil if search was unsuccessful.",
      },

      select = {
        type = "function",
        description = "Issues a 1-Wire rom select command. Make sure you do the ow.reset(pin) first.",
        returns = "nil",
      },

      setup = {
        type = "function",
        description = "Sets a pin in onewire mode.",
        returns = "nil",
      },

      skip = {
        type = "function",
        description = "Issues a 1-Wire rom skip command, to address all on bus.",
        returns = "nil",
      },

      target_search = {
        type = "function",
        description = "Sets up the search to find the device type family_code. The search itself has to be initiated with a subsequent call to ow.search().",
        returns = "nil",
      },

      write = {
        type = "function",
        description = "Writes a byte. If power is 1 then the wire is held high at the end for parasitically powered devices. You are responsible for eventually depowering it by calling ow.depower() or doing another read or write.",
        returns = "nil",
      },

      write_bytes = {
        type = "function",
        description = "Writes multi bytes. If power is 1 then the wire is held high at the end for parasitically powered devices. You are responsible for eventually depowering it by calling ow.depower() or doing another read or write.",
        returns = "nil",
      },

    },

  },
}

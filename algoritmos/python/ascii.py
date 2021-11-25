from os import error


def text_ascii(text):
    text_ascii = []
    length_text = len(text)
    try:
        file = open("tdd-python/mif/ram_data.mif", "w")
        file.write("-- Copyright (C) 2020  Intel Corporation. All rights reserved.\n")
        file.write(
            " -- Your use of Intel Corporation's design tools, logic functions \n"
        )
        file.write("-- and other software and tools, and any partner logic \n")
        file.write("-- functions, and any output files from any of the foregoing\n")
        file.write("-- (including device programming or simulation files), and any\n")
        file.write("-- associated documentation or information are expressly subject\n")
        file.write("-- to the terms and conditions of the Intel Program License \n")
        file.write(
            "-- Subscription Agreement, the Intel Quartus Prime License Agreement,\n"
        )
        file.write(
            "-- the Intel FPGA IP License Agreement, or other applicable license\n"
        )
        file.write(
            "-- agreement, including, without limitation, that your use is for\n"
        )
        file.write("-- the sole purpose of programming logic devices manufactured by\n")
        file.write(
            "-- Intel and sold by Intel or its authorized distributors.  Please\n"
        )
        file.write("-- refer to the applicable agreement for further details, at\n")
        file.write("-- https://fpgasoftware.intel.com/eula.\n")
        file.write("-- Quartus Prime generated Memory Initialization File (.mif)\n")
        file.write("\n")
        file.write("WIDTH=8;\n")
        file.write("DEPTH=256;\n")
        file.write("ADDRESS_RADIX=UNS;\n")
        file.write("DATA_RADIX=UNS;\n")
        file.write("CONTENT BEGIN\n")
        counter = 0

        for i in range(length_text):
            if i == 0:
                text_ascii.append(ord(text[i]))
                file.write(
                    "    " + str(counter) + "    :    " + str(text_ascii[i]) + ";\n"
                )
                counter += 1
            else:
                text_ascii.append(ord(text[i]))
                file.write(
                    "    " + str(counter) + "    :    " + str(text_ascii[i]) + ";\n"
                )
                counter += 1
        file.write("    [" + str(counter) + "..255]    :    0;\n")
        file.write("END;\n")

    except error:
        return


text_ascii("ipsum dolor lorem sit amet lorem")

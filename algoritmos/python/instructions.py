from os import error


def text_ascii(text):
    try:
        file = open("tdd-python/mif/rom_data.mif", "w")
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

        for i in text:
            file.write("    " + str(counter) + "    :    " + str(i) + ";\n")
            counter += 1
        file.write("    [" + str(counter) + "..255]    :    0;\n")
        file.write("END;\n")

    except error:
        return


text_ascii(
    [
        "e59f0058",
        "e3a01000",
        "e3a02000",
        "e3a03000",
        "e3a04005",
        "e281104c",
        "e281106f",
        "e2811072",
        "e2811065",
        "e281106d",
        "e5904000",
        "e3540000",
        "0a00000a",
        "e3540020",
        "0a000006",
        "e0822000",
        "e1520001",
        "0a000002",
        "e2844001",
        "e2800004",
        "eafffff4",
        "e2833001",
        "e3a020000",
        "e3a04000",
    ]
)

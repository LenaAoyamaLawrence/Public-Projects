from datetime import date, datetime, timedelta
from datetime import timedelta
import csv
import os
import glob

# Get all CSV files in the current folder
csv_files = glob.glob("*.csv")

# Create output_csv folder
try:
    os.mkdir("output_csv")
except:
    print("")

# Loop through all CSV files
for filename in csv_files:
    print(filename)

    # Create a CSV file, delete a previous file if any
    # Delete the previous one
    try:
        os.remove("output_csv/" . filename)
    except:
        print("OS Remove failed, that probably means don't worry :)")

    file_output = open("output_csv/" + filename, "a")

    # Delimeter definition
    delimeter = ","

    # Read input CSV file
    file = open(filename)
    reader = csv.reader(file)

    print("input file load complete")
    print("processing...")

    max_rows = lines = len(list(reader))
    file.seek(0)
    max_columns = len(next(reader))
    file.seek(0)

    # Get the the total number of rows and columns
    print("max rows: ", max_rows, "max cols: ", max_columns)

    # Get the column names and AOI names
    col_names = []
    aoi_names = []
    col_index = 0
    aoi_names_indices = []

    col_names = file.readline().split(delimeter)

    for x in range(0, len(col_names)):

        this_col = col_names[x]
        if (this_col.find('AOI hit', 0, 7) == 0):
            aoi_names.append(this_col[8:][1:][:-1])
            aoi_names_indices.append(col_index)
        col_index = col_index + 1

    print("col names: ")
    print(col_names)

    print("aoi names: ")
    print(aoi_names)

    print("aoi names indices: ")
    print(aoi_names_indices)

    # Get the participant name
    file.readline()
    second_line = file.readline()
    second_line_split = second_line.split(delimeter)
    participant_name = second_line_split[col_names.index("Participant name")]
    print("participant name: ")
    print(participant_name)

    # Get the starting dateTime
    starting_date = second_line_split[col_names.index("Recording date")]
    starting_time = second_line_split[col_names.index("Recording start time")]

    # Parse the datetime
    [starting_day, starting_month, starting_year] = starting_date.split("/")
    [starting_hour, starting_mins,
        starting_secs_msecs] = starting_time.split(":")
    [starting_secs, starting_msecs] = starting_secs_msecs.split(".")

    # Write the columns in the output file
    file_output.write("DateTime,Participant_Name,AOI" + "\n")

    # Loop through each row and generate output
    row_index = 2
    file.seek(0)
    file.readline()
    for x in range(1, max_rows):
        row = file.readline().split(delimeter)
        # Handle AOI logic
        selected_aoi = "None"
        for x in range(0, len(aoi_names)-1):
            if (row[aoi_names_indices[x]] == "1"):
                selected_aoi = aoi_names[x]

        # Handle datetime logic
        # Read the recording msecs and add that to starting datetime

        my_time_delta = timedelta(
            microseconds=int(row[col_names.index("Recording timestamp")]))
            #milliseconds=int(row[col_names.index("Recording timestamp")]))
        my_date_time = datetime(int(starting_year), int(starting_month), int(starting_day), int(starting_hour), int(
            starting_mins), int(starting_secs), int(starting_msecs)*1000) + my_time_delta

        participant_name = row[col_names.index("Participant name")]

        file_output.write("'" + my_date_time.strftime("%Y-%m-%d %H:%M:%S.%f")[:-3] + "'," + str(participant_name) +
                          "," + selected_aoi + "\n")

        row_index = row_index + 1

    # Close the output file
    file_output.close()

    # Close the input file
    file.close()

    print("COMPLETE")

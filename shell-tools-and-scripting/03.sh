# !/usr/bin/env bash
#
# Initialize script run counter and status tags.
count = 0
status = 0

# Loop through the scripts until it fails (exit status != 0).
while [ $status -eq 0 ]; do
  # Run the script and redirect stdout and stderr
  ./your_script.sh >> stdout.log 2>>stderr.log
  status=$?    # Get the exit status of the script
  let count++    # Update the number of times the script was run done
done

# Output the number of times the script ran and the contents of the log
echo "Script ran $count times before failing."
echo "Standard Output (stdout):"
cat stdout.log
echo "Standard Error (stderr):"
cat stderr.log

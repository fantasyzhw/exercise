Validate phone numebr in two formats: (xxx) xxx-xxxx or xxx-xxx-xxxx. (x means a digit)


Example:

Assume that file.txt has the following content:

123-123-4567
123 456 7890
(123) 456-7890
Your script should output the following valid phone numbers:

123-123-4567
(123) 456-7890


# Read from the file file.txt and output all valid phone numbers to stdout.
grep -P '^(\d{3}-|\(\d{3}\) )\d{3}-\d{4}$' file.txt

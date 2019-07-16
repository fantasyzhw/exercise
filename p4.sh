# Example:

# Assume that words.txt has the following content:

# the day is sunny the the
# the sunny is is
# Your script should output the following, sorted by descending frequency:

# the 4
# is 3
# sunny 2
# day 1
# Note:

# Don't worry about handling ties, it is guaranteed that each word's frequency count is unique.
# Could you write it in one-line using Unix pipes?


awk 'BEGIN {
    PROCINFO["sorted_in"] = "@val_num_desc"   # set array traversal to values in descending order
} {
    for (i=1;i<=NF;i++) {   # take each word separately
        a[$i]++             # populate array a with word count incremented each time
    }
} END {
    for (i in a) {          # array traversal and print which will follow pre-set order
        print i,a[i]
    }
}' words.txt


cat words.txt | tr ' ' '\n' |awk '{for(i=1;i<=NF;i++) a[$i]++}END{for(k in a) print k,a[k]}'|sort -k2nr

# cat: display
# tr: remove newline identifier '\n'
# awk '{for(i=1;i<=NF;i++) a[$i]++}: counting list generation
# for(k in a) print k,a[k]}: printing
# sort -k2nr: sort -n:numerical comparison -r:reversely(descending) -k2:based on column #2
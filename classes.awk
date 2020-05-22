#!/usr/bin/env awk -f
# Formats the list of classes from [1] as plain text
#
# [1] http://web.csulb.edu/depts/enrollment/registration/class_schedule/Fall_2020/By_College/index.html

function column(s) {
    split(s, fields, "</?td>")
    if (fields[2] == "" || fields[2] ~ /<a |&nbs/) {
        return "N/A"
    } else if (fields[2] ~ /<div/) {
        # TODO figure out how to handle the jpeg
        return "?"
    } else {
        return fields[2]
    }

}

BEGIN {
    printf("%-7s %-5s %-4s %-5s %-7s %-5s %-15s %-10s %-10s %-20s %-10s\n",
           "CLASS", "COST", "CAP", "NOTES", "TYPE", "DAYS", "TIME", "OPEN?",
           "LOCATION", "INSTRUCTOR", "COMMENT")
}

# class title
/<h4><span class=/ { printf(">>> CECS %d <<<\n", substr($3, 0, 3)) }

# begin section
/^<th scope="row"/ {
    s = 1
    next
}

# TODO: something is weird about the last record
/<p>Contact/ {
    next
}

# columns
s == 1   { cols["#"]=column($0);           s = s + 1; next; }
s == 2   { cols["COST"]=column($0);        s = s + 1; next; }
s == 3   { cols["CAP"]=column($0);         s = s + 1; next; }
s == 4   { cols["NOTES"]=column($0);       s = s + 1; next; }
s == 5   { cols["TYPE"]=column($0);        s = s + 1; next; }
s == 6   { cols["DAYS"]=column($0);        s = s + 1; next; }
s == 7   { cols["TIME"]=column($0);        s = s + 1; next; }
s == 8   { cols["OPEN?"]=column($0);       s = s + 1; next; }
s == 9   { cols["LOCATION"]=column($0);    s = s + 1; next; }
s == 10  { cols["INSTRUCTOR"]=column($0);  s = s + 1; next; }
s == 11  { cols["COMMENT"]=column($0);     s = s + 1; next; }
s == 12 {
    printf("%-7s %-5s %-4s %-5s %-7s %-5s %-15s %-10s %-10s %-20s %-10s\n",
           cols["#"], cols["COST"], cols["CAP"], cols["NOTES"], cols["TYPE"],
           cols["DAYS"], cols["TIME"], cols["OPEN?"], cols["LOCATION"],
           cols["INSTRUCTOR"], cols["COMMENT"])
    s = 0
}

Formats a list of classes from CSULB's schedule of classes as plain text.

## Example
```
% curl http://web.csulb.edu/depts/enrollment/registration/class_schedule/Fall_2020/By_College/CECS.html \
    2> /dev/null | awk -f classes.awk | less
```

Formats a list of classes from CSULB's schedule of classes as plain text.

## Example
```
% curl http://web.csulb.edu/depts/enrollment/registration/class_schedule/Fall_2020/By_College/CECS.html \
    2> /dev/null | awk -f classes.awk
CLASS   COST  CAP  NOTES TYPE    DAYS  TIME            OPEN?      LOCATION   INSTRUCTOR           COMMENT
>>> CECS 100 <<<
3945    N/A   N/A  N/A   SEM     F     5-6:50PM        ?          ECS-105    Staff                N/A
10515   N/A   N/A  N/A   LAB     M     7-9:45PM        ?          ECS-404    Staff                N/A
10516   N/A   N/A  N/A   LAB     M     7-9:45PM        ?          ECS-405    Staff                N/A
10517   N/A   N/A  N/A   LAB     M     7-9:45PM        ?          ECS-416    Staff                N/A
10518   N/A   N/A  N/A   LAB     F     8-10:45AM       ?          ECS-403    Staff                N/A
10519   N/A   N/A  N/A   LAB     F     8-10:45AM       ?          ECS-404    Staff                N/A
10521   N/A   N/A  N/A   LAB     F     7-9:45PM        ?          ECS-404    Staff                N/A
3946    N/A   N/A  N/A   SEM     M     5-6:50PM        ?          ECS-105    Staff                N/A
10520   N/A   N/A  N/A   LAB     F     7-9:45PM        ?          ECS-403    Staff                N/A
10522   N/A   N/A  N/A   LAB     F     7-9:45PM        ?          ECS-405    Staff                N/A
10523   N/A   N/A  N/A   LAB     F     7-9:45PM        ?          ECS-407    Staff                N/A
10524   N/A   N/A  N/A   LAB     F     8-10:45AM       ?          ECS-411    Staff                N/A
10525   N/A   N/A  N/A   LAB     F     8-10:45AM       ?          ECS-412    Staff                N/A
11638   N/A   N/A  N/A   LAB     M     7-9:45PM        ?          ECS-403    Staff                N/A
...
```

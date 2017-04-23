# Tournament results database

this program help managing the swiss tournament system by keep information about the standing ant the matches that have been played in addition to each player rank.

### requirements
you should install:
* python 2.
* postgresql database.
* psycopg2 package

### usage:
you can modify the `tournament.py` file to test each method separately or you can run tournament_test.py to test them all at once.
to run tournament_test.py write in terminal
``` bash
python tournament_test.py
```
Note that you need first to execute the `tournament.sql` file in the postgresql terminal.

### files:

`tournament.py` : contains all the methods that connect to the database and modify it.

`tournament.sql` : contains all the sql command to create needed tables and views.

`tournament_test.py` : test all methods in `tournament.py` file.  

### Analyzing post graduation data

`preprocess.py` converts data into a format more suitable for analysis. 
* `double_major` =  1 if student is a double major, 0 otherwise
* `offer` = 1 if student has a job, 0 otherwise
* `summer_2017` = 1 if student had an internship in summer '17, 0 otherwise
* `summer_2018` = 1 if student had an internship in summer '18, 0 otherwise

### Todo:
Properly group double majors to extract useful info. Right now, double majors are seperated by 'and': "Chinese and political Science", "Environmental Studies and Biology", etc. How do we allow a student classified as "Chinese and Political Science" to be considered both a Chinese major and a Political Science major?


  
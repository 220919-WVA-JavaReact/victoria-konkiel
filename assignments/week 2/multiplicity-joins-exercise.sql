{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Bold;\f1\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red115\green158\blue202;\red170\green170\blue170;\red158\green158\blue158;
\red193\green170\blue108;\red192\green192\blue192;\red238\green204\blue100;\red202\green197\blue128;\red115\green158\blue202;
\red170\green170\blue170;\red158\green158\blue158;\red192\green192\blue192;\red238\green204\blue100;}
{\*\expandedcolortbl;;\csgenericrgb\c45098\c61961\c79216;\csgenericrgb\c66667\c66667\c66667;\csgenericrgb\c61961\c61961\c61961;
\csgenericrgb\c75686\c66667\c42353;\csgenericrgb\c75294\c75294\c75294;\csgenericrgb\c93333\c80000\c39216;\csgenericrgb\c79216\c77255\c50196;\csgenericrgb\c45098\c61961\c79216;
\csgenericrgb\c66667\c66667\c66667;\csgenericrgb\c61961\c61961\c61961;\csgenericrgb\c75294\c75294\c75294;\csgenericrgb\c93333\c80000\c39216;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\b\fs24 \cf2 create
\f1\b0 \cf3  
\f0\b \cf2 table
\f1\b0 \cf3  \cf4 students\cf3  (\cf0 \
\cf3 	\cf4 stu_id\cf3  \cf4 serial\cf3  
\f0\b \cf2 primary
\f1\b0 \cf3  
\f0\b \cf2 key
\f1\b0 \cf3 ,\cf0 \
\cf3 	\cf5 "first"\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 ),\cf0 \
\cf3 	\cf5 "last"\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 ),\cf0 \
\cf3 	\cf4 phone\cf3  
\f0\b \cf5 int
\f1\b0 \cf3 ,\cf0 \
\cf3 	\cf4 email\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 )\cf0 \
\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 create
\f1\b0 \cf3  
\f0\b \cf2 table
\f1\b0 \cf3  \cf4 teachers\cf3  (\cf0 \
\cf3 	\cf4 teach_id\cf3  \cf4 serial\cf3  
\f0\b \cf2 primary
\f1\b0 \cf3  
\f0\b \cf2 key
\f1\b0 \cf3 ,\cf0 \
\cf3 	\cf5 "first"\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 ),\cf0 \
\cf3 	\cf5 "last"\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 ),\cf0 \
\cf3 	\cf4 phone\cf3  
\f0\b \cf5 int
\f1\b0 \cf3 ,\cf0 \
\cf3 	\cf4 email\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 )\cf0 \
\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 create
\f1\b0 \cf3  
\f0\b \cf2 table
\f1\b0 \cf3  \cf4 topics\cf3  (\cf0 \
\cf3 	\cf4 top_id\cf3  \cf4 serial\cf3  
\f0\b \cf2 primary
\f1\b0 \cf3  
\f0\b \cf2 key
\f1\b0 \cf3 ,\cf0 \
\cf3 	\cf4 topic\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 )\cf0 \
\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 create
\f1\b0 \cf3  
\f0\b \cf2 table
\f1\b0 \cf3  \cf4 courses\cf3  (\cf0 \
\cf3 	\cf4 cour_num\cf3  \cf4 serial\cf3  
\f0\b \cf2 primary
\f1\b0 \cf3  
\f0\b \cf2 key
\f1\b0 \cf3 ,\cf0 \
\cf3 	\cf4 title\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 ),\cf0 \
\cf3 	\cf4 duration\cf3  
\f0\b \cf5 varchar
\f1\b0 \cf3 (\cf6 25\cf3 ),\cf0 \
\cf3 	\cf4 grade_level\cf3  
\f0\b \cf5 int
\f1\b0 \cf3 ,\cf0 \
\cf3 	\cf4 instructor\cf3  
\f0\b \cf5 int
\f1\b0 \cf3  
\f0\b \cf2 references
\f1\b0 \cf3  \cf4 teachers\cf3  \cf0 \
\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 create
\f1\b0 \cf3  
\f0\b \cf2 table
\f1\b0 \cf3  \cf4 student_courses\cf3  (\cf0 \
\cf3 	\cf4 stu_id\cf3  
\f0\b \cf5 int
\f1\b0 \cf3  
\f0\b \cf2 references
\f1\b0 \cf3  \cf4 students\cf3 ,\cf0 \
\cf3 	\cf4 cour_num\cf3  
\f0\b \cf5 int
\f1\b0 \cf3  
\f0\b \cf2 references
\f1\b0 \cf3  \cf4 courses\cf0 \
\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 create
\f1\b0 \cf3  
\f0\b \cf2 table
\f1\b0 \cf3  \cf4 course_topics\cf3  (\cf0 \
\cf3 	\cf4 cour_num\cf3  
\f0\b \cf5 int
\f1\b0 \cf3  
\f0\b \cf2 references
\f1\b0 \cf3  \cf4 courses\cf3 ,\cf0 \
\cf3 	\cf4 top_id\cf3  
\f0\b \cf5 int
\f1\b0 \cf3  
\f0\b \cf2 references
\f1\b0 \cf3  \cf4 topics\cf0 \
\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 insert
\f1\b0 \cf3  
\f0\b \cf2 into
\f1\b0 \cf3  \cf4 students\cf3  (\cf5 "first"\cf3 , \cf5 "last"\cf3 , \cf4 phone\cf3 , \cf4 email\cf3 )\cf0 \

\f0\b \cf2 values
\f1\b0 \cf0 \
\cf3 	(\cf8 'Wanda'\cf3 , \cf8 'Maximoff'\cf3 , \cf6 5555555\cf3 , \cf8 'wmax@example.com'\cf3 ),\cf0 \
\cf3 	(\cf8 'Jane'\cf3 , \cf8 'Foster'\cf3 , \cf6 5555556\cf3 , \cf8 'jfost@ecample.com'\cf3 ),\cf0 \
\cf3 	(\cf8 'Natasha'\cf3 , \cf8 'Romanoff'\cf3 , \cf6 5555557\cf3 , \cf8 'nrom@example.com'\cf3 ),\cf0 \
\cf3 	(\cf8 'Shuri'\cf3 , 
\f0\b \cf2 null
\f1\b0 \cf3 , \cf6 5555558\cf3 , \cf8 'shuri@example.com'\cf3 ),\cf0 \
\cf3 	(\cf8 'Carol'\cf3 , \cf8 'Danvers'\cf3 , \cf6 5555559\cf3 , \cf8 'cdan@example.com'\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 insert
\f1\b0 \cf3  
\f0\b \cf2 into
\f1\b0 \cf3  \cf4 teachers\cf3  (\cf5 "first"\cf3 , \cf5 "last"\cf3 , \cf4 phone\cf3 , \cf4 email\cf3 )\cf0 \

\f0\b \cf2 values
\f1\b0 \cf0 \
\cf3 	(\cf8 'Leslie'\cf3 , \cf8 'Knope'\cf3 , \cf6 5555551\cf3 , \cf8 'lknope@example.com'\cf3 ),\cf0 \
\cf3 	(\cf8 'April'\cf3 , \cf8 'Ludgate'\cf3 , \cf6 5555552\cf3 , \cf8 'alud@example.com'\cf3 ),\cf0 \
\cf3 	(\cf8 'Donna'\cf3 , \cf8 'Meagle'\cf3 , \cf6 5555553\cf3 , \cf8 'dmeag@example.com'\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 insert
\f1\b0 \cf3  
\f0\b \cf2 into
\f1\b0 \cf3  \cf4 courses\cf3  (\cf4 title\cf3 , \cf4 duration\cf3 , \cf4 grade_level\cf3 , \cf4 instructor\cf3 )\cf0 \

\f0\b \cf2 values
\f1\b0 \cf3  \cf0 \
\cf3 	(\cf8 'gym'\cf3 , \cf8 '1 semester'\cf3 , \cf6 12\cf3 , \cf6 1\cf3 ),\cf0 \
\cf3 	(\cf8 'calculus'\cf3 , \cf8 '2 semesters'\cf3 , \cf6 11\cf3 , \cf6 2\cf3 ),\cf0 \
\cf3 	(\cf8 'physics'\cf3 , \cf8 '2 semesters'\cf3 , \cf6 10\cf3 , \cf6 3\cf3 )\cf7 ;\cf0 \
\

\f0\b \cf2 insert
\f1\b0 \cf3  
\f0\b \cf2 into
\f1\b0 \cf3  \cf4 topics\cf3  (\cf4 topic\cf3 )\cf0 \

\f0\b \cf2 values
\f1\b0 \cf0 \
\cf3 	(\cf8 'math'\cf3 ),\cf0 \
\cf3 	(\cf8 'physical education'\cf3 ),\cf0 \
\cf3 	(\cf8 'science'\cf3 )\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf9 insert
\f1\b0 \cf10  
\f0\b \cf9 into
\f1\b0 \cf10  \cf11 student_courses\cf10  \cf0 \

\f0\b \cf9 values
\f1\b0 \cf0 \
\pard\pardeftab720\partightenfactor0
\cf10 	(\cf12 1\cf10 , \cf12 1\cf10 ),\cf0 \
\cf10 	(\cf12 4\cf10 , \cf12 1\cf10 ),\cf0 \
\cf10 	(\cf12 4\cf10 , \cf12 2\cf10 ),\cf0 \
\cf10 	(\cf12 1\cf10 , \cf12 3\cf10 ),\cf0 \
\cf10 	(\cf12 2\cf10 , \cf12 2\cf10 ),\cf0 \
\cf10 	(\cf12 3\cf10 , \cf12 2\cf10 ),\cf0 \
\cf10 	(\cf12 5\cf10 , \cf12 1\cf10 ),\cf0 \
\cf10 	(\cf12 3\cf10 , \cf12 3\cf10 )\cf13 ;\cf0 \
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf9 insert
\f1\b0 \cf10  
\f0\b \cf9 into
\f1\b0 \cf10  \cf11 course_topics\cf0 \

\f0\b \cf9 values
\f1\b0 \cf0 \
\pard\pardeftab720\partightenfactor0
\cf10 	(\cf12 1\cf10 , \cf12 2\cf10 ),\cf0 \
\cf10 	(\cf12 2\cf10 , \cf12 1\cf10 ),\cf0 \
\cf10 	(\cf12 3\cf10 , \cf12 1\cf10 ),\cf0 \
\cf10 	(\cf12 3\cf10 , \cf12 3\cf10 )\cf13 ;}
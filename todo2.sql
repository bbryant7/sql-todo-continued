--  1
-- Write INSERT statements to insert 20 todos into the todos table, with a combination of priorities, created times, and completed times, with not all having a completed time.
INSERT into todos (title, priority, created_at) VALUES('go to dance class',1, current_TIMESTAMP ),('wash car',1, current_TIMESTAMP ),('buy oranges',2, current_TIMESTAMP ),('complete weekly project',5, current_TIMESTAMP ),('practice functions',5, current_TIMESTAMP ),('practice interview questions',5, current_TIMESTAMP ),('order jacket',5, current_TIMESTAMP ),('Research sewing machines',2, current_TIMESTAMP ),('watch The Office',3, current_TIMESTAMP ),('take nap',1, current_TIMESTAMP ), ('switch internet provider',5, current_TIMESTAMP );
INSERT into todos (title, priority, created_at, completed_at) VALUES('Turn in Hangman project',5, current_TIMESTAMP);
INSERT into todos (title, priority, created_at, completed_at) VALUES('Wash sheets',5, '2017-08-19 10:23:54', '2017-08-19 13:23:54');
INSERT into todos (title, priority, created_at, completed_at) VALUES('cook egg muffins',1, '2017-08-19 10:23:54', '2017-08-19 14:23:54');
INSERT into todos (title, priority, created_at, completed_at) VALUES('go for run',1, '2017-08-21 8:00:00', '2017-08-23 20:15:54');
INSERT into todos (title, priority, created_at) VALUES('cancel gym membership',2, '2017-08-26 12:00:00');
INSERT into todos (title, priority, created_at, completed_at) VALUES('cook dinner',3, '2017-08-26 10:23:54', '2017-08-25 18:30:00');
INSERT into todos (title, priority, created_at, completed_at) VALUES('grocery store',2, '2017-08-20 10:00:00', '2017-08-21 08:30:00');
INSERT into todos (title, priority, created_at, completed_at) VALUES('Buy Melanie b-day present',4, '2017-08-01 11:30:00', '2017-08-28 13:30:00');
INSERT into todos (title, priority, created_at, completed_at) VALUES('eat lots of cake',4, '2017-08-17 10:23:54', '2017-08-19 13:23:54');
INSERT into todos (title,  priority, details, created_at) VALUES('take nap again',3,'take a long nap', '2017-08-29 10:23:54');
INSERT into todos (title,  priority, details, created_at) VALUES('Purchase flight suit',3,'do this in june', '2017-06-15 10:23:54');
-- 2
-- Write a SELECT statement to find all incomplete todos with priority 3.
SELECT * FROM todos WHERE completed_at is NULL AND priority = 3;
-- 3
-- Write a SELECT statement to find the number of incomplete todos by priority.
SELECT * FROM todos WHERE completed_at is NULL ORDER BY  priority ASC;
-- 4
-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT * FROM todos WHERE created_at >'2017-07-29' ORDER BY priority ASC;
-- 5
-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first.
SElECT title FROM todos WHERE priority = 5 AND completed_at is NULL ORDER BY created_at ASC LIMIT 1;

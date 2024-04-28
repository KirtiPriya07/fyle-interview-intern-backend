-- Write query to get number of graded assignments for each student:
SELECT student_id, count(state = 'GRADED') from assignments
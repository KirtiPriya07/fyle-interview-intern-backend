-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT count(*) FROM assignments WHERE grade = "A" and teacher_id = (SELECT teacher_id FROM assignments WHERE state="GRADED" GROUP BY teacher_id ORDER BY count(teacher_id) desc limit 1);
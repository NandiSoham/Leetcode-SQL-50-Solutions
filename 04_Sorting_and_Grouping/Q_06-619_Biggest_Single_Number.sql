/* 

Problem Link -> https://leetcode.com/problems/biggest-single-number/description/?envType=study-plan-v2&envId=top-sql-50

------------------------------------------------------------- QUESTION -----------------------------------------------------------

Table: MyNumbers

+-------------+------+
| Column Name | Type |
+-------------+------+
| num         | int  |
+-------------+------+
This table may contain duplicates (In other words, there is no primary key for this table in SQL).
Each row of this table contains an integer.
 

A single number is a number that appeared only once in the MyNumbers table.
Find the largest single number. If there is no single number, report null.
The result format is in the following example.
 

Example 1:

Input: 
MyNumbers table:
+-----+
| num |
+-----+
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |
+-----+

Output: 
+-----+
| num |
+-----+
| 6   |
+-----+

Explanation: The single numbers are 1, 4, 5, and 6.
Since 6 is the largest single number, we return it.

*/

-- ----------------------------------------------------------- SOLUTION -----------------------------------------------------------

SELECT MAX(num) AS num 
FROM MyNumbers 
WHERE num NOT IN (
    SELECT num 
    FROM MyNumbers 
    GROUP BY num 
    HAVING COUNT(num) > 1
);



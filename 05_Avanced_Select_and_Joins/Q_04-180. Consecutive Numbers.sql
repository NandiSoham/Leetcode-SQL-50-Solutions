/* 

Problem Link -> https://leetcode.com/problems/consecutive-numbers/description/

------------------------------------------------------------- QUESTION -----------------------------------------------------------

Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
In SQL, id is the primary key for this table.
id is an autoincrement column.
 

Find all numbers that appear at least three times consecutively.
Return the result table in any order.
The result format is in the following example.


Example 1:

Input: 
Logs table:
+----+-----+
| id | num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+

Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+

Explanation: 1 is the only number that appears consecutively for at least three times.

*/

-- ----------------------------------------------------------- SOLUTION -----------------------------------------------------------

SELECT DISTINCT L1.Num AS ConsecutiveNums
FROM Logs L1
    JOIN Logs L2
        ON L1.Id = L2.Id + 1
           AND L1.Num = L2.Num
    JOIN Logs L3
        ON L1.Id = L3.Id + 2
           AND L1.Num = L3.Num


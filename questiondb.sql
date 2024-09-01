CREATE TABLE question (
    id SERIAL PRIMARY KEY,
    category VARCHAR(255),
    difficulty VARCHAR(10),
    question_title TEXT,
    option1 TEXT,
    option2 TEXT,
    option3 TEXT,
    option4 TEXT,
    right_answer VARCHAR(255)
);

INSERT INTO question (category, difficulty, question_title, option1, option2, option3, option4, right_answer) VALUES

-- Question 1
('Arrays and Strings', 'easy', 'What is the time complexity of accessing an element in an array by index?', 'O(1)', 'O(n)', 'O(log n)', 'O(n^2)', 'O(1)'),

-- Question 2
('Arrays and Strings', 'easy', 'Which of the following methods can be used to reverse a string in place?', 'Two-pointer technique', 'Recursion', 'Dynamic programming', 'BFS (Breadth-First Search)', 'Two-pointer technique'),

-- Question 3
('Linked Lists', 'easy', 'What is the advantage of a doubly linked list over a singly linked list?', 'Easier to reverse the list', 'Requires less memory', 'Simpler implementation', 'Faster insertion at the beginning', 'Easier to reverse the list'),

-- Question 4
('Linked Lists', 'easy', 'What is the time complexity of searching for an element in an unsorted singly linked list?', 'O(1)', 'O(n)', 'O(log n)', 'O(n log n)', 'O(n)'),

-- Question 5
('Stacks and Queues', 'easy', 'Which data structure is used to implement function calls in a program?', 'Queue', 'Stack', 'Linked List', 'Hash Table', 'Stack'),

-- Question 6
('Stacks and Queues', 'easy', 'What is the time complexity of enqueue and dequeue operations in a queue implemented using a linked list?', 'O(n)', 'O(1)', 'O(log n)', 'O(n log n)', 'O(1)'),

-- Question 7
('Trees', 'easy', 'Which tree traversal technique visits the root node first, then left subtree, and finally the right subtree?', 'Inorder', 'Preorder', 'Postorder', 'Level Order', 'Preorder'),

-- Question 8
('Trees', 'medium', 'What is the height of a balanced binary search tree with n nodes?', 'O(log n)', 'O(n)', 'O(n log n)', 'O(1)', 'O(log n)'),

-- Question 9
('Graphs', 'easy', 'Which graph traversal algorithm uses a queue to explore nodes level by level?', 'Depth-First Search (DFS)', 'Breadth-First Search (BFS)', 'Dijkstra''s Algorithm', 'Prim''s Algorithm', 'Breadth-First Search (BFS)'),

-- Question 10
('Graphs', 'medium', 'Which of the following represents the time complexity for checking the existence of an edge in an adjacency matrix?', 'O(1)', 'O(V)', 'O(E)', 'O(V^2)', 'O(1)'),

-- Question 11
('Sorting and Searching', 'medium', 'Which sorting algorithm has the best average-case time complexity?', 'Quick Sort', 'Merge Sort', 'Heap Sort', 'All of the above', 'All of the above'),

-- Question 12
('Sorting and Searching', 'easy', 'What is the time complexity of binary search?', 'O(1)', 'O(n)', 'O(log n)', 'O(n log n)', 'O(log n)'),

-- Question 13
('Hashing', 'easy', 'What is the average-case time complexity for searching an element in a hash table?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'O(1)'),

-- Question 14
('Hashing', 'medium', 'Which collision resolution technique in hashing involves placing all elements that hash to the same location in a linked list?', 'Linear Probing', 'Quadratic Probing', 'Double Hashing', 'Chaining', 'Chaining'),

-- Question 15
('Dynamic Programming and Greedy Algorithms', 'medium', 'Which approach does the Dynamic Programming paradigm follow?', 'Divide and conquer', 'Bottom-up', 'Top-down', 'Greedy', 'Bottom-up'),

-- Question 16
('Dynamic Programming and Greedy Algorithms', 'medium', 'What problem-solving technique is typically used to solve the Knapsack problem?', 'Dynamic Programming', 'Greedy Algorithm', 'Backtracking', 'Divide and Conquer', 'Dynamic Programming'),

-- Question 17
('Miscellaneous', 'easy', 'In which data structure do elements get stored in a key-value pair format?', 'Array', 'Linked List', 'Stack', 'Hash Table', 'Hash Table'),

-- Question 18
('Miscellaneous', 'easy', 'Which of the following data structures can be used to implement a priority queue?', 'Stack', 'Queue', 'Heap', 'Linked List', 'Heap'),

-- Question 19
('Recursion', 'medium', 'Which of the following problems is best solved using recursion?', 'Tower of Hanoi', 'Sorting a large array', 'Finding the maximum element in an array', 'Calculating the average of numbers', 'Tower of Hanoi'),

-- Question 20
('Recursion', 'easy', 'What is the base case in a recursive function?', 'The simplest case that stops the recursion', 'The most complex case in recursion', 'The first case in the recursion', 'The case that repeats the recursion', 'The simplest case that stops the recursion');

INSERT INTO questions (category, difficulty, question_title, option1, option2, option3, option4, right_answer) VALUES

-- Question 21
('Trees', 'medium', 'What is the time complexity of searching for an element in a balanced binary search tree (BST)?', 'O(n)', 'O(log n)', 'O(n log n)', 'O(1)', 'O(log n)'),

-- Question 22
('Stacks and Queues', 'easy', 'Which data structure is used for implementing a LIFO (Last In, First Out) order?', 'Queue', 'Stack', 'Linked List', 'Hash Table', 'Stack'),

-- Question 23
('Linked Lists', 'easy', 'In a linked list, what is the time complexity of inserting an element at the beginning?', 'O(1)', 'O(log n)', 'O(n)', 'O(n log n)', 'O(1)'),

-- Question 24
('Trees', 'medium', 'Which of the following is not a self-balancing binary search tree?', 'AVL Tree', 'Red-Black Tree', 'B-tree', 'Binary Heap', 'Binary Heap'),

-- Question 25
('Sorting and Searching', 'medium', 'What is the worst-case time complexity of Quick Sort?', 'O(n log n)', 'O(n)', 'O(n^2)', 'O(log n)', 'O(n^2)');

ALTER TABLE question
RENAME COLUMN right_answer TO correct_answer;

ALTER TABLE question
RENAME COLUMN question_title TO question;

ALTER TABLE question
RENAME COLUMN difficulty TO difficulty_level;

ALTER TABLE question
DROP COLUMN difficulty_level;
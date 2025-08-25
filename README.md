# Rails Assessment: Online Learning Platform

It's time to put your Rails skills to the test with a more advanced domain!

## Objectives

+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Nested Resources
+ Advanced Associations
+ Custom Business Logic
+ Stay calm, focus and code

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `bin/rails db:migrate` and `bin/rails db:seed` to get started.

## The Domain

You are building an online learning platform. Users can enroll in courses, each course contains multiple lessons, and enrollments track a user's progress. The platform should allow for rich interactions between users, courses, lessons, and enrollments, including progress tracking and reporting.

Visiting `/courses` will list all courses. Visiting `/users` will list all users. The Models, Views, and Controllers for users, courses, lessons, and enrollments need to be built out to support the following requirements.

## Instructions / Deliverables

***Work through the following deliverables. These are more advanced than the original challenge, and tailored to online learning!***

1. On the courses index page, display a list of all courses with their title, instructor, and number of lessons. Clicking a course title should take you to the course's show view.
2. On the users index page, display all users. Clicking a user's name should take you to their show view.
3. The course show view should list all lessons for that course, and all users enrolled in the course. Show a progress bar for each user.
4. The user show view should list all courses the user is enrolled in, and their progress in each, with links to each course.
5. Implement a form to enroll a user in a course. Prevent duplicate enrollments.
6. On the lesson show view, display lesson content and a button to mark the lesson as completed for the current user (update enrollment progress).
7. Add a dashboard page for each user showing their enrolled courses, progress, and next lesson to complete. Include a "My Courses" and "My Progress" section.
8. Add validations to ensure users cannot enroll in a course twice, and that progress cannot exceed the number of lessons.
9. Implement a feature to allow users to leave feedback on courses (bonus: add ratings and comments).
10. Add a "Featured Courses" page that lists the most popular or highest-rated courses.
11. Add a report page for each course showing all enrolled users and their progress, with filters for completion status.
12. Add search functionality to find courses by title, instructor, or description.
13. Add custom scopes to filter courses (e.g., by popularity, newness, or subject).
14. Add a fun "Random Course" button that takes the user to a random course show page.
15. (Bonus) Add notifications for users when they complete a course (try ActionMailer or just a flash message).
16. (Bonus) Add an API endpoint to list courses and enrollments (try using serializers).

### Hints / Tips

+ Use nested resources for enrollments and lessons under courses and users.
+ Use custom model methods to calculate progress and next lesson.
+ Use strong params and model validations to ensure data integrity.
+ Consider using partials for repeated view logic (e.g., course cards, lesson lists).
+ Use Rails' built-in helpers for forms and links.
+ For search and pagination, consider gems like `kaminari` or `will_paginate`.
+ Make it fun! Add some color, icons, or course badges to your views if you want.

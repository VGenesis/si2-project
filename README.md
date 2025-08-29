#   ProjectManager
> Student project by Veljko Grujić

##  Overview

This project represents a Web app that allows users to easily manage their projects. The app will allow users to manage their projects and assign employees to said projects.

##  Projects
The app allows users to manage their projects to streamline company workflow. A project represents a singular project the company is working/has worked on. Project structure looks like this:

-  Project
   -  Work Packet
      - Task
        - Activity

##  Work packets
Work packets are substructures that represent various aspects of the project. Each work packet has a team lead assigned to oversee progress of the packet. An example of this can be seen in a web development: frontend, backend and database development are separate aspects of the project and can be marked as work packets. 

##  Tasks
Tasks contain project activities, which represent a single functionality or event. Tasks are delegated to employees, who then split them into multiple steps called **activities**. **Supply order**, **Device test**, and **Class refactor** can be put into this category.

##  Activities
Activities are steps taken to realize a task. The employee or team of employees define these based on the task assigned to them. Activities are not separate objects on the planning board, instead they are assigned to the tasks they belong. Example: A **Develop User Page** task can be divided into **Check user credentials**, **Develop page layout**, **Connect to Users table** and **Display user data** activities. These activities will be in the description of their task.

##  Assignment Board
Each project will have their own assignment board to manage tasks across work packets. The top side will represent various states the task can be in (ex. Backlog, Working, Validating, Done). The left side will represent employees or employee groups, to whom the user will assign one or multiple tasks.

##  Employees
The app contains data for each employee working on a project. An employee can be assigned tasks or can belong to an employee group.

##  Employee Group
An employee group contains two or more employees who share the same tasks. An employee in a group cannot be given a separate task, they will work on the task the group was assigned to.

## Images

#### TBA

### [TODO](docs/TODO.md)

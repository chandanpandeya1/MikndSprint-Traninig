todo_list = []

def add_todo():
    task = input("Enter the task: ")
    todo_list.append(task)
    print(f"Task '{task}' added to the todo list.")


def remove_todo():
    index = int(input("Enter the index of the task to remove: "))
    if 0<= index <len(todo_list):
        removeTask = todo_list.pop(index)
        print(f"Task '{removeTask}' removed from todo list.")
    else:
        print("Invalid index. Please try again.")

def display_todos():
    if not todo_list:
        print("The todo list is empty.")
    else:
        print("Todo List:")
        for i in (todo_list):
            print(f"{i}. {task}")



def main_menu():
    while True:
        print("Todo App Menu:")
        print("1. Add a task")
        print("2. Remove a task")
        print("3. Display all tasks")
        print("4. Exit")
        
        choice = input("Enter your choice (1-4): ")
        
        if choice == '1':
            add_todo()
        elif choice == '2':
            remove_todo()
        elif choice == '3':
            display_todos()
        elif choice == '4':
            print("Exiting the Todo App. Goodbye!")
            break
        else:
            print("Invalid choice. Please try again.")





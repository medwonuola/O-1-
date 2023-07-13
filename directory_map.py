import os
import sys


def folder_tree(directory, prefix='', dir_level=0, file=None, print_files=False, exclude_folders=None):
    if dir_level == 0:
        folder_name = directory.split('/')[-1]
        file.write(f"{folder_name}/\n")

    try:
        for item in os.listdir(directory):
            if item.startswith('.') or (exclude_folders and item in exclude_folders):
                continue
            item_path = os.path.join(directory, item)
            if os.path.isdir(item_path):
                file.write(f'{prefix}|-- {item}/\n')
                folder_tree(item_path, prefix=prefix+'|   ', dir_level=dir_level+1, file=file,
                            print_files=print_files, exclude_folders=exclude_folders)
            elif print_files:
                file.write(f'{prefix}|-- {item}\n')
    except PermissionError:
        print(f"Skipping {directory} due to insufficient permissions.")
        pass


def save_folder_tree(directory, print_files=False, exclude_folders=None):
    if not os.path.isdir(directory):
        print(f"Error: {directory} is not a valid directory")
        return
    output_file = f"{directory.split('/')[-1]}_path.txt"
    with open(output_file, 'w') as file:
        folder_tree(directory, file=file, print_files=print_files, exclude_folders=exclude_folders)
    print("Folder tree saved to ", output_file)


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python folder_tree.py <directory> [-f] [-e folder1 folder2 ...]")
        sys.exit(1)
    directory = sys.argv[1]
    print_files = False
    exclude_folders = None
    if len(sys.argv) >= 3:
        if sys.argv[2] == '-f':
            print_files = True
        elif sys.argv[2] == '-e':
            if len(sys.argv) >= 4:
                exclude_folders = sys.argv[3:]
            else:
                print("No folders specified to exclude.")
    save_folder_tree(directory, print_files=print_files, exclude_folders=exclude_folders)

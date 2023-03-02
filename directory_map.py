import os
import sys


def folder_tree(directory, prefix='', dir_level=0, file=None):
    if (dir_level == 0):
        folder_name = directory.split('/')[-1]
        file.write(f"{folder_name}/\n")
    for item in os.listdir(directory):
        if item.startswith('.'):
            continue
        item_path = os.path.join(directory, item)
        if os.path.isdir(item_path):
            file.write(f'{prefix}|-- {item}/\n')
            folder_tree(item_path, prefix=prefix+'|   ', dir_level=dir_level+1, file=file)


def save_folder_tree(directory):
    output_file = f"{directory.split('/')[-1]}_path.txt"
    with open(output_file, 'w') as file:
        folder_tree(directory, file=file)
    print("Folder tree saved to ", output_file)


if __name__ == '__main__':
    if len(sys.argv) < 2:
        print("Usage: python folder_tree.py <directory>")
        sys.exit(1)
    directory = sys.argv[1]
    save_folder_tree(directory)

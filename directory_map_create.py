import os
import argparse
import sys


def create_directory_structure(file_path):
    base_path = None
    current_path = None
    with open(file_path, 'r') as f:
        for line in f:
            if '|' not in line:
                base_path = line.strip()
                if not os.path.exists(base_path):
                    os.makedirs(base_path)
                current_path = base_path
            else:
                depth = line.index('|')
                directory = line.strip().split(' ')[-1]
                if directory.endswith('/'):
                    current_path = os.path.join(
                        base_path, '    ' * depth, directory)
                    if not os.path.exists(current_path):
                        os.makedirs(current_path)
                else:
                    # create a file
                    file_path = os.path.join(
                        current_path, '    ' * depth, directory)
                    with open(file_path, 'w') as _:
                        pass


# if __name__ == '__main__':
#     if len(sys.argv) < 2:
#         print("Usage: python folder_tree.py <directory> [-f]")
#         sys.exit(1)
#     directory = sys.argv[1]
#     create_directory_structure(directory)


def main():
    parser = argparse.ArgumentParser(
        description="Create a directory structure based on a directory map file.")
    parser.add_argument("file_path", help="Path to the directory map file.")
    args = parser.parse_args()

    create_directory_structure(args.file_path)


if __name__ == "__main__":
    main()

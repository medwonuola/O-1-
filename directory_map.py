import os


def print_folder_tree(directory, prefix='', dir_level=0):
    if (dir_level == 0):
        print(directory.split('/')[-1] + '/')
    for item in os.listdir(directory):
        if item.startswith('.'):
            continue
        item_path = os.path.join(directory, item)
        if os.path.isdir(item_path):
            print(f'{prefix}|--{item}/')
            print_folder_tree(item_path, prefix=prefix+'|  ', dir_level=dir_level+1)


if __name__ == '__main__':
    print_folder_tree('/Users/mac/Projects/Contribution')

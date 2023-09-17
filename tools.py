def print_docker_command(command):
    print('\nDocker command to execute\n')
    print(f'{command[0]} {command[1]}')
    for arg in command[2:]:
        print(f'  {arg}')
    print()
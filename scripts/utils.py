import subprocess


def run_command(command: list, check: bool = True):
    print(" ".join(command))
    result = subprocess.run(
        command, check=check, stdout=subprocess.PIPE, universal_newlines=True
    )
    return result.stdout.strip()

import json
import argparse
import sys

def parse_tdlib(mode: str) -> str:
    """
        Parse Tdlib version Package.resolved
    """
    with open("Package.resolved") as file:
        deps = json.load(file)

    if deps['version'] == 1:
        libs = deps['object']['pins']
        for lib in libs:
            if lib['package'] == 'TDLibFramework':
                version, commit = lib['state']['version'].split('-')
                if mode == 'version':
                    return version
                elif mode == 'commit':
                    return commit
                elif mode == 'full':
                    return lib['state']['version']
    else:
        raise ValueError(f"Unsupported .resolved version {deps['version']}")

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("mode", help="version or commit")
    
    args = parser.parse_args()

    if args.mode not in ('version', 'commit', 'full'):
        sys.exit("Invalid mode. Available: version, commit, full")
    print(parse_tdlib(args.mode))
import getopt
import sys
from loguru import logger
from paramaters import params


def main(argv):
    logger.info("=== ready to run user code ===")
    try:
        opts, _ = getopt.getopt(argv, "n:") 
    except:
        logger.error("Please run with format: python run.py -n <function name>")
        sys.exit(2)
    function_name = None
    for opt, arg in opts:
        if opt == '-n':
            function_name = arg
    logger.info("user code function name: {}", function_name)
    sys.path.append(params['code_dir'])
    exec(open("Script1.py").read())
    logger.info("=== Finish ===")


if __name__ == "__main__":
    main(sys.argv[1:])
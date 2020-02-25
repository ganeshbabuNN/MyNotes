import logging

logging.basicConfig(filename="mylog.log",level=logging.CRITICAL)
logging.critical("Critical")
logging.error("Error")
logging.warn("Warning")
logging.info("Info")
logging.debug("Debug")

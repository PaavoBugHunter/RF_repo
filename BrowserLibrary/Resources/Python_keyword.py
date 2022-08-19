from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword

@keyword("My First Keyword")
def add_one_to_integer(a):
    BuiltIn().log_to_console(f"Input: {a}, Output: {a + 1}")
    return 1 + a
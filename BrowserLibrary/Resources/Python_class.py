from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword

class Python_class:

    ROBOT_LIBRARY_SCOPE = "Test"

    def __init__(self, init_a, init_b):
        BuiltIn().log_to_console(f"Howdy! Init_a: {init_a}, init_b:{init_b}")
        self.init_a = init_a
        self.init_b = init_b

    def sum_of_values(self):
        return self.init_a + self.init_b

    @keyword("My class_keyword")
    def sub_of_value(self):
        return self.init_a - self.init_b
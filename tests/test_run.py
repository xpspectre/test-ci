import unittest
from test_ci.run import add, sub


class RunTest(unittest.TestCase):
    def test_add(self):
        self.assertEqual(add(1, 2), 3)

    def test_sub(self):
        self.assertEqual(sub(5, 4), 1)

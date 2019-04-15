import unittest
from test_ci.run import adder


class RunTest(unittest.TestCase):
    def test_adder(self):
        self.assertEqual(adder(1, 2), 3)

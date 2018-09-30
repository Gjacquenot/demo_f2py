import unittest
from mymodule import mymodule


class TestMyModule(unittest.TestCase):

    def test_sum(self):
        self.assertEqual(10, mymodule.sum_array([1,2,3,4]))
    def test_norm(self):
        self.assertEqual((1+4+9+16)**0.5, mymodule.norm_array([1,2,3,4]))


if __name__ == '__main__':
    from unittest import main
    main()

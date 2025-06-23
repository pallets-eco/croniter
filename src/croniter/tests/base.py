import typing
import unittest


class TestCase(unittest.TestCase):
    """
    We use this base class for all the tests in this package.
    If necessary, we can put common utility or setup code in here.
    """

    maxDiff: typing.Optional[int] = 10**10

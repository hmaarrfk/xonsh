"""Xonsh extension of the standard library os module, using xonsh for
subprocess calls"""
from contextlib import contextmanager
import os


@contextmanager
def indir(d):
    """Context manager for temporarily entering into a directory."""
    # Copyright (c) 2018, The Regro Developers
    old_d = os.getcwd()
    ![cd @(d)]
    yield
    ![cd @(old_d)]

from pathlib import Path

import pytest


@pytest.fixture
def basedir():
    yield Path(__file__).parent.parent

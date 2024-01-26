import pytest


class TestQEMU2:
    @pytest.mark.linux
    def test_driver_with_builtin_network(self):
        # setup
        ...

        # test
        ...

        # assert
        ...

    @pytest.mark.macos
    def test_driver_with_socket_vmnet_network(self):
        # setup
        ...

        # test
        ...

        # assert
        ...

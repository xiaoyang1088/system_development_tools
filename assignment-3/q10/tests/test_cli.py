import sys
import pytest

from greetlab.cli import main


def test_blank_name_exits(monkeypatch):
    monkeypatch.setattr(sys, "argv", ["sdt-greet", "--name", "   "])
    with pytest.raises(SystemExit) as exc:
        main()

    assert exc.value.code == 2

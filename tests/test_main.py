from app.main import test_function


def test_main():
    result = test_function()
    assert result == "Allianz Car Insurance Claim Application"

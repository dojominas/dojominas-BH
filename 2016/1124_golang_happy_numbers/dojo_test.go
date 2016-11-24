package main

import "testing"

func TestOneIsHappyNumber(t *testing.T) {
	expected := true
	returned := HappyNumber(1, make([]int, 0))

	if expected != returned {
		t.Errorf("Expected %s, but returned %s", expected, returned)
	}
}

func TestTwoIsNotHappyNumber(t *testing.T) {
	expected := false
	returned := HappyNumber(2, make([]int, 0))

	if expected != returned {
		t.Errorf("Expected %s, but returned %s", expected, returned)
	}
}

func TestSevenIsHappyNumber(t *testing.T) {
	expected := true
	returned := HappyNumber(7, make([]int, 0))

	if expected != returned {
		t.Errorf("Expected %t, but returned %t", expected, returned)
	}
}

func TestFourIsHappyNumber(t *testing.T) {
	expected := false
	returned := HappyNumber(4, make([]int, 0))

	if expected != returned {
		t.Errorf("Expected %t, but returned %t", expected, returned)
	}
}

func Test100IsHappyNumber(t *testing.T) {
	expected := true
	returned := HappyNumber(100, make([]int, 0))

	if expected != returned {
		t.Errorf("Expected %t, but returned %t", expected, returned)
	}
}

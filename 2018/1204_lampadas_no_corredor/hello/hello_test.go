package main

import "testing"
import "reflect"

func TestNEquals1 (t *testing.T){
	corredor := Corredor(1)
	expects := []bool{true}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}

func TestNEquals2 (t *testing.T){
	corredor := Corredor(2)
	expects := []bool{true, false}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}

func TestNEquals3 (t *testing.T){
	corredor := Corredor(3)
	expects := []bool{true, false, false}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}


func TestNEquals4 (t *testing.T){
	corredor := Corredor(4)
	expects := []bool{true, false, false, true}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}

func TestNEquals5 (t *testing.T){
	corredor := Corredor(5)
	expects := []bool{true, false, false, true, false}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}


func TestNEquals6 (t *testing.T){
	corredor := Corredor(6)
	expects := []bool{true, false, false, true, false, false}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}

func TestNEquals7 (t *testing.T){
	corredor := Corredor(7)
	expects := []bool{true, false, false, true, false, false, false}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}

func TestNEquals8 (t *testing.T){
	corredor := Corredor(8)
	expects := []bool{true, false, false, true, false, false, false, false}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}

func TestNEquals9 (t *testing.T){
	corredor := Corredor(9)
	expects := []bool{true, false, false, true, false, false, false, false, true}
	if !reflect.DeepEqual(corredor, expects){
			t.Fatalf("Expected %v, but returns %v", expects, corredor)
	}
}

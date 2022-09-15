package main

import (
	"errors"
	"fmt"
)

// Representation of set
type Set struct {
	Elements map[string]struct{} // empty struct uses 0 bytes, boolean would use 1 byte
}

func NewSet() *Set {
	var set Set
	set.Elements = make(map[string]struct{})
	return &set
}

// Add element to set
func (s *Set) Add(elem string) {
	s.Elements[elem] = struct{}{} // double braces indicate an instantiation of the strcut{} type
}

// Remove element from set if it exists
func (s *Set) Delete(elem string) error {
	if _, exists := s.Elements[elem]; !exists {
		return errors.New("element not present in the set")
	}
	delete(s.Elements, elem) // delete item in map using key
	return nil
}

// checks if element exists in set
func (s *Set) Contains(elem string) bool {
	_, exists := s.Elements[elem]
	return exists
}

// prints all elements in the set
func (s *Set) ListElem() {
	for k, _ := range s.Elements {
		fmt.Println(k)
	}
}

func main() {

	fmt.Println("Sets tutorial")
	mySet := NewSet()
	mySet.Add("Earth")
	mySet.Add("Earth")
	mySet.Add("Venus")
	mySet.Add("Mars")
	mySet.ListElem()

	mySet.Delete("Venus")
	mySet.Delete("Venus")
	mySet.ListElem()

	fmt.Println(mySet.Contains("Mars"))
}

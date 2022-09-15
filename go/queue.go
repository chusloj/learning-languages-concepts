package main

import (
	"errors"
	"fmt"
)

type Queue struct {
	Elements []int
}

// Add element to the queue
func (q *Queue) Enqueue(elem int) {
	q.Elements = append(q.Elements, elem)
}

// Dequeue
func (q *Queue) Dequeue() (int, error) {
	if len(q.Elements) == 0 {
		return 0, errors.New("Empty Queue")
	}
	firstElement := q.Elements[0]
	q.Elements = q.Elements[1:]

	return firstElement, nil
}

// Length of the queue
func (q *Queue) Length() int {
	return len(q.Elements)
}

// Returns first element of queue without updating queue
func (q *Queue) Peek() (int, error) {
	if q.IsEmpty() {
		return 0, errors.New("Queue is empty")
	}
	return q.Elements[0], nil
}

// Returns whether the queue is empty
func (q *Queue) IsEmpty() bool {
	return len(q.Elements) == 0

	// if len(q.Elements) == 0 {
	// 	return true
	// }
	// return false
}

func main() {
	fmt.Println("Build a Queue using Slices")
	q := Queue{}
	q.Enqueue(6)
	q.Enqueue(9)
	q.Enqueue(11)
	fmt.Println(q.Elements)

	elem, _ := q.Dequeue()
	fmt.Println(elem)
	fmt.Println(q.Elements)

	fmt.Println(q.Peek())

	elem, _ = q.Dequeue()
	elem, _ = q.Dequeue()
	elem, _ = q.Dequeue()

	fmt.Println(q.IsEmpty())
	fmt.Println(q.Length())
	fmt.Println(q.Peek())
}

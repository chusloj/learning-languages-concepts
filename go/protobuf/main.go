package main

import (
	"fmt"
	"log"

	"github.com/golang/protobuf/proto"
)

func main() {

	jacob := &Person{
		Name: "Jacob",
		Age:  25,
		Socialfollowers: &SocialFollowers{
			Youtube: 1000,
			Twitter: 1400,
		},
	}

	data, err := proto.Marshal(jacob)
	if err != nil {
		log.Fatal("marshaling error: ", err)
	}

	fmt.Println(data)

	newJacob := &Person{}
	err = proto.Unmarshal(data, newJacob)
	if err != nil {
		log.Fatal("Unmarshalling error: ", err)
	}

	fmt.Println(newJacob.GetAge())
	fmt.Println(newJacob.GetName())
	fmt.Println(newJacob.GetSocialfollowers().GetTwitter())
	fmt.Println(newJacob.GetSocialfollowers().GetYoutube())

}

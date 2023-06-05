package main

import (
	"github.com/urfave/cli"
)

func main() {
	app := cli.NewApp()
	app.Name = "Website Lookup CLI"
	app.Usage = "Lets you query IPs, cnames, MX Records and Name Servers"

	myFlags := []cli.Flag{
		cli.StringFlag{
			Name:  "host",
			Value: "tutorialedge.net",
		},
	}

	app.Commands = []cli.Command{
		{
			Name: "ns",
			Usage: "Looks up the name servers for a particular host",
			Flags: myFlags,
			Action: func(c *cli.Context) error {
				ns, err: net.LookupNS
			}
		},
	}
}

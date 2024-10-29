package main

import (
	"context"
	"log"

	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/google/uuid"
)

type Business struct {
	Id             uuid.UUID `json:"id"`
	Name           string    `json:"name"`
	SiteIdentifier string    `json:"siteIdentifier"`
}

func init() {
	// Initialize the S3 client outside of the handler, during the init phase
	cfg, err := config.LoadDefaultConfig(context.TODO())
	if err != nil {
		log.Fatalf("unable to load SDK config, %v", err)
	}
}

// func handleRequest(ctx context.Context, event json.RawMessage) error {

// }

// func main() {
// 	lambda.Start(handleRequest)
// }

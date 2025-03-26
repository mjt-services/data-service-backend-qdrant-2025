# Vector Store Backend Service 2025

This project is a backend vector store service in the context of the [MJT Services](https://github.com/mjt-services) and relies upon the [MQ Service 2025](https://github.com/mjt-services/mq-service-2025) for message queue functionality.

It is the backend companion to the [Data Service](https://github.com/mjt-services/data-service-2025).

This service is thin wrapper around [Qdrant](https://github.com/qdrant/qdrant) a vector DB and search engine.

## Documentation

For detailed documentation, please visit the [project documentation](https://mjt-services.github.io/data-service-backend-qdrant-2025/).

## Environment Configuration

The `.env` file is used to configure environment variables for the project. You should create a `.env` file in the root directory of the project. You can use the following example as a template:

```properties
IMAGE_TAG=mjtdev/vector:latest
NAME=asr
NETWORK_NAME=mq_network
NATS_AUTH_TOKEN=<your_nats_auth_token_here>
```

Make sure to replace `your_nats_auth_token_here` with your actual NATS authentication token.

### Thanks

Special thanks to [Qdrant Commiters](https://github.com/qdrant/qdrant/graphs/contributors) for their work on the Qdrant project, and [Qdrant the company](https://qdrant.tech/) for investing in a business model that supports OSS.
```


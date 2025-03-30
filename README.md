## Prerequisites

1. **Terraform Installed**: Ensure Terraform is installed on your machine.
2. **Docker Installed**: Make sure Docker is installed and running.
3. **Spotify Account**: You need a Spotify account (without premium access)
4. **Spotify Developer Account**: Register and create an application to get the Client ID and Client Secret.
5. **Spotify Provider for Terraform**: Install and configure the Spotify provider for Terraform.
6. **VS Code Editor**: Recommended for editing Terraform files.

1. Creating Terraform Code
2. Define Provider
3. Need API Key
4. Start with App Creation
5. Enter Details
Create a file named .env to store your Spotify application's Client ID and Secret:
SPOTIFY_CLIENT_ID=<your_spotify_client_id>
SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>

6. Run the Spotify Auth App and Get the API Key
Make sure Docker Desktop is running, and start the authorization proxy server:
docker run --rm -it -p 27228:27228 --env-file .env ghcr.io/conradludgate/spotify-auth-proxy

9. Initialize and Apply Terraform Configuration
Initialize the Terraform configuration:
terraform init​
Apply the Terraform configuration:
terraform apply

terraform plan
terraform apply -auto-approve  
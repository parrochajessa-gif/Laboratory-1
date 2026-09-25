# MinIO Deployment Documentation

## Docker Command Used

docker run -d -p 9000:9000 -p 9001:9001 --name minio-server
--user root
-e "MINIO_ROOT_USER=cloudadmin"
-e "MINIO_ROOT_PASSWORD=CloudNova2026!"
alpine/minio:RELEASE.2025-10-15T17-29-55Z server /data --console-address ":9001"


## Note on Image Substitution
The lab originally specified the `minio/minio` image. However, MinIO discontinued free Docker Hub image distribution in October 2025, so `minio/minio` is no longer pullable. I substituted the community-maintained mirror `alpine/minio`, which publishes the same official MinIO builds under a different repository name. I also added the `--user root` flag, since the image's default non-root user did not have write permission to the `/data` directory inside the container, which caused it to exit immediately on first run.

## Web Console Port
Port **9001** was used to access the MinIO web console. Port 9000 is used for the S3-compatible API.

## Bucket Created
`client-photos`

## Explanation of Environment Variables (-e flags)
The `-e` flags pass environment variables into the container at startup. Here:
- `MINIO_ROOT_USER=cloudadmin` sets the admin username for logging into the MinIO console.
- `MINIO_ROOT_PASSWORD=CloudNova2026!` sets the admin password.

These override MinIO's default (insecure) credentials, letting us define secure login details directly when the container starts, without editing any config files inside the container.

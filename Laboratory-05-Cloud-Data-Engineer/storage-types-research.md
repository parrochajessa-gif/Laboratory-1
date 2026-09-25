# Cloud Storage Types Research

| Storage Type | Description | Primary Use Case | Cloud Provider Example |
|---|---|---|---|
| Block Storage | Splits data into fixed-size blocks, each with its own unique address, and attaches directly to a server like a virtual hard drive. The OS manages the file system on top of it. | Databases, OS boot volumes, and applications that need fast, low-latency read/write access | AWS EBS |
| File Storage | Organizes data in a hierarchical folder/file structure and is accessed over a network, allowing multiple systems to read/write to the same files | Shared drives, content management systems, home directories, and app configs needing shared access | AWS EFS |
| Object Storage | Stores data as discrete objects — each with its data, metadata, and a unique identifier — in a flat, non-hierarchical structure, accessed via HTTP/API calls | Unstructured data at massive scale: images, videos, backups, and static website assets | AWS S3 |

## Why Object Storage Fits This Client

Object Storage is the best choice for the client's photo-sharing app because it can scale to handle millions of images without the performance or capacity limits of traditional block storage. Since it's accessed over HTTP via a simple API, it integrates naturally with web and mobile applications uploading and retrieving user photos. Each object also carries its own metadata, making it easy to organize, tag, and manage individual files at scale.

# Client Recommendations

## Client A – Startup Company
**Recommended Platform:** GCP (or AWS — see note below)
**Explanation:** For a startup with a limited budget expecting rapid growth, a platform with a strong free tier and transparent, usage-based pricing is ideal. Google Cloud is often favored by startups for its simpler pricing model and generous free-tier credits, while AWS offers the broadest range of services to scale into as the company grows. Either choice allows the startup to start small and scale compute and storage on demand without large upfront investment.
**Services to use:** 1) Compute Engine / EC2 2) Cloud Storage / S3 3) Cloud SQL / RDS

## Client B – University
**Recommended Platform:** Microsoft Azure
**Explanation:** Since the university already relies on Windows Server, Microsoft 365, and Active Directory, Azure is the natural choice due to its native, seamless integration with these existing Microsoft tools. This minimizes migration complexity and allows the university to extend its current identity and access management setup directly into the cloud, rather than rebuilding it from scratch on another platform.
**Services to use:** 1) Virtual Machines 2) Entra ID (Azure AD) 3) Azure SQL Database

## Client C – AI Research Company
**Recommended Platform:** Google Cloud Platform
**Explanation:** GCP is widely recognized for its strength in AI and machine learning tooling, along with high-performance computing options suited for research-heavy workloads. Its infrastructure also underpins Kubernetes, giving the company strong container orchestration support for managing complex ML pipelines and distributed training jobs.
**Services to use:** 1) Compute Engine (with GPU/TPU support) 2) Google Kubernetes Engine (GKE) 3) Cloud Storage

## Client D – Global E-Commerce Company
**Recommended Platform:** Amazon Web Services
**Explanation:** A global e-commerce company needs highly available infrastructure with automatic scaling across many regions, which plays directly to AWS's strength as the provider with the most mature and widely used global infrastructure. AWS's auto-scaling and load balancing services are well-tested at massive scale, making it a reliable choice for handling unpredictable global traffic.
**Services to use:** 1) EC2 Auto Scaling 2) Elastic Load Balancing 3) Amazon CloudFront (CDN)

## Multi-Cloud Decision Matrix

| Business Requirement | Recommended Platform | Justification |
|---|---|---|
| Startup Company | GCP | Simple pricing, generous free tier |
| Enterprise Organization | AWS | Broadest service catalog, proven at scale |
| Microsoft Environment | Azure | Native integration with Microsoft tools |
| AI / Machine Learning | GCP | Strongest AI/ML tooling and data analytics |
| Kubernetes Deployment | GCP | Originated Kubernetes, strongest K8s support |
| Global Web Application | AWS | Largest, most mature global infrastructure |

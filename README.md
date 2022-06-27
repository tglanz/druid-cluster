# Druid Cluster

Architecture

- D Data servers, each containing a MiddleManager and a Historical
- Q Query servers, each containing a Broker and a Router
- M Master servers, each containing a Coordinator and an Overlord
- Zookeeper cluster
- Postgres metadata storage
- S3 deep storage

Important design goals

- Cluster should be managed within a kubernetes cluster
- Data, Query and Master servers should each be independently deplpyable and scalable
- Good, central logs/monitoring support
- Zookeeper quorum should be scalable

Less important design goals

- Secured (Secrets, TLS etc...)
- Storages should be (relatively) easily replaceable

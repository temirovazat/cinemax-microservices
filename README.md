## Cinemax

[![cinemax-admin-panel](https://github.com/temirovazat/cinemax-admin-panel/workflows/cinemax-admin-panel/badge.svg
)](https://github.com/temirovazat/cinemax-admin-panel/actions/workflows/main.yml)
[![sqlite-to-postgres](https://github.com/temirovazat/sqlite-to-postgres/workflows/sqlite-to-postgres/badge.svg
)](https://github.com/temirovazat/sqlite-to-postgres/actions/workflows/main.yml)
[![postgres-to-elk](https://github.com/temirovazat/postgres-to-elk/workflows/postgres-to-elk/badge.svg
)](https://github.com/temirovazat/postgres-to-elk/actions/workflows/main.yml)
[![cinemax-async-api](https://github.com/temirovazat/cinemax-async-api/workflows/cinemax-async-api/badge.svg
)](https://github.com/temirovazat/cinemax-async-api/actions/workflows/main.yml)
[![cinemax-auth](https://github.com/temirovazat/cinemax-auth/workflows/cinemax-auth/badge.svg
)](https://github.com/temirovazat/cinemax-auth/actions/workflows/main.yml)
[![kafka-to-clickhouse](https://github.com/temirovazat/kafka-to-clickhouse/workflows/kafka-to-clickhouse/badge.svg
)](https://github.com/temirovazat/kafka-to-clickhouse/actions/workflows/main.yml)
[![cinemax-ugc](https://github.com/temirovazat/cinemax-ugc/workflows/cinemax-ugc/badge.svg
)](https://github.com/temirovazat/cinemax-ugc/actions/workflows/main.yml)
[![cinemax-notifications](https://github.com/temirovazat/cinemax-notifications/workflows/cinemax-notifications/badge.svg
)](https://github.com/temirovazat/cinemax-notifications/actions/workflows/main.yml)

### **Description**

[CINEMAX](https://github.com/temirovazat/cinemax-microservices) — is a set of microservices for an online movie theater website:
- [Admin Panel](https://github.com/temirovazat/cinemax-admin-panel) based on Django framework
- [Data Import](https://github.com/temirovazat/sqlite-to-postgres) into PostgreSQL database
- [Full-text searching](https://github.com/temirovazat/postgres-to-elk) using Elasticsearch search engine
- [Asynchronous API](https://github.com/temirovazat/cinemax-async-api) based on FastAPI framework
- [User authentication](https://github.com/temirovazat/cinemax-auth) using Flask framework
- [ETL system for analysts](https://github.com/temirovazat/kafka-to-clickhouse) via Kafka message broker
- [User-generated Content](https://github.com/temirovazat/cinemax-ugc) using MongoDB NoSQL database
- [Notification system](https://github.com/temirovazat/cinemax-notifications) in Django + FastAPI + Faust

### **Technologies**

```Python``` ```FastAPI``` ```Django``` ```Flask``` ```PostgreSQL``` ```Elasticsearch``` ```Redis``` ```SQLite``` ```MongoDB``` ```Kafka``` ```PySpark``` ```Clickhouse``` ```Logstash``` ```NGINX``` ```Docker```

### **How to Run the Project:**

Clone the repository and navigate to the `/infra` directory inside it:
```
git clone https://github.com/temirovazat/cinemax-microservices.git
```
```
cd cinemax-microservices/infra/
```

Deploy and run the project in containers:
```
docker-compose up
```

You can explore the project at the following links:

| URL | Description |
| :------ | :------ |
| [/admin](http://127.0.0.1/admin) | _Film management panel_ |
| [/movies](http://127.0.0.1/movies) | _API documentation for movie search_ |
| [/auth](http://127.0.0.1/auth) | _API documentation for user authentication_ |
| [/ugc](http://127.0.0.1/ugc) | _API documentation for user-generated content_  |
| [/notifications](http://127.0.0.1/notifications) | _Notification management panel_ |
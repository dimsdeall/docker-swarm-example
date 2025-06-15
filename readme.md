ini untuk base utama infra deploy

```bash
infra-deploy/
├── swarm/
│   ├── docker-compose.yml        ← Stack utama
│   ├── .env                      ← Variabel seperti image tag, password, dsb
│   └── volumes/                  ← (Opsional) file bootstrap untuk volume
├── configs/
│   ├── nginx/
│   │   └── default.conf
│   └── ...
├── scripts/
│   ├── deploy.sh
│   └── rollback.sh
├── README.md
└── .gitignore
```
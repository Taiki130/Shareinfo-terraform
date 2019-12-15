[
  {
    "name": "shareinfo",
    "image": "375448896084.dkr.ecr.ap-northeast-1.amazonaws.com/shareinfo-image",
    "cpu": 400,
    "memory": null,
    "memoryReservation": 600,
    "essential": true,
    "command": ["bundle", "exec", "rake", "db:create", "db:migrate"],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "shareinfo-service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "migration"
      }
    },
    "environment": [
      {
        "name": "RAILS_ENV",
        "value": "production"
      },
      {
	      "name": "RACK_ENV",
	      "value": "production"
      }
    ],
    "secrets": [
      {
        "name": "DB_HOST",
        "valueFrom": "DB_HOST"
      },
      {
        "name": "DB_USER",
        "valueFrom": "DB_USER"
      },
      {
        "name": "DB_PASSWORD",
        "valueFrom": "DB_PASSWORD"
      }
    ]
  }
]

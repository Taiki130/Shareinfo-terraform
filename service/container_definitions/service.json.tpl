[
  {
    "name": "shareinfo",
    "image": "375448896084.dkr.ecr.ap-northeast-1.amazonaws.com/shareinfo-image",
    "cpu": 333,
    "memoryReservation": 600,
    "essential": true,
    "portMappings": [
      {
        "hostPort": 0,
        "protocol": "tcp",
        "containerPort": 3000
      }
    ],
    "command": ["bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0"],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "shareinfo-service",
        "awslogs-region": "ap-northeast-1",
        "awslogs-stream-prefix": "service"
      }
    },
    "environment": [
      {
        "name": "RAILS_ENV",
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

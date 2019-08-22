# Elasticsearch Playground

This project has an automated environment creation for elasticsearch and kibana, by using docker-compose.

The point is to learn the basics of elasticsearch while following a scenario, which can be found [here](./scenarios/scenario.md).

While solving the tasks, you can only use elasticsearch. Scripting outside of kibana is not allowed. (:anguished: I know, but the point is to learn to make complex queries.)

This project also contains scripts for:
- migration of indices
- seeder for starting data
- cleanup script

In order to get up & running, follow these steps:
1. `docker-compose up -d`
2. `./bootstrap.sh`
3. `Happy solving!` :smirk: :tada: :confetti_ball:


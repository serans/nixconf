%Jenkins

# Installing

- Download jar
- Set `JENKINS_HOME` env variable
- Password at `/afs/cern.ch/user/m/mhermose/opt/jenkins/home/secrets/initialAdminPassword`
- Select plugins
- Create admin user

# Pipelines

- _Pipeline_: what defines the CD
- _Node_: machine that can run Pipelines
- _Stage_: Subset of tasks performed in the pipeline (eg: "Build", "Test", etc.)
- _Step_: atomic unit of work (eg: 'run make')

Snippet generator: `/pipeline-syntax/` can be helpful to generate snippets

# Log

- New -> multibranch pipeline
- (!) jenkins just crashes -> restart jenkins seems to fix it

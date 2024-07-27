# portianer-compose

1. add new yml file to stack
2. delete stack from swarmpit
3. create a new stack from portainer using github repo

## Actions:
1. add yml file to .github/workflows folder
2. get all webhooks from portainer and add them as variable
3. run jobs based on the commit text
4. based on if statment; run job to post the webhook of the requested stack.


## Workflow to add new stack:
all these actions should be done using source control of this repo from code.vnerd.nl which has the right github ssh key to pull the yml files and trigger github actions

1. create a new yml file
2. create a new stack in portainer and activate the webhook function
3. add the webhook as environment variable to the action file in the repository
4. commit the stack name to redeploy

## Useful links:
* [github actions](https://github.com/karam-ajaj/portainer-compose/actions/)
* [enabling webhook on portainer stack](https://docs.portainer.io/user/docker/stacks/webhooks)
* [enabling webhook on portainer service](https://docs.portainer.io/user/docker/services/webhooks)
* [github create a webhook](https://docs.github.com/en/webhooks/using-webhooks/creating-webhooks)
* [portainer CI/CD](https://joshbuker.com/blog/using-portainer-and-github-for-continuous-deployment/)
* [docker webhooks](https://docs.docker.com/docker-hub/webhooks/)
* [github workflow syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idname)
* [github if statment in actions](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#jobsjob_idif)
* [github run command in actions](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#example-defining-outputs-for-a-job)
* [using conditions to control job execution](https://docs.github.com/en/actions/using-jobs/using-conditions-to-control-job-execution)
* [defining environment variables for a single workflow](https://docs.github.com/en/actions/learn-github-actions/variables#defining-environment-variables-for-a-single-workflow)
* [portainer stack deploy action](https://github.com/carlrygart/portainer-stack-deploy)
* [deploy a stack to Portainer action](https://github.com/marketplace/actions/deploy-a-stack-to-portainer)
* [portainer Service Webhook](https://github.com/marketplace/actions/portainer-service-webhook)
* [bug regarding env general variables](https://github.com/actions/runner/issues/1189)
### to be considerd 
* [github repository runners](https://github.com/karam-ajaj/portainer-compose/settings/actions/runners)
* [github repository webhooks](https://github.com/karam-ajaj/portainer-compose/settings/hooks)
# eks-workshop-sample-api-service-go

A sample Kubernetes service used in the [EKS Workshop](https://eksworkshop.com/) CI/CD Pipeline module.

The Dockerfile is a [multi-stage](https://docs.docker.com/develop/develop-images/multistage-build/) build that
compiles the Go application and then packages it in a minimal image that pulls from [scratch](https://hub.docker.com/_/scratch/).
The size of this Docker image is ~ 3.2 MiB.

The buildspec.yml file is used by the [AWS CodeBuild](https://aws.amazon.com/codebuild/) stage. In this file, it pulls down
kubectl, builds the container image, pushes the image to [Amazon ECR](https://aws.amazon.com/ecr/) and then deploys the change to the
[Amazon EKS Cluster](https://aws.amazon.com/eks/).

In the hello-k8s.yml file, you will find the Kubernetes [service](https://kubernetes.io/docs/concepts/services-networking/service/) and
[deployment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) definitions. The service is configured with
a [LoadBalancer](https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/) which prompts Kubernetes
to launch an external load balancer using an [AWS ELB](https://aws.amazon.com/elasticloadbalancing/).

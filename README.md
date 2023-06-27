# Step Function Versions and Aliases

This project is the sample that supports this [blog post](https://www.binaryheap.com/aws-step-function-versions-and-aliases/)

## Requirements

You'll need

-   Python
-   AWS SAM CLI
-   An AWS Account

## Testing

`sam deploy`

Once the infrastructure is deployed, you can send a sample execution

```
aws stepfunctions start-execution --state-machine-arn arn:aws:states:<region>:<account-id>:stateMachine:SampleAliasMachine --input "{\"type\": \"B\"}"
```

Next, change the `statemachine\alias.asl.json` to make "B" fail the State Machine.

Re-run

`sam deploy`

In a separate window, run

```
aws stepfunctions start-execution --state-machine-arn arn:aws:states:<region>:<account-id>:stateMachine:SampleAliasMachine --input "{\"type\": \"B\"}"
```

The deployment will fail and rollback to Version 1.

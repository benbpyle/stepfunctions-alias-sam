aws stepfunctions start-execution --state-machine-arn arn:aws:states:<region>:<account-id>:stateMachine:SampleAliasMachine --input "{\"type\": \"B\"}" 
aws stepfunctions start-execution --state-machine-arn arn:aws:states:<region>:<account-id>:stateMachine:SampleAliasMachine --input "{\"type\": \"A\"}" 
aws stepfunctions start-execution --state-machine-arn arn:aws:states:<region>:<account-id>:stateMachine:SampleAliasMachine --input "{\"type\": \"C\"}" 
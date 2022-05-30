# az monitor diagnostic-settings create `
#     --resource-group $RGName `
#     --name alexeids `
#     --resource $WAName `
#     --storage-account $SAName
    # [--event-hub]
    # [--event-hub-rule]
    # [--export-to-resource-specific {false, true}]
    # [--logs]
    # [--metrics]
    # [--resource-namespace]
    # [--resource-parent]
    # [--resource-type]
    # [--workspace]



az monitor diagnostic-settings create `
    --name alexeids `
    --resource $WAName `
    --storage-account $SAName `
    --logs '[
      {
        "category": "WorkflowRuntime",
        "enabled": true,
        "retentionPolicy": {
          "enabled": false,
          "days": 0
        }
      }
    ] ' `
    --metrics '[
      {
        "category": "WorkflowRuntime",
        "enabled": true,
        "retentionPolicy": {
          "enabled": false,
          "days": 0
        }
      }
    ]'
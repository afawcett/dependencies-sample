# dependencies-sampler
A sample collection of seamingly random metadata and below the type relationships as currently returned by the [Dependencies API (Pilot)]().

![coverage](https://github.com/afawcett/dependencies-sample/raw/master/coverage.png)

Where are my Custom Labels used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType ='CustomLabel'"```

|   | Custom Label |
| ---------- | ----------- |
| Apex Class | Yes |
| Apex Trigger | Yes |
| Visualforce Page | Yes |
| Lightning Component Markup | Yes |
| Lightning Component Controller | Yes |

Where are my Apex Classes used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'ApexClass'"```

|  | Apex Class |
| -------- | -------- |
| Apex Class | Yes |
| Apex Trigger | Yes |
| Visualforce Page | Yes |
| Lightning Component (controller attr) | Yes |
| Flow Action | Yes |
| Process Builder Action | Yes |
| Report Subscription Handler | No |
| Inbounder Email Handler | No |

Where are my Lightning Components used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'AuraDefinitionBundle'"```

| | Lightning Component |
| ------- | ------- |
| Lightning Component | Yes |
| Lightning Page (FlexiPage) | Yes |
| Quick Action | Yes |
| Flow | No |
| Action Override | No |

Where are my Static Resources used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'StaticResource'"```

| | Static Resource |
| ------- | ------- |
| Lightning Component | Yes |
| VisualForce Page | Yes |

Where are my VisualForce Pages used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'StaticResource'"```

| | VisualForce Page |
| ------ | -----------| 
| ApexClass (via PageReference) | Yes |
| Custom Object | Yes |
| Layout | Yes |
| Custom Button (WebLink) | Yes |
| Lightning Page (FlexiPage) | Yes |
| Custom Object Help | Yes |
| Action Overrides | No |

Where are my Custom Setting Fields used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentName = 'On'"```

| | Custom Setting Field |
| ------- | --------- | 
| Apex (via getInstance) | Yes |
| VisualForce Page (via $Setup) | Yes |
| Formula Field (via $Setup) | Yes |
| Validation Rule (via $Setup) | Yes |
| Layout | Yes |

Where are my Flows used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'Flow'"```

| | Flow |
| ------- | ------- | 
| Process Builder | Yes	|
| Apex | Yes |
| Lightning Actions | Yes |
| Lightning Pages | Yes |
| Flow | No |

Where are my Custom Fields used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'CustomFIeld'"```

| | Custom Field |
| ------ | ------ |
| Validation Rule | Yes |
| Layout | Yes |
| Formula Field | Yes |
| Visualforce Page | Yes |
| Apex Class | Yes |
| Apex Trigger | Yes |
| Email Template (Classic, Text Based) | Yes |
| Field Set | Yes |
| Flow (Query) | Yes | Yes |
| Lightning Component Markup (Attr) | Yes |
| Process Builder (Criteria) | Yes |
| URL Button (Formula) | Yes |
| Lightning Page (Related List Single) | Yes |
| Lookup Filter (Lookup and Master Detail) | Yes |
| Lightning Page (visibility criteria) | No |
| Quick Action Layout | No |
| Custom Metadata Record Lookup | No |
| Criteria Based Sharing Rule | No |
| Workflow Field Update	| No |
| Workflow Approval Process	| No |
| Reports | No |
| Profiles / Permission Sets | No |
| List View	| No |

Where are my Custom Objects used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'CustomObject'"```

| | Custom Object |
| --------- | --------- |
| Visualforce Page (via controller attr, $ObjectType) | Yes |
| Apex Class | Yes |
| Apex Trigger | Yes |
| Flow | Yes |
| Lightning Component Markup (typed attribute de-ref) | Yes |
| Process Builder | Yes |
| Quick Action | Yes |
| Lightning Page (Record Page) | Yes |
| Custom Metadata Record Lookup | No |
| Custom Tab | No |
| Reports | No |
| Report Type | No |
| Profiles / Permission Sets | No |
| Lookup Relationship Field | No |

Where are my Global Value Sets used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'GlobalValueSet'"```

| | Global Value Set | 
| -------- | ------- |
| Custom Field | No |

Where are my Field Sets used?
--------------------------------

```sfdx force:data:soql:query --usetoolingapi --query "SELECT MetadataComponentId, MetadataComponentName, MetadataComponentType, RefMetadataComponentId, RefMetadataComponentName, RefMetadataComponentType FROM MetadataComponentDependency Where RefMetadataComponentType = 'FieldSet'"```

| | Field Set |
| -------- | ------ |
| Apex Page | Yes |
| Apex Class | No |


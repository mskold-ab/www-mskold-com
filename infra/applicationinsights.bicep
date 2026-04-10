@description('Name of the Application Insights component.')
param appInsightsName string

@description('Azure region for all resources.')
param location string = resourceGroup().location

@description('Name of the Log Analytics workspace used by Application Insights.')
param logAnalyticsWorkspaceName string = '${appInsightsName}-law'

@description('Retention (days) for Log Analytics data.')
@minValue(180)
@maxValue(730)
param logAnalyticsRetentionInDays int = 30

@description('Optional tags applied to both resources.')
param tags object = {}

resource logAnalyticsWorkspace 'Microsoft.OperationalInsights/workspaces@2023-09-01' = {
  name: logAnalyticsWorkspaceName
  location: location
  tags: tags
  properties: {
    sku: {
      name: 'PerGB2018'
    }
    retentionInDays: logAnalyticsRetentionInDays
    features: {
      enableLogAccessUsingOnlyResourcePermissions: true
    }
  }
}

resource applicationInsights 'Microsoft.Insights/components@2020-02-02' = {
  name: appInsightsName
  location: location
  kind: 'web'
  tags: tags
  properties: {
    Application_Type: 'web'
    WorkspaceResourceId: logAnalyticsWorkspace.id
    DisableIpMasking: false
    publicNetworkAccessForIngestion: 'Enabled'
    publicNetworkAccessForQuery: 'Enabled'
  }
}

@description('Resource ID of the Application Insights component.')
output applicationInsightsResourceId string = applicationInsights.id

@description('Connection string for the Application Insights SDK.')
output applicationInsightsConnectionString string = applicationInsights.properties.ConnectionString

@description('Application ID used by some query and API scenarios.')
output applicationInsightsAppId string = applicationInsights.properties.AppId

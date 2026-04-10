using './applicationinsights.bicep'

param appInsightsName = 'mskold-website'
param location = 'westeurope'
param logAnalyticsRetentionInDays = 180
param tags = {
  environment: 'production'
  purpose: 'website-analytics'
  project: 'mskold-website'
}

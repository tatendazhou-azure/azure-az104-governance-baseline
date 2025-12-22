param location string = 'uksouth'

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'rg-az104-governance-bicep'
  location: location
}

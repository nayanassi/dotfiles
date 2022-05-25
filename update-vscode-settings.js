#!/usr/bin/env node
const fs = require('fs')
const process = require('process')

if (process.argv.length !== 5) {
  console.log(`Usage: ${process.argv[0]} ${process.argv[1]} <settings.json> <petName> <machineName>`)
  return
}

const settingsFile = process.argv[2]
const petName = process.argv[3]
const machineName = process.argv[4]

const json = fs
  .readFileSync(settingsFile, 'utf8')
  .replace(new RegExp(/(\/\/.*)/, 'gi'), '')
  // remove any trailing commas in the "json"
  .replace(new RegExp(/(,)(\s*)(\})/, 'g'), '$3')
  .trim()

// console.log(json)
// console.log("----------------------------------------")

let settings
const config = JSON.parse(json)
if (settingsFile.endsWith('.code-workspace')) {
  if (!config['settings']) {
    config['settings'] = {}
  }
  settings = config['settings']
} else {
  settings = config
}

let backgroundColor
if (settings['workbench.colorCustomizations'] && settings['workbench.colorCustomizations']['activityBar.background']) {
    backgroundColor = settings['workbench.colorCustomizations']['activityBar.background']
} else {
    // Assign a random background color
    backgroundColor = `#${Math.floor(Math.random() * 0xffffff).toString(16)}`
}

settings['window.title'] = `\${activeEditorShort}\${separator}\${rootName}\${separator}${petName} ${machineName}`
settings['workbench.colorCustomizations'] = {}
settings['workbench.colorCustomizations']['activityBar.background'] = backgroundColor
settings['workbench.colorCustomizations']['titleBar.activeBackground'] = backgroundColor

const replacementJson = JSON.stringify(config, null, 2)

// console.log(replacementJson)
fs.writeFileSync(settingsFile, replacementJson, 'utf8')

console.log(`vscode settings updated. Background color: ${backgroundColor}`)

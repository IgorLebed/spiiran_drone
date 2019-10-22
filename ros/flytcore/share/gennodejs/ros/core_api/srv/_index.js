
"use strict";

let IsPkgActivated = require('./IsPkgActivated.js')
let AutopilotReboot = require('./AutopilotReboot.js')
let ActuatorTesting = require('./ActuatorTesting.js')
let ModuleCalibration = require('./ModuleCalibration.js')
let EscCalibration = require('./EscCalibration.js')
let FirmwareUpgrade = require('./FirmwareUpgrade.js')
let IsAuthenticated = require('./IsAuthenticated.js')
let GetFrameType = require('./GetFrameType.js')

module.exports = {
  IsPkgActivated: IsPkgActivated,
  AutopilotReboot: AutopilotReboot,
  ActuatorTesting: ActuatorTesting,
  ModuleCalibration: ModuleCalibration,
  EscCalibration: EscCalibration,
  FirmwareUpgrade: FirmwareUpgrade,
  IsAuthenticated: IsAuthenticated,
  GetFrameType: GetFrameType,
};

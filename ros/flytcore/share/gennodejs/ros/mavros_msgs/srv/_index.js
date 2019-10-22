
"use strict";

let FileChecksum = require('./FileChecksum.js')
let WaypointPull = require('./WaypointPull.js')
let AutopilotVersion = require('./AutopilotVersion.js')
let Land = require('./Land.js')
let SetMode = require('./SetMode.js')
let LogEndReq = require('./LogEndReq.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let LogEraseReq = require('./LogEraseReq.js')
let WaypointClear = require('./WaypointClear.js')
let LogDownloadReq = require('./LogDownloadReq.js')
let ParamSet = require('./ParamSet.js')
let ParamGet = require('./ParamGet.js')
let GeofencePush = require('./GeofencePush.js')
let FileList = require('./FileList.js')
let CommandTOL = require('./CommandTOL.js')
let FileTruncate = require('./FileTruncate.js')
let CommandLong = require('./CommandLong.js')
let FileWrite = require('./FileWrite.js')
let StreamRate = require('./StreamRate.js')
let ParamPush = require('./ParamPush.js')
let WaypointPush = require('./WaypointPush.js')
let LogListReq = require('./LogListReq.js')
let FileRead = require('./FileRead.js')
let FileClose = require('./FileClose.js')
let FileRemove = require('./FileRemove.js')
let FileOpen = require('./FileOpen.js')
let FileMakeDir = require('./FileMakeDir.js')
let AutopilotAppControl = require('./AutopilotAppControl.js')
let TakeOff = require('./TakeOff.js')
let CommandInt = require('./CommandInt.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let LogCancelReq = require('./LogCancelReq.js')
let CommandBool = require('./CommandBool.js')
let GeofencePull = require('./GeofencePull.js')
let ParamPull = require('./ParamPull.js')
let CommandHome = require('./CommandHome.js')
let FileRename = require('./FileRename.js')

module.exports = {
  FileChecksum: FileChecksum,
  WaypointPull: WaypointPull,
  AutopilotVersion: AutopilotVersion,
  Land: Land,
  SetMode: SetMode,
  LogEndReq: LogEndReq,
  CommandTriggerControl: CommandTriggerControl,
  LogEraseReq: LogEraseReq,
  WaypointClear: WaypointClear,
  LogDownloadReq: LogDownloadReq,
  ParamSet: ParamSet,
  ParamGet: ParamGet,
  GeofencePush: GeofencePush,
  FileList: FileList,
  CommandTOL: CommandTOL,
  FileTruncate: FileTruncate,
  CommandLong: CommandLong,
  FileWrite: FileWrite,
  StreamRate: StreamRate,
  ParamPush: ParamPush,
  WaypointPush: WaypointPush,
  LogListReq: LogListReq,
  FileRead: FileRead,
  FileClose: FileClose,
  FileRemove: FileRemove,
  FileOpen: FileOpen,
  FileMakeDir: FileMakeDir,
  AutopilotAppControl: AutopilotAppControl,
  TakeOff: TakeOff,
  CommandInt: CommandInt,
  WaypointSetCurrent: WaypointSetCurrent,
  FileRemoveDir: FileRemoveDir,
  LogCancelReq: LogCancelReq,
  CommandBool: CommandBool,
  GeofencePull: GeofencePull,
  ParamPull: ParamPull,
  CommandHome: CommandHome,
  FileRename: FileRename,
};

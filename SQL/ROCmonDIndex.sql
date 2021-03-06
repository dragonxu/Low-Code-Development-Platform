IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_AppZip')
    DROP INDEX AppZip.IX_AppZip 

CREATE INDEX IX_AppZip ON AppZip(MasterId, DocName)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_DbKey_KeyName')
    DROP INDEX DbKey.IX_DbKey_KeyName 

CREATE  UNIQUE INDEX IX_DbKey_KeyName ON DbKey(KeyName)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IU_DbTable')
    DROP INDEX DbTable.IU_DbTable 

CREATE  UNIQUE INDEX IU_DbTable ON DbTable(SystemId, TableName)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_Label')
    DROP INDEX Label.IX_Label 

CREATE  UNIQUE INDEX IX_Label ON Label(CultureId, LabelCat, LabelKey, CompanyId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IU_MemTrans')
    DROP INDEX MemTrans.IU_MemTrans 

CREATE  UNIQUE INDEX IU_MemTrans ON MemTrans(InStr, CultureTypeId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_MenuHlp_MenuId')
    DROP INDEX MenuHlp.IX_MenuHlp_MenuId 

CREATE  UNIQUE INDEX IX_MenuHlp_MenuId ON MenuHlp(CultureId, MenuId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_MsgCenter')
    DROP INDEX MsgCenter.IX_MsgCenter 

CREATE  UNIQUE INDEX IX_MsgCenter ON MsgCenter(CultureId, MsgId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ReportCriHlp_ReportCriId')
    DROP INDEX ReportCriHlp.IX_ReportCriHlp_ReportCriId 

CREATE  UNIQUE INDEX IX_ReportCriHlp_ReportCriId ON ReportCriHlp(CultureId, ReportCriId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ReportHlp_ReportId')
    DROP INDEX ReportHlp.IX_ReportHlp_ReportId 

CREATE  UNIQUE INDEX IX_ReportHlp_ReportId ON ReportHlp(CultureId, ReportId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ReportLstCri')
    DROP INDEX ReportLstCri.IX_ReportLstCri 

CREATE  UNIQUE INDEX IX_ReportLstCri ON ReportLstCri(UsrId, ReportId, ReportCriId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ReportObjHlp_ReportObjId')
    DROP INDEX ReportObjHlp.IX_ReportObjHlp_ReportObjId 

CREATE  UNIQUE INDEX IX_ReportObjHlp_ReportObjId ON ReportObjHlp(CultureId, ReportObjId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_RptMemCri')
    DROP INDEX RptMemCri.IX_RptMemCri 

CREATE INDEX IX_RptMemCri ON RptMemCri(UsrId, ReportId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_RptTemplate')
    DROP INDEX RptTemplate.IX_RptTemplate 

CREATE INDEX IX_RptTemplate ON RptTemplate(MasterId, DocName)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ScreenCriHlp_ScreenCriId')
    DROP INDEX ScreenCriHlp.IX_ScreenCriHlp_ScreenCriId 

CREATE  UNIQUE INDEX IX_ScreenCriHlp_ScreenCriId ON ScreenCriHlp(CultureId, ScreenCriId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ScreenFilter_Id_Name')
    DROP INDEX ScreenFilter.IX_ScreenFilter_Id_Name 

CREATE  UNIQUE INDEX IX_ScreenFilter_Id_Name ON ScreenFilter(ScreenId, ScreenFilterName)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ScreenFilterHlp_FilterId')
    DROP INDEX ScreenFilterHlp.IX_ScreenFilterHlp_FilterId 

CREATE  UNIQUE INDEX IX_ScreenFilterHlp_FilterId ON ScreenFilterHlp(CultureId, ScreenFilterId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ScreenLstCri')
    DROP INDEX ScreenLstCri.IX_ScreenLstCri 

CREATE  UNIQUE INDEX IX_ScreenLstCri ON ScreenLstCri(UsrId, ScreenId, ScreenCriId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ScreenLstInf')
    DROP INDEX ScreenLstInf.IX_ScreenLstInf 

CREATE INDEX IX_ScreenLstInf ON ScreenLstInf(UsrId, ScreenId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ScreenTabHlp_ScreenTabId')
    DROP INDEX ScreenTabHlp.IX_ScreenTabHlp_ScreenTabId 

CREATE  UNIQUE INDEX IX_ScreenTabHlp_ScreenTabId ON ScreenTabHlp(CultureId, ScreenTabId)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_ServerRule')
    DROP INDEX ServerRule.IX_ServerRule 

CREATE INDEX IX_ServerRule ON ServerRule(ScreenId, RuleOrder)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_Template_TmplDefault')
    DROP INDEX Template.IX_Template_TmplDefault 

CREATE  UNIQUE INDEX IX_Template_TmplDefault ON Template(TmplDefault DESC, TemplateName)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_Usage_UsrId')
    DROP INDEX Usage.IX_Usage_UsrId 

CREATE INDEX IX_Usage_UsrId ON Usage(UsrId, EntityTitle)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_UtReport_ProgramName')
    DROP INDEX UtReport.IX_UtReport_ProgramName 

CREATE  UNIQUE INDEX IX_UtReport_ProgramName ON UtReport(ProgramName)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IU_Wizard')
    DROP INDEX Wizard.IU_Wizard 

CREATE  UNIQUE INDEX IU_Wizard ON Wizard(ProgramName)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_WizardObj_WizardId')
    DROP INDEX WizardObj.IX_WizardObj_WizardId 

CREATE INDEX IX_WizardObj_WizardId ON WizardObj(WizardId, TabIndex)
GO

IF EXISTS (SELECT name FROM sysindexes WHERE name = 'IX_WizardRule_WizardId')
    DROP INDEX WizardRule.IX_WizardRule_WizardId 

CREATE  UNIQUE INDEX IX_WizardRule_WizardId ON WizardRule(WizardId, RuleOrder)
GO
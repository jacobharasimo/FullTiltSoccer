/****** Object:  Database [FullTiltSoccer]    Script Date: 10/18/2012 22:25:06 ******/
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbo].[sp_fulltext_database] @action = 'enable'
end
GO
/****** Object:  ForeignKey [FK_Camp_User]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Camp_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
ALTER TABLE [dbo].[Camp] DROP CONSTRAINT [FK_Camp_User]
GO
/****** Object:  ForeignKey [FK_CoachesCorner_User]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CoachesCorner_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
ALTER TABLE [dbo].[CoachesCorner] DROP CONSTRAINT [FK_CoachesCorner_User]
GO
/****** Object:  ForeignKey [FK_Raiting_Tournament]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_Tournament]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting] DROP CONSTRAINT [FK_Raiting_Tournament]
GO
/****** Object:  ForeignKey [FK_Raiting_User]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting] DROP CONSTRAINT [FK_Raiting_User]
GO
/****** Object:  ForeignKey [FK_Region_Country]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [FK_Region_Country]
GO
/****** Object:  ForeignKey [FK_Tournament_Region]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament] DROP CONSTRAINT [FK_Tournament_Region]
GO
/****** Object:  ForeignKey [FK_Tournament_User]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament] DROP CONSTRAINT [FK_Tournament_User]
GO
/****** Object:  StoredProcedure [dbo].[GetAverageTournamentRating]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAverageTournamentRating]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAverageTournamentRating]
GO
/****** Object:  StoredProcedure [dbo].[GetTournamentRaitingFromUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTournamentRaitingFromUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetTournamentRaitingFromUser]
GO
/****** Object:  StoredProcedure [dbo].[GetAllTournamentPostsByUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllTournamentPostsByUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllTournamentPostsByUser]
GO
/****** Object:  StoredProcedure [dbo].[GetAllTournamentsByRegion]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllTournamentsByRegion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllTournamentsByRegion]
GO
/****** Object:  Table [dbo].[Raiting]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Raiting]') AND type in (N'U'))
DROP TABLE [dbo].[Raiting]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCampsBeforeDate]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCampsBeforeDate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCampsBeforeDate]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCampsPostsByUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCampsPostsByUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCampsPostsByUser]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerByRegion]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerByRegion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCoachesCornerByRegion]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerPostsByUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerPostsByUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCoachesCornerPostsByUser]
GO
/****** Object:  StoredProcedure [dbo].[GetAllRegionsByCountry]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllRegionsByCountry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllRegionsByCountry]
GO
/****** Object:  StoredProcedure [dbo].[GetFellowRegionsByRegion]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetFellowRegionsByRegion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetFellowRegionsByRegion]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tournament]') AND type in (N'U'))
DROP TABLE [dbo].[Tournament]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCountries]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCountries]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCountries]
GO
/****** Object:  StoredProcedure [dbo].[GetCmsData]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCmsData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCmsData]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
DROP TABLE [dbo].[Region]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Object:  Table [dbo].[Camp]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Camp]') AND type in (N'U'))
DROP TABLE [dbo].[Camp]
GO
/****** Object:  Table [dbo].[CoachesCorner]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CoachesCorner]') AND type in (N'U'))
DROP TABLE [dbo].[CoachesCorner]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[CmsData]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CmsData]') AND type in (N'U'))
DROP TABLE [dbo].[CmsData]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
DROP TABLE [dbo].[User]
GO
/****** Object:  Default [DF_Camp_CampID]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Camp_CampID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Camp_CampID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Camp] DROP CONSTRAINT [DF_Camp_CampID]
END


End
GO
/****** Object:  Default [DF_CoachesCorner_CoachesCornerID]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CoachesCorner_CoachesCornerID]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CoachesCorner_CoachesCornerID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CoachesCorner] DROP CONSTRAINT [DF_CoachesCorner_CoachesCornerID]
END


End
GO
/****** Object:  Default [DF_Country_CountryID]    Script Date: 10/18/2012 22:25:05 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Country_CountryID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Country_CountryID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF_Country_CountryID]
END


End
GO
/****** Object:  Default [DF_Region_RegionID]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Region_RegionID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Region_RegionID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [DF_Region_RegionID]
END


End
GO
/****** Object:  Default [DF_Tournament_TournamentID]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tournament_TournamentID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Tournament_TournamentID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tournament] DROP CONSTRAINT [DF_Tournament_TournamentID]
END


End
GO
/****** Object:  Default [DF_User_UserID]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_User_UserID]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_User_UserID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_User_UserID]
END


End
GO
/****** Object:  FullTextCatalog [fulltiltsoccer]    Script Date: 10/18/2012 22:25:06 ******/
IF EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'fulltiltsoccer')
EXEC dbo.sp_fulltext_catalog @ftcat=N'fulltiltsoccer', @action=N'drop'
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
DROP SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
DROP SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Membership_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Personalization_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Profile_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_BasicAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_Roles_ReportingAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
DROP ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'aspnet_WebEvent_FullAccess'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
DROP ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [fulltiltsoccer]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'fulltiltsoccer'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'fulltiltsoccer' AND type = 'R')
DROP ROLE [fulltiltsoccer]
GO
/****** Object:  Role [gd_execprocs]    Script Date: 10/18/2012 22:25:06 ******/
DECLARE @RoleName sysname
set @RoleName = N'gd_execprocs'
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
Begin
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id 
		from sys.database_role_members 
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName

	WHILE @@FETCH_STATUS = 0
	BEGIN

		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName

		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
End
GO
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs' AND type = 'R')
DROP ROLE [gd_execprocs]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [fulltiltsoccer]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'fulltiltsoccer')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'fulltiltsoccer' AND type = 'R')
CREATE ROLE [fulltiltsoccer] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [gd_execprocs]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs' AND type = 'R')
CREATE ROLE [gd_execprocs] AUTHORIZATION [dbo]

END
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'
GO
/****** Object:  FullTextCatalog [fulltiltsoccer]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'fulltiltsoccer')
CREATE FULLTEXT CATALOG [fulltiltsoccer]WITH ACCENT_SENSITIVITY = ON
AS DEFAULT
AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UserID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Aspnet_ID] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[User] ([UserID], [Aspnet_ID]) VALUES (N'874e992b-bca0-4608-8ef1-9949337f6e71', 1)
INSERT [dbo].[User] ([UserID], [Aspnet_ID]) VALUES (N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', 2)
INSERT [dbo].[User] ([UserID], [Aspnet_ID]) VALUES (N'8c060b4a-da4d-493e-9660-f312fc228f46', 3)
/****** Object:  Table [dbo].[CmsData]    Script Date: 10/18/2012 22:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CmsData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CmsData](
	[CmsID] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Data] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_CmsData] PRIMARY KEY CLUSTERED 
(
	[CmsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CmsData] ([CmsID], [Data]) VALUES (N'CampsAcademy', N'<h1>Camps & Academies</h1><p>E-mail us at camps@fulltiltsoccer.com to find out how to get your Academy or camp listed here!</p>')
INSERT [dbo].[CmsData] ([CmsID], [Data]) VALUES (N'CoachesCornerWelcome', N'                <h1>Coaches Corner</h1>                 <p>You have made it to the Coaches Corner. This area is for coaches and players to find each other. Coaches can place listings for team tryouts or for just looking for a particular player to fill in a gap in their team. We have things colour coded to make it easy for you to search through the listings and find appropriate age groups. Enjoy. </p>')
INSERT [dbo].[CmsData] ([CmsID], [Data]) VALUES (N'ContactUsWelcome', N'<h1>CONTACT US</h1>             <p>Full Tilt Soccer is a new service offering free and paid listings to all Soccer Associations and Tournament organizors. We are still growing and evolving but at this time we ask that you email us at <a href="mailto:info@fulltiltsoccer.com">info@fulltiltsoccer.com</a> to receive info about how to have your Tournament posted or select one of our other contacts for more info about the other features on this site.</p>')
INSERT [dbo].[CmsData] ([CmsID], [Data]) VALUES (N'HomePageWelcome', N'            <h1>WELCOME...</h1>             <p><a href="http://fulltiltsoccer.com" style="color:#E0C8BF;">Fulltiltsoccer.com</a> You are looking at the newest ( and soon to be the best) tournament listing site on the web.Not enough... we are the only tournament site on line with a dedicated tournament forum to allow coaches, parents or players to post scores and chat amoungst themselves before and during the tournaments they attend.<p>             <p>While our developers continue to work at putting finishing touches on various parts of the site we have been accepting and posting youth Soccer Tournament listings. Our Forum is now active and accepting registrations. Need more info, go to our forum and read posts with details about the site and forum, have a look! </p>             <p>We are now on Twitter and have a facebook page, and are working hard to get the word out to all the tournament directors and coaches we can find. We want to make this site a great Soccer resource for you. (Don’t forget to bookmark this page so you can come back often).</p>             <p>-Enjoy</p> ')
/****** Object:  Table [dbo].[Country]    Script Date: 10/18/2012 22:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[CountryID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[CountryName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2', N'USA')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (N'c0d00b24-57dd-4391-a6dc-50389b2dd071', N'UK/Ireland')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c', N'Canada')
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  '
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  '
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END' 
END
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  '
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
EXEC dbo.sp_executesql @statement = N'
  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  '
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'''', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_UsersInRoles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 ),
        LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )
    WHERE @UserId = UserId

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_MembershipUsers'') AND (type = ''V''))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N''aspnet_Membership''
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Roles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N''aspnet_Roles''
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_Profiles'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N''aspnet_Profile''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''vw_aspnet_WebPartState_User'') AND (type = ''V''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N''aspnet_PersonalizationPerUser''
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N''aspnet_WebEvent_LogEvent'') AND (type = ''P''))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N''aspnet_WebEvent_Events''
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N''aspnet_Users''
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N''aspnet_Applications''
            RETURN
        END
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + '' '' + @action + '' on '' + @object + '' TO ['' + @grantee + '']''
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = ''EXEC sp_droprolemember '' + '''''''' + @name + '''''', '''''' + USER_NAME(@user_id) + ''''''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, ''17540101'', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END' 
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END' 
END
GO
/****** Object:  Table [dbo].[CoachesCorner]    Script Date: 10/18/2012 22:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CoachesCorner]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CoachesCorner](
	[CoachesCornerID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[RegionID] [uniqueidentifier] NOT NULL,
	[AgeGroup] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Gender] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[TeamName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ClubName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[Description] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DatePosted] [date] NOT NULL,
	[Contactname] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PhoneNumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Website] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExpirationDate] [date] NOT NULL,
	[City] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK_CoachesCorner] PRIMARY KEY CLUSTERED 
(
	[CoachesCornerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'fc5f5add-ca8e-4d27-9efb-1784e9121907', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'16', N'Boys', N'Comets', N'SUper stars FC', N'The Comets are looking for elite level players for the winter indoor season.', CAST(0x2F350B00 AS Date), N'Dave', N'123 456 7890', N'Dave@email.com', N'Comets.com', CAST(0xB7350B00 AS Date), N'Calgary')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'1bb395de-9546-463d-9f4f-3d3151232e69', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'16', N'Boys', N'Comets', N'Your FC', N'The 1996 Boys team is currently looking for hard working and committed players for all positions. Playing outdoor season in the CSL. Full winter traning progam avilable and to schedule a tryout please contact', CAST(0x3C350B00 AS Date), N'Coach XYZ', N'123 456 7890', N'Coach XYZ@ abc.test', N'None', CAST(0x48350B00 AS Date), N'Toronto')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'8a551e0d-6dd0-4c39-86f9-55e109be5399', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'6c46d8ee-914e-4f93-9b33-5be29445211e', N'16', N'Boys', N'Your Team', N'Your Club Name', N'Team description from a coach', CAST(0x35350B00 AS Date), N'any coach', N'555 555 5555', N'Someone@123.net', N'Yourclub.com', CAST(0xA9350B00 AS Date), N'Nelson')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'e0514f9a-a7db-497b-b958-683a19e24e1e', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'11', N'Boys', N'Strikers', N'SCYSC', N'Mr. Jones would put details about the team and what he is looking for here.', CAST(0x5E350B00 AS Date), N'Mr.Jones', N'555 1234', N'Jones@HOtmail.com', N'SCYSC.com', CAST(0x7A350B00 AS Date), N'Toronto')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'f0b5541d-a412-4cc7-8661-6f1c81d6458c', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'7770c81f-5afc-4a75-87dd-7265e1c24aa0', N'16', N'Girls', N'Lady Bugs', N'Your club FC', N'We are putting together a new competitive team for girls entering U10 next season. The Lady Bugs will be working on development for the next couple of years while we play in a league and tournaments. For more info call coach Sally', CAST(0xF9340B00 AS Date), N'Sally', N'123 456 7890', N'Sally@hotmail.com', N'yourclub website here', CAST(0x1B350B00 AS Date), N'Winnipeg')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'd4f2262f-0ac7-421b-a3b9-6feabca569ed', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'7770c81f-5afc-4a75-87dd-7265e1c24aa0', N'16', N'Girls', N'Super Stars', N'Main club', N'Looking for great players for a great team', CAST(0x3C350B00 AS Date), N'Super coach', N'1234567890', N'Supercoach@email.com', N'abc.com', CAST(0x48350B00 AS Date), N'Winnipeg')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'a5a30311-2ef9-4bc8-a9f8-784118fecbb7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'10', N'Girls', N'Willows', N'ABC Soccer', N'The Willows are starting a new team for U10 girls. Contact Mrs. Smith for more details.', CAST(0x5E350B00 AS Date), N'Mrs. Smith', N'555 5555', N'Smith@HOtmail.com', N'ABC.com', CAST(0xB7350B00 AS Date), N'Toronto')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'bd868526-bdfe-45b9-995d-7ab3149575e8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'9ef25c60-1e82-4a2f-abba-2c78aefb1a79', N'13', N'Boys', N'Buffalo Broncos', N'Buffalo Youth SC', N'Looking for players born 1999. Tryouts held each weekend at "The Fields" Parkfor more info call coach X.', CAST(0x65350B00 AS Date), N'Mr. X', N'555 123 4567', N'sc@sc.com', N'SC.com', CAST(0xB7350B00 AS Date), N'New York')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'9f39457a-7673-45a3-a26c-82aada83d3b1', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'14', N'Boys', N'My team', N'My club', N'Lots to say here or is there?', CAST(0xE4340B00 AS Date), N'Me', N'123 456 7890', N'Me@me.mail', N'My,com', CAST(0x49340B00 AS Date), N'Toronto')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'635615c8-534c-4ef8-a645-9277cd708d73', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'12', N'Girls', N'Blizzard', N'Astro youth Soccer club', N'Astro youth soccer needs U12 girls for their Blizzard team. Playing in the first division of the local league.', CAST(0x5E350B00 AS Date), N'Jack', N'555 4321', N'Jack@email.com', N'Astro.com', CAST(0x7A350B00 AS Date), N'Toronto')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'd5a2df30-280a-4643-9e65-e7de4001d017', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'4d700469-98a3-484e-b1a0-340aa2a2f26d', N'15', N'Girls', N'Lady Bugs', N'Your club FC', N'We are putting together a new competitive team for girls entering U10 next season. The Lady Bugs will be working on development for the next couple of years while we play in a league and tournaments. For more info call coach Sally', CAST(0xF9340B00 AS Date), N'Sally', N'123 456 7890', N'Sally@hotmail.com', N'yourclub website here', CAST(0xB7350B00 AS Date), N'Fredericton')
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'68527fcc-860a-4cc8-ab5b-f9f6fbc71d31', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'14', N'Boys', N'Your TEAM', N'Your club name goes here', N'This space can be used to describe your team or what you are looking for in a player. Very simple, basic info and it doesn''t cost you anything! Just send the info to coaches@fulltiltsoccer.com and we get your posting listed. (soon this we be automated for you)', CAST(0xDB350B00 AS Date), N'Coaches Name', N'Phone #', N'Your email', N'Club Web site', CAST(0x74360B00 AS Date), N'Your city')
/****** Object:  Table [dbo].[Camp]    Script Date: 10/18/2012 22:25:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Camp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Camp](
	[CampID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserID] [uniqueidentifier] NULL,
	[ImageSize] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ExpirationDate] [date] NULL,
	[URL] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ImageSource] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Camp] PRIMARY KEY CLUSTERED 
(
	[CampID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Camp] ([CampID], [UserID], [ImageSize], [ExpirationDate], [URL], [ImageSource]) VALUES (N'f0510670-214f-42ac-80f9-43786aa49639', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Medium', CAST(0xFA350B00 AS Date), N'http://www.dpsoccer.com', N'/uploads/Dps Camp 1f6d7b196903a40f089037e269ce1845c.JPG')
INSERT [dbo].[Camp] ([CampID], [UserID], [ImageSize], [ExpirationDate], [URL], [ImageSource]) VALUES (N'8873739a-dd3c-4613-9f9c-704a6a092207', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Medium', CAST(0xFA350B00 AS Date), N'http://www.dpsoccer.com', N'/uploads/Dps Camp 1f6d7b196903a40f089037e269ce1845c.JPG')
INSERT [dbo].[Camp] ([CampID], [UserID], [ImageSize], [ExpirationDate], [URL], [ImageSource]) VALUES (N'b1b01935-1a86-4115-9ee5-8351035f7f32', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Medium', CAST(0x56360B00 AS Date), N'http://iasocceracademy.com', N'/uploads/IASA soccer28dce2613c5e4d98b662e855109e92e0.JPG')
INSERT [dbo].[Camp] ([CampID], [UserID], [ImageSize], [ExpirationDate], [URL], [ImageSource]) VALUES (N'6386bb7f-488b-4161-87aa-d5549566afb7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Large', CAST(0x19360B00 AS Date), N'http://www.dpsoccer.com/academy.html', N'/uploads/Dps Camp 1f6d7b196903a40f089037e269ce1845c.JPG')
INSERT [dbo].[Camp] ([CampID], [UserID], [ImageSize], [ExpirationDate], [URL], [ImageSource]) VALUES (N'3031f250-c0ef-4f3b-a684-d777a5b2201e', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Medium', CAST(0x19360B00 AS Date), N'www.southwestsocceracademy.com', N'/uploads/AC Milan camp9841a7c3ff9947f481917ff9b8d91932.JPG')
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N'','', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END' 
END
GO
/****** Object:  Table [dbo].[Region]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Region](
	[RegionID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[RegionName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Image] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CountryID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'33b0e51f-7207-4a26-9874-0204aac129ea', N'Michigan', N'Images/Region/Flag_of_Michigan.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'c144dc22-17d9-4f63-a470-10be31bc67fc', N'Minnesota', N'Images/Region/Flag_of_Minnesota.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'44243e76-6670-496e-a1d1-19c1c76024ea', N'Mississippi', N'Images/Region/Flag_of_Mississippi.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'e320f806-dee6-413e-acbb-1bcf18bf8757', N'Missouri', N'Images/Region/Flag_of_Missouri.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'887b356c-bbcd-40a4-990f-1d17382b91a7', N'Montana', N'Images/Region/Flag_of_Montana.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'd1d55650-ce32-4657-9ed4-1e9039e90af4', N'Nebraska', N'Images/Region/Flag_of_Nebraska.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'01d16ff4-cd74-49b3-ae70-264c520ae84c', N'Nevada', N'Images/Region/Flag_of_Nevada.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'271a35af-3814-4553-b267-26d7f76f6d60', N'New Hampshire', N'Images/Region/Flag_of_New_Hampshire.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'3a312cbf-8bd4-44fc-9aed-289c0f3af896', N'New Jersey', N'Images/Region/Flag_of_New_Jersey.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'f8311c83-c983-41eb-af7e-2a76c13c8b61', N'New Mexico', N'Images/Region/Flag_of_New_Mexico.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'9ef25c60-1e82-4a2f-abba-2c78aefb1a79', N'New York', N'Images/Region/Flag_of_New_York.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'de71e466-b654-4c85-a823-31376db552ae', N'North Carolina', N'Images/Region/Flag_of_North_Carolina.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'4d700469-98a3-484e-b1a0-340aa2a2f26d', N'New Brunswick', N'Images/Region/New_Brunswick.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'England', N'Images/Region/England.jpg', N'c0d00b24-57dd-4391-a6dc-50389b2dd071')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'1d6ad0cf-5343-46d7-805d-40b099fb85bf', N'North Dakota', N'Images/Region/Flag_of_North_Dakota.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'e6fc4973-1d12-4bb9-9e00-416ea8dba629', N'Ireland', N'Images/Region/Ireland.jpg', N'c0d00b24-57dd-4391-a6dc-50389b2dd071')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'0d51f721-5093-40f0-ac93-45fff0765a5b', N'Ohio', N'Images/Region/Flag_of_Ohio.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'f7af9b3b-5d2e-4cbd-9830-47c68b378614', N'Newfoundland and Labrador', N'Images/Region/Newfoundland_and_Labrador.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'f1c48f4e-6d30-4b3f-b552-4c34b32bf0f9', N'Oklahoma', N'Images/Region/Flag_of_Oklahoma.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'7765dd00-008b-4c86-8f0c-4c72d1233785', N'Oregon', N'Images/Region/Flag_of_Oregon.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'4c82b197-2ff8-4864-9fad-532760936a92', N'Northwest Territories', N'Images/Region/Northwest_Territories.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'51310c95-84d8-48f3-9575-5447b2497ef8', N'Alberta', N'Images/Region/Alberta.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'Pennsylvania', N'Images/Region/Flag_of_Pennsylvania.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'dbc3bd58-2164-4a2b-a037-5890a6d6d065', N'Rhode Island', N'Images/Region/Flag_of_Rhode_Island.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'a53e93cb-b92f-4621-a4f8-58e1b12196ca', N'South Carolina', N'Images/Region/Flag_of_South_Carolina.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'6c46d8ee-914e-4f93-9b33-5be29445211e', N'British Columbia', N'Images/Region/British_Columbia.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'bdb37f90-6682-4df3-9fa4-5d5220ec630b', N'South Dakota', N'Images/Region/Flag_of_South_Dakota.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'b3add56f-24fa-4d35-8393-5e12882e922d', N'Tennessee', N'Images/Region/Flag_of_Tennessee.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'3453d7b0-1303-4563-ab55-632cd5396fa2', N'Texas', N'Images/Region/Flag_of_Texas.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'e6f1439d-0fd9-428c-bcc5-64e411697587', N'Utah', N'Images/Region/Flag_of_Utah.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'c7e7c47e-6f1c-4e9f-b63a-68c93cd61d0a', N'Vermont', N'Images/Region/Flag_of_Vermont.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'bbccdd83-4613-4bfa-a60d-68f92e1131c1', N'Virginia', N'Images/Region/Flag_of_Virginia.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'0d347b49-3719-4c23-92d2-6b0565acc729', N'Washington', N'Images/Region/Flag_of_Washington.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'81e99bac-693d-44f0-8f46-6e1b45627180', N'Nova Scotia', N'Images/Region/Nova_Scotia.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'be584279-d632-44d4-9e3d-703b8086f6a0', N'West Virginia', N'Images/Region/Flag_of_West_Virginia.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'7de1bad4-a488-45b7-a3f5-711c4e519e35', N'Wisconsin', N'Images/Region/Flag_of_Wisconsin.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'7770c81f-5afc-4a75-87dd-7265e1c24aa0', N'Manitoba', N'Images/Region/Manitoba.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'f0132463-1dfe-493d-8aef-7fdb81335dfa', N'Wyoming', N'Images/Region/Flag_of_Wyoming.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'c5c49d20-d687-4e1f-bfe0-81efdc3188a6', N'Massachusetts', N'Images/Region/Flag_of_Massachusetts.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'50483cae-8d57-44a4-8d34-8486d1e10d51', N'Scotland', N'Images/Region/Scotland.jpg', N'c0d00b24-57dd-4391-a6dc-50389b2dd071')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'93883549-75d3-422a-875b-8658850da03a', N'Maryland', N'Images/Region/Flag_of_Maryland.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'f46814e4-b085-4362-8035-89bec7a98e5a', N'Maine', N'Images/Region/Flag_of_Maine.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'42e730cc-8ada-498a-b057-8a0bea5615a7', N'Louisiana', N'Images/Region/Flag_of_Louisiana.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'5475b7f8-0f32-4605-9bda-8b069b836f26', N'Saskatchewan', N'Images/Region/Saskatchewan.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'c67aaca1-4f7c-4ffc-966c-93fd4b7ed2ae', N'Kentucky', N'Images/Region/Flag_of_Kentucky.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'e8c92fc8-2c2e-4c9f-b7f8-992c475b7e7a', N'Nunavut', N'Images/Region/Nunavut.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'1d8d8eca-4ac8-48fb-956d-a17858468dfc', N'Kansas', N'Images/Region/Flag_of_Kansas.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'32975301-abe2-4874-a36d-a1ba38625ebb', N'Ontario', N'Images/Region/Ontario.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'2850de9f-9c34-482a-aa03-a8d5ecc96226', N'Prince Edward Island', N'Images/Region/Prince_Edward_Island.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'68bd0014-34ee-4280-ba5f-ac0e86c36b07', N'Iowa', N'Images/Region/Flag_of_Iowa.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'241204c1-864a-4bb0-b434-ac9e339eb602', N'Indiana', N'Images/Region/Flag_of_Indiana.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'cfe10f27-17c5-4632-b6c9-ada0cb5b9c51', N'Illinois', N'Images/Region/Flag_of_Illinois.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'd10fdc04-1fba-4c44-96f9-b76f06c1871f', N'Idaho', N'Images/Region/Flag_of_Idaho.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'd9a78296-e63b-4f87-ba6b-b862d2875cd0', N'Hawaii', N'Images/Region/Flag_of_Hawaii.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'ef5a50d9-51cc-44bc-893b-b929a560cdc2', N'Georgia', N'Images/Region/Flag_of_Georgia.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'7ec6c323-f01a-4980-8011-c66a6a47d9d1', N'Quebec', N'Images/Region/Quebec.jpg', N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'7656d6b3-6fc0-4d01-bef8-c9ada30dc729', N'Wales', N'Images/Region/Wales.jpg', N'c0d00b24-57dd-4391-a6dc-50389b2dd071')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'd290407e-882e-4509-a29b-d1b957fdfaa8', N'Florida', N'Images/Region/Flag_of_Florida.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'4c5f3f98-f76b-4a74-a078-d22e49cfd9ab', N'Delaware', N'Images/Region/Flag_of_Delaware.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'15b3e177-f8e0-44c3-af59-da88efbbeda1', N'Connecticut', N'Images/Region/Flag_of_Connecticut.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'406db0e5-de60-4cc8-abc8-e05dbc5d15e1', N'Colorado', N'Images/Region/Flag_of_Colorado.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'dc53bca7-f069-483b-b09e-e355a4377bfa', N'California', N'Images/Region/Flag_of_California.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'd152e8b5-dd97-41a3-9ebb-ec546e39fcc0', N'Arkansas', N'Images/Region/Flag_of_Arkansas.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'149bf3e8-a370-4102-8821-f791c5b38ca9', N'Arizona', N'Images/Region/Flag_of_Arizona.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'8e3ce80f-2144-488c-a3eb-f8fc3a0df838', N'Alaska', N'Images/Region/Flag_of_Alaska.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
INSERT [dbo].[Region] ([RegionID], [RegionName], [Image], [CountryID]) VALUES (N'998ae199-50d3-4bda-ac95-f978b09a7c45', N'Alabama', N'Images/Region/Flag_of_Alabama.jpg', N'9dbf8eeb-097c-4bf3-96d9-419912ba5ea2')
/****** Object:  StoredProcedure [dbo].[GetCmsData]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCmsData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetCmsData]
	@id varchar(50)
AS
	SELECT        Data
FROM            CmsData
WHERE        (CmsID = @id)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCountries]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCountries]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllCountries]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
AS
	SELECT        CountryName
FROM            Country
	RETURN
' 
END
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tournament]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tournament](
	[TournamentID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[RegionID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[TournamentName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TournamentLocation] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TournamentDate] [date] NULL,
	[TournamentTime] [time](7) NULL,
	[TournamentHostingClub] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TournamentAgeGroup] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TournamentTeamFee] [decimal](18, 2) NULL,
	[TournamentRegistrationDeadline] [date] NULL,
	[ContactName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactNumber] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactEmail] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsPaidListing] [bit] NULL,
	[TournamentGender] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TournamentClubSite] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TournamentFormat] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TournamentImageUrl] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TournamentDescription] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Tournament] PRIMARY KEY CLUSTERED 
(
	[TournamentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'888cf93a-3820-45e9-a8d9-00d582f44455', N'2850de9f-9c34-482a-aa03-a8d5ecc96226', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Central Queens Clippers Soccer Club Tournament', N'Hunter River', CAST(0xFD350B00 AS Date), NULL, N'Central Queens Clippers Soccer Club', N'U10, 12, 14, 16', CAST(325.00 AS Decimal(18, 2)), CAST(0xF6350B00 AS Date), N'Director', NULL, N'tournament2012@centralqueenssoccer.pe.ca', 0, N'Boys & Girls', N'http://cqsa.goalline.ca', NULL, N'/uploads/Umbro beach86ca2ed4564a4fe29078a5f6c5774891.JPG', NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'a5d76759-e932-4b7d-acd9-01a20e371c0d', N'6c46d8ee-914e-4f93-9b33-5be29445211e', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Peach City Classic 2012', N'Penticton', CAST(0x0B360B00 AS Date), NULL, N'PINNACLES FC', N'U11-U18', CAST(400.00 AS Decimal(18, 2)), CAST(0xF6350B00 AS Date), N'Cassie Erb', N'(250)-462-1205', N'cassiesoysa@gmail.com', 0, N'Boys & Girls', N'www.soysa.net', NULL, N'/uploads/Umbro beach86ca2ed4564a4fe29078a5f6c5774891.JPG', NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'97bd25ab-2e40-4e22-a54e-01c7303eccc9', N'dc53bca7-f069-483b-b09e-e355a4377bfa', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'San Francisco Cup', N'San Francisco', CAST(0xB8350B00 AS Date), NULL, N'none', N'U11 - U19', CAST(600.00 AS Decimal(18, 2)), CAST(0xAB350B00 AS Date), N'Contact', N'415-963-3695', N'EventDirector@sfcup.com', 0, N'Boys & Girls', N'www.sfcup.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'aa13c283-c137-40b2-be73-02c76869ff43', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Brampton Rovers Festival of football', N'Chesterfield', CAST(0xE9350B00 AS Date), NULL, N'Brampton Rovers.', N'U7-U16', CAST(25.00 AS Decimal(18, 2)), CAST(0xDA350B00 AS Date), N'Mark', N'01246 297752', N'marklgreen67@hotmail.com', 0, N'Boys & Girls', N'http://clubwebsitebramptonrovers', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'54a45509-9fc3-40d7-88a2-02f941a91d76', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Middleton Ranagers Tournament', N'Darlington', CAST(0xE9350B00 AS Date), NULL, N'Middleton Rangers', N'U7-U15', CAST(30.00 AS Decimal(18, 2)), CAST(0xDA350B00 AS Date), N'David', N'01246 297752', N'davidtomo@hotmail.com', 0, N'Boys & Girls', N'http://www.middletonrangers.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'7108dff8-1e35-4631-b9f6-03b5df4685b3', N'241204c1-864a-4bb0-b434-ac9e339eb602', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'FT Wayne Fever "Soccer Cup"', N'Ft. Wayne', CAST(0x13360B00 AS Date), NULL, N'Ft. Wayne Fever Academy', N'U9 - U18', CAST(440.00 AS Decimal(18, 2)), CAST(0x00360B00 AS Date), N'Aaron Tulloch', N'260-602-3141', N'aaront@plexsports.com', 0, N'Boys & Girls', N'www.fwfever.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'84b7d0fd-a181-402f-900f-04bad1ca40f7', N'd290407e-882e-4509-a29b-d1b957fdfaa8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'2012 Exclusive Cup', N'Greater Sarasota/Lakewood Ranch Area', CAST(0xB8350B00 AS Date), NULL, N'None', N'U9 - U19', CAST(350.00 AS Decimal(18, 2)), CAST(0xAC350B00 AS Date), N'Greg Patterson', N'(678) 549-5888', N'greg@exclusivesports.com', 0, N'Boys & Girls', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'43d84d3a-bf0e-4ada-99fd-06265806cd8f', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Henderson Memorial Tournament', N'London', CAST(0x19360B00 AS Date), NULL, N'London United Soccer Club', N'U11 - U18', CAST(400.00 AS Decimal(18, 2)), CAST(0xF7350B00 AS Date), N'Elaine Clemens', NULL, N'lutdhenderson@gmail.com', 0, N'Boys & Girls', N'www.hendersoncup.goalline.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'8226ffaf-5986-4720-b839-0e1535960cb6', N'241204c1-864a-4bb0-b434-ac9e339eb602', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'A.L. Smith Invitational', N'Indianapolis', CAST(0x35360B00 AS Date), NULL, N'St Francis Soccer Club', N'U9 - U14', CAST(450.00 AS Decimal(18, 2)), CAST(0x17360B00 AS Date), N'Steve Campbell', N'317-557-4564', N'steve@alsmithpc.com', 0, N'Boys & Girls', N'www.stfrancissoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd311d3f6-5471-40ba-adc8-1082eba69e9a', N'0d347b49-3719-4c23-92d2-6b0565acc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Dungeness Cup', N'Sequim', CAST(0xFD350B00 AS Date), NULL, N'Sequim Junior Soccer', N'U11 - U16', CAST(400.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Ken Garling', NULL, N'kengar1@hotmail.com', 0, N'Boys & Girls', N'http://www.dungenesscup.com/home.php', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd2fd0712-ccf9-46b7-bc2a-15de5bfed484', N'e6f1439d-0fd9-428c-bcc5-64e411697587', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'30th Sparta Cup', N'Salt Lake City', CAST(0x02360B00 AS Date), NULL, N'Sparta United Soccer Club', N'U9 - U18', CAST(500.00 AS Decimal(18, 2)), CAST(0x17360B00 AS Date), N'Ben Vandenhazel', NULL, N'sparta1@spartaunited.org', 0, N'Boys & Girls', N'www.spartaunited.org', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'057489ed-36ad-4bef-908f-16f1a3559d7a', N'81e99bac-693d-44f0-8f46-6e1b45627180', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Amanda Forster Memorial', N'Kingston / Greenwood', CAST(0xF6350B00 AS Date), NULL, N'Kingston/ Greenwood Soccer Club', N'U10 - 18', CAST(300.00 AS Decimal(18, 2)), CAST(0xE4350B00 AS Date), N'Craig Sawler', N'825-6288', N'Craig@colesawlerlaw.ca', 0, N'Boys & Girls', N'http://kgsc.tripod.com/id12.html', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'c7c232a9-6b2a-4d0b-80cb-1a6d3ff9586b', N'3453d7b0-1303-4563-ab55-632cd5396fa2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'19th Annual Texas Warm-Up Cup', N'Houston', CAST(0x0C360B00 AS Date), NULL, N'Challenge Soccer Club', N'U10 - U19', CAST(390.00 AS Decimal(18, 2)), CAST(0x18360B00 AS Date), N'Danny', NULL, N'danny@texansoccer.com', 0, N'Boys & Girls', N'http://www.challengesoccer.com/texas-warm-up-cup', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'786c7101-76f6-4f7d-82a1-1ff1edbba7b5', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Pickering Friendship festival', N'Pickering', CAST(0xB0350B00 AS Date), NULL, N'Pickering Soccer Club', N'U10 U11 U12', CAST(150.00 AS Decimal(18, 2)), CAST(0xA8350B00 AS Date), N'Tony La Ferrara', N'416-835-0269', N'headcoach@pickeringsoccer.ca', 0, N'Boys & Girls', N'www.pickeringsoccer.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e8f6c462-75b0-4994-b0db-206a118d6181', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'SUPER 6’s FOOTBALL TOURNAMENT 2012', N'Northants', CAST(0xE9350B00 AS Date), NULL, N'Daventry Town FC.', N'U7-U15', CAST(25.00 AS Decimal(18, 2)), CAST(0xDA350B00 AS Date), N'Matt', N'07854 468925', N'm.hogsden@shebang.co.uk', 0, N'Boys & Girls', N'http://www.dtfc.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'c4d8aeb6-c02a-4330-8e03-233b7e023f32', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Greater Sudbury Impact Soccer Tournament', N'Sudbury', CAST(0xF6350B00 AS Date), NULL, N'Greater Sudbury Soccer Club', N'U11-U18', CAST(375.00 AS Decimal(18, 2)), CAST(0xE8350B00 AS Date), N'Mike Ladouceur', NULL, N'tournament@gssc.ca', 0, N'Boys & Girls', N'www.gssc.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'76f7a743-8b2d-4ea4-908d-237b933c3f48', N'e6f1439d-0fd9-428c-bcc5-64e411697587', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Park City Extreme Cup', N'Park City', CAST(0xFC350B00 AS Date), NULL, N'Park City Soccer Club', N'U9 - U18', CAST(550.00 AS Decimal(18, 2)), CAST(0x17360B00 AS Date), N'Shelley Gillwald', NULL, N'director@pcextremecup.com', 0, N'Boys & Girls', N'www.parkcityextremecup.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'a8d0da3a-2277-42ff-8871-26b4b71da905', N'2850de9f-9c34-482a-aa03-a8d5ecc96226', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Eastern Eagles Annual Soccer Tornament', N'Montague', CAST(0x04360B00 AS Date), NULL, N'Eastern Eagles SC', N'U12 - U18', CAST(325.00 AS Decimal(18, 2)), CAST(0xF6350B00 AS Date), N'Lori Lund', N'902-838-3480', N'easterneaglesoccer@hotmail.com', 0, N'Boys & Girls', N'http://easterneagles.goalline.ca', NULL, N'/uploads/Umbro beach86ca2ed4564a4fe29078a5f6c5774891.JPG', NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'418c060b-a8ee-4eb0-89b3-2d0bab7147b8', N'3453d7b0-1303-4563-ab55-632cd5396fa2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'11th Annual Austin Labor Day Cup', N'Austin', CAST(0x1A360B00 AS Date), NULL, N'Lonestar SC', N'U11 - U19', CAST(595.00 AS Decimal(18, 2)), CAST(0x18360B00 AS Date), N'Lisa Talbot', NULL, N'lisa_talbot@lonstar-sc.com', 0, N'Boys & Girls', N'http://www.lonestar-sc.com/tourn/aldc/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'b6f3033d-cad5-41b8-991b-2f51c8103128', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'SW Optimist Mini tournament', N'London', CAST(0xA2350B00 AS Date), NULL, N'Any FC', N'U9 - U10', CAST(250.00 AS Decimal(18, 2)), CAST(0xB3350B00 AS Date), N'Tom Partala', N'519 - 871 - 9191', N'none@mail.com', 1, N'Boys & Girls', N'www.bmocentrelondon.com', N'7v7', N'/uploads/BMO157e0ca53699481e813d87bc33ad3d5d.jpeg', N'Join us for our 1st Annual South West Optimist Mini tournament for boys and girls U9 - U10. May 26, 27th at the BMO Centre London Ontario.Contact Tom @ 519-871-9191 for more info or go to our web site at www.bmocentrelondon.com  ')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'f4970195-e94d-4b21-811f-30315a690206', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Lake Simcoe 6th Annual All-Star Tournament', N'Keswick', CAST(0xF6350B00 AS Date), NULL, N'Lake Simcoe Soccer Club', N'U11-U16', CAST(375.00 AS Decimal(18, 2)), CAST(0xE8350B00 AS Date), N'Grant Mayo', NULL, N'lssc@lakesimcoesoccer.com', 0, N'Boys & Girls', N'www.lakesimcoesoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'066e134f-1622-4203-a366-315f4ace4ab6', N'ef5a50d9-51cc-44bc-893b-b929a560cdc2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Shamrock Cup', N'Savannah', CAST(0xB8350B00 AS Date), NULL, N'Savannah Celtic FC', N'U8 - U19', CAST(350.00 AS Decimal(18, 2)), CAST(0x99350B00 AS Date), N'Keith Gunn', N'912-495-9996', N'scfctournaments@gmail.com.', 0, N'Boys & Girls', N'www.savannahceltic.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'ba534b79-3347-459a-b853-35593644dc8a', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Red Deer July Classic Soccer Tournament', N'Red Deer', CAST(0xF6350B00 AS Date), NULL, N'Red Deer SA', N'U10 - U18', CAST(525.00 AS Decimal(18, 2)), CAST(0xEF350B00 AS Date), N'Director', N'403-346-4259', N'rdcsa@telusplanet.net', 0, N'Boys & Girls', N'http://www.canaccom.com/index.php', N'11V11', N'/uploads/Welsh super cup2a777181c4184125ac89fbb2e0b55bab.JPG', NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'234ae2f9-e01d-4c65-a6a6-40b1769214aa', N'd290407e-882e-4509-a29b-d1b957fdfaa8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'15th Annual Spring Challenge', N'West Melbourne', CAST(0xA4350B00 AS Date), NULL, N'none', N'U9-U19', CAST(0.00 AS Decimal(18, 2)), CAST(0xA4350B00 AS Date), N'Al Genchi', N'321 676 1373', N'tournament@challengesports.com', 0, N'Boys & Girls', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'68791969-2555-43b1-b619-4858e700fa01', N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Deep Run Labor Day Tournament', N'Deep Run Sports Complex', CAST(0x1A360B00 AS Date), NULL, N'Deep Run Valley Sports Association', N'U9 - U14', CAST(0.00 AS Decimal(18, 2)), CAST(0x18360B00 AS Date), N'Michele Kokinda', NULL, N'drvsatravel@yahoo.com', 0, N'Boys & Girls', N'http://www.deeprunsoccer.org/cm/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e151f6aa-d7e9-4a4c-baeb-49877dd4f645', N'9ef25c60-1e82-4a2f-abba-2c78aefb1a79', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Cobras FC Summer Classic Tournament', N'Rochester', CAST(0xE8350B00 AS Date), NULL, N'Cobras FC', N'U8 - U19', CAST(425.00 AS Decimal(18, 2)), CAST(0xD4350B00 AS Date), N'Kim', NULL, NULL, 1, N'Boys & Girls', N'http://cobrasfc.org/', NULL, N'/uploads/Cobras FCd1576db9f9d442a7b6e94913870f1053.JPG', N'Cobras FC Summer Classic 2012')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'815c0ed0-c723-4647-9104-49f93263e710', N'd290407e-882e-4509-a29b-d1b957fdfaa8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Naples Spring Classic', N'Naples', CAST(0xA3350B00 AS Date), NULL, N'none', N'U9-U19', CAST(350.00 AS Decimal(18, 2)), CAST(0xA0350B00 AS Date), N'Gavin Spooner', N'941 545 8874', N'doc@naplessoccer.com', 0, N'Boys & Girls', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'354f1611-83a5-45b9-8a7b-4c86bf5fa7b2', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Nor''West Annual Tournament', N'London', CAST(0xFE350B00 AS Date), NULL, N'Nor''West London SC', N'U11 - U16', CAST(375.00 AS Decimal(18, 2)), CAST(0xF7350B00 AS Date), N'Chris Dzierwa', NULL, N'norwestregistrar@rogers.com', 0, N'Boys & Girls', N'www.nwsoccertournament.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'41dcfb73-f2ec-48f4-aa78-4de4595bfced', N'2850de9f-9c34-482a-aa03-a8d5ecc96226', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Winsloe Charlottetown Royals FC Soccer Tournament', N'Winsloe', CAST(0xE8350B00 AS Date), NULL, N'Winsloe Charlottetown Royals FC', N'U12, 14, 16, 18', CAST(275.00 AS Decimal(18, 2)), CAST(0xF6350B00 AS Date), N'Nicole Higginbotham', NULL, N'nhigginbotham@upei.ca', 0, N'Boys & Girls', N'http://www.wwrsc.ca', NULL, N'/uploads/Umbro beach86ca2ed4564a4fe29078a5f6c5774891.JPG', NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'84a7c7c2-9964-4023-825b-4f8a754274bb', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'North East England Football Tournament 2012', N'Northumberland', CAST(0x13360B00 AS Date), NULL, N'Pin Point Recruitment Junior Football League', N'U12 - U16', CAST(70.00 AS Decimal(18, 2)), CAST(0x0D360B00 AS Date), N'Director', NULL, N'admin@pinpointjuniorleague.co.uk', 0, N'Boys & Girls', N'http://www.pinpointjuniorleague.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'29d07fea-cc1a-4358-b919-50e4f2dd93ae', N'3453d7b0-1303-4563-ab55-632cd5396fa2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Rush Cup', N'Houston', CAST(0x0C360B00 AS Date), NULL, N'Rush Soccer', N'U10 - U19', CAST(365.00 AS Decimal(18, 2)), CAST(0x18360B00 AS Date), N'Tournament Director', NULL, N'sfitzsimons@texasrush.com', 0, N'Boys & Girls', N'http://texasrush.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e16f664d-bcbc-4679-9bdd-51589152d96b', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'test2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, N'/Images/Tournament/testImage.jpg', N'Applicake caramels danish candy ice cream cookie bonbon. Soufflé icing tiramisu croissant I love cookie soufflé. Dragée bonbon sesame snaps I love gingerbread dragée bonbon danish. Chocolate apple pie cake biscuit cheesecake bear claw tart. I love powder soufflé. Toffee chocolate oat cake biscuit chocolate bar wypas I love I love. Toffee wafer applicake macaroon lollipop sugar plum wafer jujubes. I love chupa chups apple pie cake. Faworki bear claw sweet roll.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'6034ecf4-a50b-4dfe-a586-54db05a2a2aa', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'1st Ann Tillsonburg Boy’s Youth Soccer Tournament', N'Tillsonburg', CAST(0xA3350B00 AS Date), NULL, N'Tillsonburg Soccer Club', N'U12 U14', CAST(350.00 AS Decimal(18, 2)), CAST(0xA2350B00 AS Date), N'Geza Revai', N'000 000 0000', N'tillsonburgfc@gmail.com', 0, N'Boys', N'www.tillsonburgsoccer.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5c335929-cb70-4116-8f68-55c089575749', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, N'/Images/Tournament/testImage.jpg', N'Applicake caramels danish candy ice cream cookie bonbon. Soufflé icing tiramisu croissant I love cookie soufflé. Dragée bonbon sesame snaps I love gingerbread dragée bonbon danish. Chocolate apple pie cake biscuit cheesecake bear claw tart. I love powder soufflé. Toffee chocolate oat cake biscuit chocolate bar wypas I love I love. Toffee wafer applicake macaroon lollipop sugar plum wafer jujubes. I love chupa chups apple pie cake. Faworki bear claw sweet roll.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'3324b859-7f4a-411e-8010-58969745c310', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'RCFC Tournament', N'Telford', CAST(0xE9350B00 AS Date), NULL, N'Randlay Colts Junior Football Club.', N'U6-U15', CAST(25.00 AS Decimal(18, 2)), CAST(0xDA350B00 AS Date), N'James', NULL, N'james.inglis@jci.com', 0, N'Boys & Girls', N'http://juniorfootball@randlaycoltsfc.net', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5a461afa-ada4-4942-a67e-5aff19358cb2', N'0d347b49-3719-4c23-92d2-6b0565acc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Puma Rimland Pacific Cup', N'Bellingham', CAST(0x04360B00 AS Date), NULL, N'Northwest Soccer Park (', N'U11 - U19', CAST(525.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Lance Calloway', NULL, N'lance@whatcomsoccer.com', 0, N'Girls', N'http://www.whatcomsoccer.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'f76ae49e-5ff9-4de1-969b-5dcecb794935', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Moon Day Tournament', N'Spruce Grove', CAST(0xEE350B00 AS Date), NULL, N'Spruce Grove Soccer', N'U10 - U18', CAST(430.00 AS Decimal(18, 2)), CAST(0xD8350B00 AS Date), N'Kevin', N'780- 919-2692', N'bbank@telus.net', 0, N'Boys & Girls', N'http://www.sgsa.ab.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'8f34cdd2-9d34-4ba6-9ee2-62cb109641d3', N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Battle at HillTop Boys', N'Limerick', CAST(0x13360B00 AS Date), NULL, N'West-Mont United', N'U9 - U15', CAST(550.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Brenda Wahlig', NULL, N'manager@westmontunitedsoccer.org', 0, N'Boys', N'http://www.westmontunitedsoccer.org', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'91bb2367-9916-4e57-acfb-6645456831ea', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Cambridge Heritage Tournament', N'Cambridge', CAST(0xE2350B00 AS Date), NULL, N'Cambridge Youth Soccer', N'U8-U10', CAST(350.00 AS Decimal(18, 2)), CAST(0xCD350B00 AS Date), N'Derek Bridgman', N'519-653-8800 X 101', N'derek@cambridgesoccer.ca', 0, N'Boys & Girls', N'http://www.cambridgesoccer.ca/tournament.shtml', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'f3f414da-9b4f-43d4-b95f-67a533ee2ea5', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Heatwave Invitational', N'New Tecumseth (Beeton)', CAST(0xE8350B00 AS Date), NULL, N'South Simcoe United FC', N'U12 - U18', CAST(350.00 AS Decimal(18, 2)), CAST(0xCD350B00 AS Date), N'Brandy McComb', NULL, N'brandy.mccomb@southsimcoeunited.ca', 0, N'Boys & Girls', N'www.southsimcoeunited.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'1feddb5d-a728-4557-9e7c-67dec9c376b9', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Liverpool Knowsley Cup', N'Liverpool', CAST(0xF3350B00 AS Date), NULL, N'Loch', N'U11 - U19', CAST(350.00 AS Decimal(18, 2)), CAST(0x5A370B00 AS Date), N'Jill', NULL, N'jill@soccerevents.co.uk', 1, N'Boys & Girls', NULL, NULL, N'/uploads/Liverpool209c4ed483a0423f987e93cfbb98e648.jpg', N'The 2012 Liverpool Knowsley Cup had yet another successful year. It saw 15 visiting teams from 6 countries attend and had over 96 participating teams. The visiting teams spent the week in Liverpool where they visited many of Liverpool''s top attractions alongside competing in the tournament. Excellent comments have been received, all of whom have gone away with fond memories of the tournament and the surrounding area. Visit the testimonials page at www.lkcup.com for some great feedback about the 2012 tournament from some of the local and visiting teams. Teams commented that the Liverpool Knowsley Cup was "A top notch tournament, one of the very best around," something that we at Soccer Events Limited aim to maintain.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'bcb66def-3d8b-4607-9480-6a0e407f5d87', N'3453d7b0-1303-4563-ab55-632cd5396fa2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Elite Invitational', N'Pflugerville', CAST(0x0B360B00 AS Date), NULL, N'Austin Texans SC', N'U9 - U18', CAST(450.00 AS Decimal(18, 2)), CAST(0x18360B00 AS Date), N'Danny', NULL, N'td@austintexanssc.com', 0, N'Boys & Girls', N'www.austintexanssc.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'dc8dde5b-0de4-41cd-9580-6b8b4f40f63a', N'd290407e-882e-4509-a29b-d1b957fdfaa8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Central Brevard Hurricane Classic', N'Merritt Island', CAST(0x0C360B00 AS Date), NULL, N'Brevard Soccer', N'U9 - U19', CAST(399.00 AS Decimal(18, 2)), CAST(0xFD350B00 AS Date), N'Bill Quinter', NULL, N'Soccer@BrevardSoccer.net', 0, N'Boys & Girls', N'http://www.brevardsoccer.net/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e2f13cb3-ec70-4e1b-b1c4-6ef7f4941bbd', N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Hershey Cup', N'Hershey', CAST(0x05360B00 AS Date), NULL, N'Hershey Soccer Club', N'U8 - U14', CAST(500.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Jinene Mahon', NULL, N'jinenemahon@gmail.com', 0, N'Boys & Girls', N'http://www.hersheysoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'0b6cf515-dc52-428a-92de-75c188dce0f4', N'0d347b49-3719-4c23-92d2-6b0565acc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Sky River Soccer Tournament', N'Monroe', CAST(0x11360B00 AS Date), NULL, N'Sky River Soccer Club', N'U11 - U19', CAST(450.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Chris Longsine', NULL, N'SRSCPres@gmail.com', 0, N'Boys & Girls', N'http://www.skyriversoccer.net/home.php', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'79e04573-d488-448f-aef2-76c6ebcefd59', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Ajax FC All-star Tournament', N'Ajax', CAST(0xF0350B00 AS Date), NULL, N'Ajax FC', N'U11-U18', CAST(350.00 AS Decimal(18, 2)), CAST(0xE8350B00 AS Date), N'Jason Pearson', NULL, N'scheduler@ajaxsoccerclub.ca', 0, N'Boys & Girls', N'www.ajaxfc.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5e7d8227-b9e8-43c8-95a4-77ab5efff494', N'33b0e51f-7207-4a26-9874-0204aac129ea', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Michigan Challenge Cup', N' Lansing', CAST(0x04360B00 AS Date), NULL, N'Michigan State Developmental Soccer League', N'U9 - U19', CAST(0.00 AS Decimal(18, 2)), CAST(0x00360B00 AS Date), N'Dan Raben', NULL, N'rabendan@comcast.net', 0, N'Boys & Girls', N'http://www.michiganchallengecup.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'9a68d19d-49b0-4df4-8269-7d0df4a53845', N'81e99bac-693d-44f0-8f46-6e1b45627180', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Connor Timmons Memorial Tournament', N'Sydney, New Waterford', CAST(0xE7350B00 AS Date), NULL, N'Cape Breton', N'U12, 14, 16', CAST(0.00 AS Decimal(18, 2)), CAST(0xE4350B00 AS Date), N'Ken MacLean', N'562-8491', N'kenmaclean@ns.sympatico.ca', 0, N'Boys', N'http://connortimmons.com/node/1', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'2b6cfebf-c916-4499-bf50-82a3d0dbbef1', N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'West Chester Summer Classic', N'Thornbury Soccer Park (WCUSC)', CAST(0xFD350B00 AS Date), NULL, N'West Chester United Soccer Club', N'U9 - U15', CAST(0.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Mark Thomas', NULL, N'mthomas@wcusc.org', 0, N'Boys & Girls', N'http://www.wcusc.org/summerclassic/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'f55c5cbd-e7de-4751-88d2-86935860c50b', N'0d51f721-5093-40f0-ac93-45fff0765a5b', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Gahanna Fall Open', N'Gahanna', CAST(0x0B360B00 AS Date), NULL, N'Gahanna Soccer Association', N'U8 - U15', CAST(375.00 AS Decimal(18, 2)), CAST(0x0A360B00 AS Date), N'Jim Sturm', NULL, NULL, 0, N'Boys & Girls', N'http://www.thegahannafallopen.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5a99e19e-3de6-4062-b3ed-893d713abca2', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'North East England Football Tournament U11', N'Gosforth', CAST(0xFE350B00 AS Date), NULL, N'Pin Point Recruitment Junior Football League', N'U11', CAST(50.00 AS Decimal(18, 2)), CAST(0x0D360B00 AS Date), N'Director', NULL, N'admin@pinpointjuniorleague.co.uk', 0, N'Boys & Girls', N'http://www.pinpointjuniorleague.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'890bb08e-b25a-405d-bf85-8a972effa14a', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Downsview Park Cup of Champions', N'North York', CAST(0xFE350B00 AS Date), NULL, N'Downsview Park Soccer Club', N'U11 - U18', CAST(325.00 AS Decimal(18, 2)), CAST(0xF7350B00 AS Date), N'Matt Brady', NULL, N'mbrady@downsviewpark.ca', 0, N'Boys & Girls', N'http://www.downsviewpark.ca/eng/tournaments.shtml', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'a79feabd-8399-4d53-bde5-8c7e5fd046ad', N'0d51f721-5093-40f0-ac93-45fff0765a5b', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Cincinnati United Cup', N'Cincinnati', CAST(0x0B360B00 AS Date), NULL, N'Cincinnati United Soccer Club', N'U8 - U14', CAST(450.00 AS Decimal(18, 2)), CAST(0x0A360B00 AS Date), N'Bobby Puppione', NULL, N'bobbypuppione@yahoo.com', 0, N'Boys & Girls', N'http://cutournaments.gotsport.com/clubsite/?p=1657', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'1bb9d685-7ade-4318-98da-8cbb6f986a3e', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'FC Calne Youth Tournament 2012', N'Calne', CAST(0xE2350B00 AS Date), NULL, N'FC Calne', N'U7-U16', CAST(20.00 AS Decimal(18, 2)), CAST(0xDD350B00 AS Date), N'Mark', NULL, N'batessr3@aol.com     ', 0, N'Boys & Girls', N'http://www.calnefootball.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'32cb61f8-49da-4330-a4f1-930ab8c3435f', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Woolston Rovers Festival of Football', N'Warrington', CAST(0xF7350B00 AS Date), NULL, N'Woolston Rovers FC', N'U7-U14', CAST(30.00 AS Decimal(18, 2)), CAST(0xDA350B00 AS Date), N'Peter', N'07950 610042', N'petercross_efc@hotmail.com', 0, N'Boys & Girls', N'http://www.woolston-rovers.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd46ec4c2-ad10-4b11-b4c7-931029ceb0a6', N'998ae199-50d3-4bda-ac95-f978b09a7c45', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Season Finale Festival & Skills Competition', N'Homewood', CAST(0xAA350B00 AS Date), NULL, N'Homewood Soccer Club', N'U8 - U10', CAST(250.00 AS Decimal(18, 2)), CAST(0x9F350B00 AS Date), N'David Putman', N'205-979-8974', N'Homewoodsoccer@aol.com', 0, N'Boys & Girls', N'www.homewoodsoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'200265e3-49ba-4983-8bc6-93527acde852', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Roach Dynamos 11th Annual Football Tournament', N'Lancashire', CAST(0xFE350B00 AS Date), NULL, N'Roach Dynamos JFC.', N'U7-U14', CAST(30.00 AS Decimal(18, 2)), CAST(0xFA350B00 AS Date), N'Melanie', NULL, N'Melaniegreenhalgh@yahoo.com', 0, N'Boys & Girls', N'http://roachdynamos.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'90a088c1-e96e-434c-9f98-953c0e2e62a1', N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'The Keystone Cup', N'Manheim', CAST(0x1A360B00 AS Date), NULL, N'PA Classics', N'U9 - U15', CAST(0.00 AS Decimal(18, 2)), CAST(0x18360B00 AS Date), N'Michael Henning', NULL, N'mikehenning@paclassics.org', 0, N'Boys & Girls', N'http://www.paclassics.org/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'7fe70fdf-0f7f-484c-b600-953d9a31306c', N'e6f1439d-0fd9-428c-bcc5-64e411697587', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'The Mayors Cup', N'Salt Lake City', CAST(0x02360B00 AS Date), NULL, N'Sparta United Soccer Club', N'U9 - U18', CAST(500.00 AS Decimal(18, 2)), CAST(0x17360B00 AS Date), N'Ben Vandenhazel', NULL, N'sparta1@spartaunited.org', 1, N'Boys & Girls', N'http://www.forzafutbolclub.com', NULL, N'/uploads/mayors cup 24a93a5abb0154937b50ee57c802b9ef8.jpg', N'The Mayor’s Cup 2012Labor Day Weekend August 29, 2012 - September 1, 2012 September 3, 2012 Semi-Finals and FinalsHost: Forza Futbol Club Ages: Boys U8-U18 and Girls U8-U14Location: Bountiful, Centerville, FarmingtonFee: U8 $350; U9-U11 $450; U12-U18 $550Registration Is Now Open')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'8a418582-b93d-47b5-b5f1-955b66c23dbd', N'bbccdd83-4613-4bfa-a60d-68f92e1131c1', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Annandale Premier Cup Girls', N'Dulles', CAST(0x74360B00 AS Date), NULL, N'ABGC', N'U9 - U19', CAST(700.00 AS Decimal(18, 2)), CAST(0x6C360B00 AS Date), N'Scott Becker', N'703 709 1234', NULL, 0, N'Girls', N'http://www.alliancecup.com/index.html', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'467a3059-9fae-4919-9b70-97418b15c314', N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Battlefield Blast', N'Gettysburg', CAST(0x13360B00 AS Date), NULL, N'Gettysburg Youth Soccer Club', N'U9 - U18', CAST(0.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Randy Smith', NULL, N'info@gysc.org', 0, N'Boys & Girls', N'http://www.gysc.org/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'79f8944e-e12d-490b-a082-9b7651df23c4', N'ef5a50d9-51cc-44bc-893b-b929a560cdc2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Atlanta Peach Classic', N'McDonough', CAST(0xB1350B00 AS Date), NULL, N'Thunder Soccer Club', N'U9 - U19', CAST(350.00 AS Decimal(18, 2)), CAST(0x99350B00 AS Date), N'Ricky Wolff', N'404.906.6678', N'peachclassic@hcsa.org', 0, N'Boys & Girls', N'www.atlantapeachclassic.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'19f4d58e-7132-4fae-9f04-9c5a462f2937', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Brams United Invitational', N'Brampton', CAST(0x0C360B00 AS Date), NULL, N'Brams United Girls Soccer Club', N'U11 - U18', CAST(400.00 AS Decimal(18, 2)), CAST(0xF7350B00 AS Date), N'Tony Belmonte', NULL, NULL, 0, N'Girls', N'www.eteamz.com/bramsunitedinvitational', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'b5e60ffa-7215-4c86-8bc8-9ccf1701a344', N'0d51f721-5093-40f0-ac93-45fff0765a5b', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'CSADog Days of Summer', N'Cincinnati', CAST(0x0B360B00 AS Date), NULL, N'Cincinnati Soccer Alliance''s', N'U8 - U15', CAST(450.00 AS Decimal(18, 2)), CAST(0x0A360B00 AS Date), N'Candy Salazar', NULL, N'cjsalazar@cinci.rr.com', 0, N'Boys & Girls', N'http://www.csadogdays.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5130d35d-bf4c-4eb3-9d6e-9d965717ebe1', N'0d347b49-3719-4c23-92d2-6b0565acc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Washington Rush Cup', N'Burlington', CAST(0xFD350B00 AS Date), NULL, N'Rush Soccer', N'U11 - U19', CAST(695.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Andy Machin', NULL, N'tournamentinfo@washingtonrush.com', 0, N'Boys & Girls', N'www.washingtonrush.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'0779d075-47cf-4f6d-9226-9fb2e71572b4', N'241204c1-864a-4bb0-b434-ac9e339eb602', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'26th Annual Ft Wayne Invitational', N'Ft Wayne', CAST(0x0B360B00 AS Date), NULL, N'Ft Wayne United Soccer Association', N'U9 - U14', CAST(475.00 AS Decimal(18, 2)), CAST(0x00360B00 AS Date), N'Dan Fox', N'260-705-3290', N'fwisoccer@live.com', 0, N'Boys & Girls', N'http://www.fwisoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd0ab83a7-9ead-488a-9461-a10657cf18e6', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'SWEMSA Annual U8 Soccer Tournament', N'Edmonton', CAST(0xD4350B00 AS Date), NULL, N'South West Edmonton Minor Soccer Association', N'U8', CAST(125.00 AS Decimal(18, 2)), CAST(0xCB350B00 AS Date), N'Janice Hicks', NULL, N'swemsa@gmail.com', 0, N'Boys & Girls', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5ac14a27-2984-44dc-ab27-a3228907f57b', N'81e99bac-693d-44f0-8f46-6e1b45627180', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Valley U8 and U10 Classic', N'New Minas', CAST(0x0C360B00 AS Date), NULL, N'NMSC', N'U8-U10', CAST(300.00 AS Decimal(18, 2)), CAST(0xF7350B00 AS Date), N'Angela Morrison', N'678-8644', N'technical@ns.aliantzinc.ca', 0, N'Boys & Girls', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'733cf218-ef86-46f0-86fe-a5fade131163', N'0d347b49-3719-4c23-92d2-6b0565acc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'2012 Seattle Cup', N'Starfire Soccer Complex', CAST(0xFD350B00 AS Date), NULL, N'Seattle United', N'U10 - U19', CAST(550.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'David Griffiths', NULL, N'davidg@seattleunited.com', 0, N'Boys & Girls', N'http://www.seattleunited.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'6c7a877e-8dad-4a62-9042-a7b786278237', N'6c46d8ee-914e-4f93-9b33-5be29445211e', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Port Moody Soccer Club Summer Showcase', N'Port Moody', CAST(0x0C360B00 AS Date), NULL, N'PORT MOODY SOCCER CLUB', N'U10 - U12', CAST(375.00 AS Decimal(18, 2)), CAST(0xF6350B00 AS Date), N'Tournament Director', NULL, NULL, 0, N'Boys & Girls', N'http://pmsc.businesscatalyst.com/#top', NULL, N'/uploads/Umbro beach86ca2ed4564a4fe29078a5f6c5774891.JPG', NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'576d742e-ea5f-46e8-a4d1-a88ab45e6147', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Weddington Thistle Football Tournament', N'Warwickshie', CAST(0xE2350B00 AS Date), NULL, N'Weddington Thistle JFC.', N'U7-U16', CAST(22.50 AS Decimal(18, 2)), CAST(0xDA350B00 AS Date), N'S. Pratt', NULL, N's.pratt4@ntlworld.com     ', 0, N'Boys & Girls', N'http://www.weddingtonthistle.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'4565208c-0969-433e-ad76-aaaa73d964d3', N'3453d7b0-1303-4563-ab55-632cd5396fa2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Dawg Dayz of Summer 6V6', N'Boerne', CAST(0x04360B00 AS Date), NULL, N'Boerne Soccer', N'U7 - U18', CAST(350.00 AS Decimal(18, 2)), CAST(0x18360B00 AS Date), N'Roger', NULL, N'BSCTreasurer@GVTC.com', 0, N'Boys & Girls', N'www.boernesoccer.org', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'f6e1f113-9499-4030-aec0-aab4538afeb2', N'81e99bac-693d-44f0-8f46-6e1b45627180', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Bruce Wagner Tournament', N'Sackville', CAST(0x04360B00 AS Date), NULL, N'Sackville United', N'U10 - 18', CAST(300.00 AS Decimal(18, 2)), CAST(0xF7350B00 AS Date), N'Nicole Gaudet', N'877-5905', N'programadmin@sackvilleunited.ca', 0, N'Boys & Girls', N'http://sackvilleunited.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'a62c9838-4d1a-4495-8ed2-aac4de10d1a7', N'c67aaca1-4f7c-4ffc-966c-93fd4b7ed2ae', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Winchester Classic Tournament', N'Winchester', CAST(0x28360B00 AS Date), NULL, N'Winchester Youth Soccer League', N'U9 - U14', CAST(350.00 AS Decimal(18, 2)), CAST(0x19360B00 AS Date), N'Director', NULL, N'winchesterclassic@gmail.com', 0, N'Boys & Girls', N'http://www.eteams.com/winchesterysl/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'66b35b3a-a3e7-488a-9ed1-acf1bdf3002c', N'ef5a50d9-51cc-44bc-893b-b929a560cdc2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'SSA Summer Classic', N'Marietta', CAST(0x05360B00 AS Date), NULL, N'Southern Soccer Academy', N'U9 - U18', CAST(450.00 AS Decimal(18, 2)), CAST(0xF5350B00 AS Date), N'Director', NULL, N'SSAtournamentdirector@gmail.com', 0, N'Boys & Girls', N'http://www.soccerincollege.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'4d395150-e1ba-43c8-a55a-ad591e1d18c9', N'c5c49d20-d687-4e1f-bfe0-81efdc3188a6', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'STARS CUP 2012  ', N'Woburn High School', CAST(0x19360B00 AS Date), NULL, N'FC Stars of Massachusetts', N'U10, U11, U12, U13 and U14', CAST(0.00 AS Decimal(18, 2)), CAST(0x15360B00 AS Date), N'Tom Phillips', NULL, NULL, 0, N'Boys & Girls', N' www.starsofmass.org', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'dd1822cd-b683-4ff8-b91f-ad7a3a6a0de1', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Giddy Up Cup', N'Calgary', CAST(0xE1350B00 AS Date), NULL, N'Calgary Minor Soccer', N'U14 - U18', CAST(525.00 AS Decimal(18, 2)), CAST(0xE5350B00 AS Date), N'Karrie Kreutz', NULL, N'competitions@calgaryminorsoccer.com', 0, N'Boys & Girls', NULL, NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'f762f427-bbda-4524-bace-adce56b70523', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'North East England Football Tournament Mini', N'Gosforth Park', CAST(0x0C360B00 AS Date), NULL, N'Pin Point Recruitment Junior Football League', N'U9 - U10', CAST(50.00 AS Decimal(18, 2)), CAST(0x0D360B00 AS Date), N'Director', NULL, N'admin@pinpointjuniorleague.co.uk', 0, N'Boys & Girls', N'http://www.pinpointjuniorleague.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'98a973b0-b180-4a47-aff0-addca1544210', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Scenic City Cup Competitive', N'Owen Sound', CAST(0xF0350B00 AS Date), NULL, N'Owen Sound Minor Soccer', N'U14-U18', CAST(375.00 AS Decimal(18, 2)), CAST(0xE8350B00 AS Date), N'Chrishan Fernando', NULL, N'chrishan81702@gmail.com', 0, N'Boys & Girls', N'www.owensoundminorsoccer.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5b1f8d6b-184b-4b24-ad51-ae12ff21740f', N'd290407e-882e-4509-a29b-d1b957fdfaa8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Bazooka Soccer Tournament', N'Kissimmee', CAST(0x1A360B00 AS Date), NULL, N'Bazooka Soccer', N'U9 - U19', CAST(450.00 AS Decimal(18, 2)), CAST(0x18360B00 AS Date), N'Director', NULL, N'boni@bazookasoccer.com', 0, N'Boys & Girls', N'http://www.bazookasoccer.com/home/bsiyt.html', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'9c7ce314-e0a5-4169-afed-af44c69d350e', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Clair House Cup', N'Wirral Rugby Club', CAST(0xE2350B00 AS Date), NULL, N'Higher Bebington JFC.', N'U7 - U14', CAST(50.00 AS Decimal(18, 2)), CAST(0xDD350B00 AS Date), N'Unknown', NULL, N'gbj@btconnect.com     ', 0, N'Boys & Girls', N'http://www.clairehousecup.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'77c28295-4d6e-4549-9ba0-af537f2da9de', N'5475b7f8-0f32-4605-9bda-8b069b836f26', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Southwest SoccerFest Classic', N'Swift Current', CAST(0xB7350B00 AS Date), NULL, N'Swift Current Soccer Association', N'U10 - U18', CAST(350.00 AS Decimal(18, 2)), CAST(0xAC350B00 AS Date), N'Shaun', NULL, N'shaunalacher@sasktel.net', 0, N'Boys & Girls', N'www.swiftcurrentsoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'09b0694c-382c-42ef-bde5-b5576381dc9f', N'd290407e-882e-4509-a29b-d1b957fdfaa8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Lotto Invitational Cup', N'Palm Coast', CAST(0xA2350B00 AS Date), NULL, N'FC United', N'U9 - U18', CAST(250.00 AS Decimal(18, 2)), CAST(0x3A360B00 AS Date), N'Reg Monsanto', N'519 - 871 - 9191', N'info@fcunited.net', 1, N'Boys & Girls', N'www.fcunited.net', N'11v11', N'/uploads/FC  united Floridadc5da10fe24c421cb97be7429699e392.jpeg', N'Lotto Invitational Cup, Palm Coast Florida. U9 - U18 Boys and girls.October 6, 7th.Mid-fall...a great time for a competitive tournament to sharpen your teams'' performance. The 2012 Lotto Invitational Cup will be played at Palm Coast''s  newly renovated Indian Trails Sports ComplexContact Reg Monsanto - info@fcunited.netfor more info')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'0f08fb58-30d8-4ec7-bd3d-b8b4f518fcf8', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'ACES National Tournament 2012', N'Leicester', CAST(0xE2350B00 AS Date), NULL, N'ACES', N'U11-U16', CAST(0.00 AS Decimal(18, 2)), CAST(0xDD350B00 AS Date), N'Andy', NULL, N'andrew.panayiotou@acesfootball.co.uk', 0, N'Boys & Girls', N'http://acesfootball.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'f79e6cb4-8d2a-4d78-af4c-b9e7257000c7', N'149bf3e8-a370-4102-8821-f791c5b38ca9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Northern Arizona Invitational', N'Flagstaff', CAST(0xB8350B00 AS Date), NULL, N'Flagstaff United', N'U8 - U18', CAST(450.00 AS Decimal(18, 2)), CAST(0x9F350B00 AS Date), N'Holly Jones', NULL, N'holly.jones@msn.com', 0, N'Boys & Girls', N'http://www.flagstaffsoccerclub.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'6b3b9c12-c88f-4d84-b073-bae2d9966659', N'dc53bca7-f069-483b-b09e-e355a4377bfa', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Vacaville Shootout I', N'Vacaville', CAST(0xBF350B00 AS Date), NULL, N'Vacaville United Soccer club', N'U13 - U19', CAST(450.00 AS Decimal(18, 2)), CAST(0xBB350B00 AS Date), N'Stacy Anderson', N'(707) 330-6761', N'shelleycarlson@scbglobal.net', 0, N'Boys', N'www.vysl.org', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'c2d4ee9c-589f-4107-a23a-bd6ee74eeb6f', N'998ae199-50d3-4bda-ac95-f978b09a7c45', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Mobile Bay Spring Classic', N'Daphne', CAST(0xA9350B00 AS Date), NULL, N'Mobile Soccer Club', N'U10 - U18', CAST(400.00 AS Decimal(18, 2)), CAST(0x9F350B00 AS Date), N'Mohammed El-Zare', N'251-510-0107', N'mohammed.elzare@gmail.com', 0, N'Boys & Girls', N'www.mobilesoccerclub.org', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'faf08e1f-a727-4a2a-b242-beed284e6408', N'81e99bac-693d-44f0-8f46-6e1b45627180', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Annapolis RFC Natal Day Tournament', N'Annapolis Royal', CAST(0xFE350B00 AS Date), NULL, N'Annapolis RFC', N'U8, 10, 12', CAST(250.00 AS Decimal(18, 2)), CAST(0xE4350B00 AS Date), N'Laurie McGowan', N'532-7409', NULL, 0, N'Boys & Girls', N'http://annapolisrfc.com/Tournament.html', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'ef231333-ba82-47f4-8564-c075b3733320', N'33b0e51f-7207-4a26-9874-0204aac129ea', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'XSX Summer Blast', N'Monroe', CAST(0xF7350B00 AS Date), NULL, N'Xtreme Soccer Xperience', N'U6 - U19', CAST(0.00 AS Decimal(18, 2)), CAST(0xEF350B00 AS Date), N'Leif Larsen', NULL, N'leif@3v3x.com', 0, N'Boys & Girls', N'www.3v3x.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'4f34d1ea-c4f4-46d7-9dca-c20659039420', N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Ridley United 2012 Invitational Soccer Tournament', N'Ridley Township', CAST(0x05360B00 AS Date), NULL, N'Ridley United Soccer Club', N'U9 - U17', CAST(400.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Director', NULL, N'ridleytournament@hotmail.com', 0, N'Boys & Girls', N'http://www.ridleyunitedsoccer.org/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd0c7eaed-51ad-4f61-8891-c5a4b2b474ce', N'50483cae-8d57-44a4-8d34-8486d1e10d51', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Loch Lomond Youth Soccer Festival', N'Stirling', CAST(0x68370B00 AS Date), NULL, N'Loch', N'U11 - U19', CAST(350.00 AS Decimal(18, 2)), CAST(0x5B370B00 AS Date), N'Jill', NULL, N'jill@soccerevents.co.uk', 1, N'Boys & Girls', NULL, NULL, N'/uploads/Loch Lomond Logo9920b421834043408ea0c8c31ae9777c.jpg', N'Loch Lomond Youth Soccer Festival will be entering its 13th year of providing exciting international soccer for young teams from around the world in 2013.  Loch Lomond Youth Soccer Festival is recognized as Scotland''s finest Youth Soccer Tournaments.  In 2012, the tournament hosted 100 teams from 6 different countries. Excellent comments have been received, all of whom have gone away with fond memories of the tournament and the surrounding area. Visit the testimonials page at www.lochlomondsoccer.com for some great feedback about the 2012 tournament from some of the local and visiting teams.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'98f0dd0b-c441-4ae8-b23b-c8311c42a7be', N'ef5a50d9-51cc-44bc-893b-b929a560cdc2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'37th Athens United Invitational', N'ATHENS', CAST(0x0C360B00 AS Date), NULL, N'Athens United', N'U9 - U18', CAST(445.00 AS Decimal(18, 2)), CAST(0xF5350B00 AS Date), N'Lloyd C White', NULL, N'lloydathensunited@yahoo.com', 0, N'Boys & Girls', N'http://www.soccerincollege.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'6a329f7b-88e8-49be-bff7-cab3ce5a47fa', N'0d347b49-3719-4c23-92d2-6b0565acc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Cowlitz Kickoff Classic - 2012', N'Longview', CAST(0xFD350B00 AS Date), NULL, N'Cowlitz Youth Soccer', N'U11 - U19', CAST(399.00 AS Decimal(18, 2)), CAST(0xFB350B00 AS Date), N'Tom Hutchinson', NULL, N'hutcht@q.com', 0, N'Boys & Girls', N'http://www.cowlitzyouthsoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'7b73cce3-3dfc-4009-bb51-ccd93b694b13', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'4th Annual North Bay Challenge Cup', N'North Bay', CAST(0x04360B00 AS Date), NULL, N'North Bay Selects Soccer Club', N'U11 - U14', CAST(275.00 AS Decimal(18, 2)), CAST(0xF7350B00 AS Date), N'Frank Nucara', NULL, N'frank.nucara@hotmail.com', 0, N'Boys & Girls', N'www.selectssoccerclub.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'22bf2b13-d381-45a1-9f23-ce7ac236b191', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'test', N'test', CAST(0xAF350B00 AS Date), NULL, N'test', N'5475b7f8-0f32-4605-9bda-8b069b836f26', NULL, CAST(0xA9350B00 AS Date), N'test', N'test', N'test@me.ca', 0, N'Boys & Girls', N'www.google.com', NULL, NULL, N'test')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e94004b5-a7b4-46e5-807a-cf9790a54532', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Challenge Cup', N'Sherwood Park', CAST(0xFD350B00 AS Date), NULL, N'SPDSA', N'U12 - U18', CAST(475.00 AS Decimal(18, 2)), CAST(0xEF350B00 AS Date), N'Dean Mastrangelo', N'780-449-1343', N'd.mastrangelo@spdsa.net', 1, N'Boys & Girls', N'http://www.spdsa.net', N'11V11', N'/uploads/Sherwood park AB1546ac55b6ce4c23800686598983245c.JPG', N'Challenge CUP - Sherwood Park Alberta.THE  SPDSA WILL BE HOSTING ITS ANNUAL CHALLENGE CUP INVITATIONAL SOCCER TOURNAMENT.DATE:   AUGUST 3 - 6TH, 2012TIERS:  I, II, IIIAGE  GROUPS: U12 TO U18EARLY  BIRD ENTRY IS:  $450.00 IF ENTERED BY JUNE 30TH, 2012REGULAR  ENTRY IS:  $475.00 IF ENTERED BY JULY 15TH, 2012SPDSA  is following the Canadian Soccer Associations Long Term Player Development Model  which is focusing onDevelopment  over Winning.  As a result both the U12 Tournament will be Jamboree style, with  teams guaranteed 3 games. SPDSA  looks forward to seeing you in our tournaments. For more info - http://www.spdsa.net')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'b5b44006-8d0e-4136-b3d8-d17c734faffe', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'    Cataraqui Clippers Girls'' Ambassador Cup', N'Kingston', CAST(0xE2350B00 AS Date), NULL, N'Cataraqui Clippers Soccer Club', N'U12 - U18', CAST(350.00 AS Decimal(18, 2)), CAST(0xCD350B00 AS Date), N'John Nador', NULL, N'ambassadorcupchair@clipperssoccer.com', 0, N'Girls', N'www.clipperssoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'a5da2c77-7b57-4a9d-bcb8-d2236e05d624', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'North East England Football Tournament Mini', N'Gosforth Park', CAST(0x05360B00 AS Date), NULL, N'Pin Point Recruitment Junior Football League', N'U7- U8', CAST(50.00 AS Decimal(18, 2)), CAST(0x0D360B00 AS Date), N'Director', NULL, N'admin@pinpointjuniorleague.co.uk', 0, N'Boys & Girls', N'http://www.pinpointjuniorleague.co.uk', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'b40cd028-6941-4df3-8d8b-da194a15b5e1', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'GIST 2012 - Boys Youth', N'Ottawa', CAST(0xE2350B00 AS Date), NULL, N'Ottawa Gloucester Soccer Club', N'U12 - U18', CAST(425.00 AS Decimal(18, 2)), CAST(0xCD350B00 AS Date), N'Cindy Cornfield', NULL, N'hornets@magma.ca', 0, N'Boys', N'www.gloucesterhornets.ca', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'76a12c45-93b8-464b-b2af-db3b14bab210', N'5475b7f8-0f32-4605-9bda-8b069b836f26', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Harder Avalon Classic 2012', N'Saskatoon', CAST(0xBE350B00 AS Date), NULL, N'Aurora Soccer Club', N'U12 - U18', CAST(350.00 AS Decimal(18, 2)), CAST(0xB7350B00 AS Date), N'Gail Bastien', N'(306) 955-7723', N'gbastien@sasktel.net', 0, N'Boys & Girls', N'http://www.aurorasoccer.info', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'ad105498-97a0-4bf6-9fce-dc7e14d727f3', N'c5c49d20-d687-4e1f-bfe0-81efdc3188a6', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'MASS CUP', N'Tewksbury', CAST(0xD4350B00 AS Date), NULL, N'Tewksbury Youth Soccer', N'U10, U12, U14', CAST(0.00 AS Decimal(18, 2)), CAST(0xD0350B00 AS Date), N'Tom Porzio', N'978-395-7628', N'President@Tewksburyyouthsoccer.org', 0, N'Boys & Girls', N'  www.tewksburyyouthsoccer.org', NULL, NULL, NULL)
GO
print 'Processed 100 total records'
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'123486b2-4fe8-4236-a4be-dfa6b3f41b7c', N'6c46d8ee-914e-4f93-9b33-5be29445211e', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'WEST KELOWNA SUMMER HEAT', N'KELOWNA', CAST(0xFE350B00 AS Date), NULL, N'WESTSIDE YOUTH SOCCER ASSOCIATION', N'U11-U16', CAST(400.00 AS Decimal(18, 2)), CAST(0xDB350B00 AS Date), N'Sylvia Kessler', N'(250) 707-0203', N'info@wysa.ca', 0, N'Boys & Girls', N'http://www.summerheat.ca/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'0ff49edd-ba96-49b8-99dd-e139dad3e8e3', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'50th A.C. Douglas Soccer Tournament', N'Niagara Falls', CAST(0xFD350B00 AS Date), NULL, N'NFSC', N'U11-U18', CAST(350.00 AS Decimal(18, 2)), CAST(0xE8350B00 AS Date), N'Jason Pearson', NULL, N'scheduler@ajaxsoccerclub.ca', 1, N'Boys & Girls', N'http://www.nfsc.ca/tournaments/index/', NULL, N'/uploads/AC douglas9a637886b68f4c3b8a8d759733e99772.JPG', N'August 3 - 5 2012 The A.C. Douglas tournament has a long history and has turned into one of the most prestigious, enjoyable and well attended recreational tournaments in all of Ontario. In keeping with the spirit of this tournament we would like to take this opportunity to invite you to participate in our 50th annual A.C. Douglas Tournament to be held in the beautiful city of Niagara Falls, Ontario. For additional tournament information, please contact John Camelia Tournament Director, at (905) 374-8016 or via email:jcamelia@sympatico.ca')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'c1c5eff8-6d12-494a-8194-e61605830099', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'TiAmo Festival Cup', N'St. Catharienes', CAST(0xF6350B00 AS Date), NULL, N'St. Catharines Roma Soccer', N'U11-U16', CAST(375.00 AS Decimal(18, 2)), CAST(0xE8350B00 AS Date), N'Craig Bondy', NULL, N'romasoccer.info@gmail.com', 0, N'Boys & Girls', N'www.romasoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'6faa839f-9789-41da-ad35-e634833619e3', N'241204c1-864a-4bb0-b434-ac9e339eb602', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Westside United Invitational', N' Plainfield', CAST(0x04360B00 AS Date), NULL, N'Westside United FC', N'U9 - U14', CAST(450.00 AS Decimal(18, 2)), CAST(0x00360B00 AS Date), N'Brian Holmer', NULL, N'Wsusoccer15@att.net', 0, N'Boys & Girls', N'www.wsusoccer.com', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'50b5e9b3-2112-4e49-8bbc-e6ee216f2a88', N'0d51f721-5093-40f0-ac93-45fff0765a5b', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Springfield of Dreams Charity Cup', N'Springfield', CAST(0x0B360B00 AS Date), NULL, N'Springfield Thunder SC', N'U8 - U15', CAST(500.00 AS Decimal(18, 2)), CAST(0x0A360B00 AS Date), N'Paul Maletic', NULL, N'paul4lcc@aol.com', 0, N'Boys & Girls', N'http://www.springfieldofdreams.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'33b80d9f-99e0-4279-9fb0-e983f06817ef', N'33b0e51f-7207-4a26-9874-0204aac129ea', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Michigan Football Club Summer Showcase', N'Canton', CAST(0xEF350B00 AS Date), NULL, N'Michigan State Developmental Soccer League', N'U15 - U19', CAST(0.00 AS Decimal(18, 2)), CAST(0xCD350B00 AS Date), N'Annalisa Van Houten', NULL, N'avanhouten@ameritech.net', 0, N'Boys & Girls', N'http://www.mfcshowcase.com/', NULL, NULL, NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5a341404-62d3-4de4-8b77-ebe77b1a6f73', N'4d700469-98a3-484e-b1a0-340aa2a2f26d', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'CODIAC FIRST TOUCH FC', N'Moncton', CAST(0xEF350B00 AS Date), NULL, N'Codiac Soccer FC', N'U12, 14, 16, 18', CAST(350.00 AS Decimal(18, 2)), CAST(0xF6350B00 AS Date), N'Scott MacMillian', NULL, N'dsfolly@nb.sympatico.ca', 0, N'Boys & Girls', N'http://www.igroops.com/members/codiacsoccer', NULL, N'/uploads/Umbro beach86ca2ed4564a4fe29078a5f6c5774891.JPG', NULL)
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'980587d6-358d-4f12-837e-f556df80022e', N'dbc3bd58-2164-4a2b-a037-5890a6d6d065', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Seaside Classic Soccer Tournament', N'South Kingstown', CAST(0xE9350B00 AS Date), NULL, N'South County Youth Soccer Club', N'U9 - U19', CAST(525.00 AS Decimal(18, 2)), CAST(0xDC350B00 AS Date), N'Peter Paton', NULL, N'ahgagnon@gmail.com', 0, N'Boys & Girls', N'http://www.seasideclassic.com', NULL, NULL, NULL)
/****** Object:  StoredProcedure [dbo].[GetFellowRegionsByRegion]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetFellowRegionsByRegion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetFellowRegionsByRegion]
	@region varchar(50)
AS
	SELECT        RegionID, RegionName, Image, CountryID
FROM            Region
WHERE        (CountryID =
                             (SELECT        Country.CountryID
                               FROM            Region AS Region_1 INNER JOIN
                                                         Country ON Region_1.CountryID = Country.CountryID
                               WHERE        (Region_1.RegionName = @region)))
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllRegionsByCountry]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllRegionsByCountry]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllRegionsByCountry]
	@Country varchar(50)
AS
	SELECT        Region.RegionName, Region.Image
FROM            Region INNER JOIN
                         Country ON Region.CountryID = Country.CountryID
WHERE        (Country.CountryName = @Country)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerPostsByUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerPostsByUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllCoachesCornerPostsByUser]
	@userID uniqueidentifier
AS
	SELECT        CoachesCorner.*
FROM            CoachesCorner
WHERE        (UserID = @userID)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerByRegion]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerByRegion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllCoachesCornerByRegion]
	@region varchar(50)
AS
	SELECT        CoachesCorner.*
FROM            CoachesCorner INNER JOIN
                         Region ON CoachesCorner.RegionID = Region.RegionID
WHERE        (Region.RegionName = @region)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCampsPostsByUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCampsPostsByUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllCampsPostsByUser]
	@userID uniqueidentifier
AS
	SELECT        Camp.*
FROM            Camp
WHERE        (UserID = @userID)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCampsBeforeDate]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCampsBeforeDate]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllCampsBeforeDate]
	@date date
AS
	SELECT        Camp.*
FROM            Camp
WHERE ExpirationDate <= @date
	RETURN
' 
END
GO
/****** Object:  Table [dbo].[Raiting]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Raiting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Raiting](
	[TournamentID] [uniqueidentifier] NOT NULL,
	[UserID] [uniqueidentifier] NOT NULL,
	[TournamentRaiting] [decimal](5, 2) NOT NULL
)
END
GO
INSERT [dbo].[Raiting] ([TournamentID], [UserID], [TournamentRaiting]) VALUES (N'5c335929-cb70-4116-8f68-55c089575749', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', CAST(3.00 AS Decimal(5, 2)))
INSERT [dbo].[Raiting] ([TournamentID], [UserID], [TournamentRaiting]) VALUES (N'e16f664d-bcbc-4679-9bdd-51589152d96b', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', CAST(4.00 AS Decimal(5, 2)))
/****** Object:  StoredProcedure [dbo].[GetAllTournamentsByRegion]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllTournamentsByRegion]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllTournamentsByRegion]
	 @Region varchar(50)
AS
	SELECT        Tournament.*
FROM            Region INNER JOIN
                         Tournament ON Region.RegionID = Tournament.RegionID
WHERE        (Region.RegionName = @Region) ORDER BY Tournament.IsPaidListing ASC
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllTournamentPostsByUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllTournamentPostsByUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllTournamentPostsByUser]
	@userID uniqueidentifier
AS
	SELECT        Tournament.*
FROM            Tournament
WHERE UserID = @userID
ORDER BY Tournament.IsPaidListing ASC 
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetTournamentRaitingFromUser]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTournamentRaitingFromUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetTournamentRaitingFromUser]
	@tournamentID uniqueidentifier,
	@userID uniqueidentifier
AS
	SELECT         TournamentRaiting
FROM            Raiting
WHERE        (TournamentID = @tournamentID) AND (UserID = @userID)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAverageTournamentRating]    Script Date: 10/18/2012 22:25:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAverageTournamentRating]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAverageTournamentRating]
	@tournamentID uniqueidentifier
AS
	SELECT        CAST(SUM(TournamentRaiting) / COUNT(TournamentRaiting) AS decimal(5, 2)) AS AverageRaiting, COUNT(TournamentRaiting) AS NumberOfVotes
FROM            Raiting
WHERE        (TournamentID = @tournamentID)
	RETURN' 
END
GO
/****** Object:  Default [DF_Camp_CampID]    Script Date: 10/18/2012 22:25:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Camp_CampID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Camp_CampID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Camp] ADD  CONSTRAINT [DF_Camp_CampID]  DEFAULT (newid()) FOR [CampID]
END


End
GO
/****** Object:  Default [DF_CoachesCorner_CoachesCornerID]    Script Date: 10/18/2012 22:25:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CoachesCorner_CoachesCornerID]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CoachesCorner_CoachesCornerID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CoachesCorner] ADD  CONSTRAINT [DF_CoachesCorner_CoachesCornerID]  DEFAULT (newid()) FOR [CoachesCornerID]
END


End
GO
/****** Object:  Default [DF_Country_CountryID]    Script Date: 10/18/2012 22:25:05 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Country_CountryID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Country_CountryID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CountryID]  DEFAULT (newid()) FOR [CountryID]
END


End
GO
/****** Object:  Default [DF_Region_RegionID]    Script Date: 10/18/2012 22:25:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Region_RegionID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Region_RegionID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_RegionID]  DEFAULT (newid()) FOR [RegionID]
END


End
GO
/****** Object:  Default [DF_Tournament_TournamentID]    Script Date: 10/18/2012 22:25:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tournament_TournamentID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Tournament_TournamentID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tournament] ADD  CONSTRAINT [DF_Tournament_TournamentID]  DEFAULT (newid()) FOR [TournamentID]
END


End
GO
/****** Object:  Default [DF_User_UserID]    Script Date: 10/18/2012 22:25:06 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_User_UserID]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_User_UserID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UserID]  DEFAULT (newid()) FOR [UserID]
END


End
GO
/****** Object:  ForeignKey [FK_Camp_User]    Script Date: 10/18/2012 22:25:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Camp_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
ALTER TABLE [dbo].[Camp]  WITH CHECK ADD  CONSTRAINT [FK_Camp_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Camp_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
ALTER TABLE [dbo].[Camp] CHECK CONSTRAINT [FK_Camp_User]
GO
/****** Object:  ForeignKey [FK_CoachesCorner_User]    Script Date: 10/18/2012 22:25:05 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CoachesCorner_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
ALTER TABLE [dbo].[CoachesCorner]  WITH CHECK ADD  CONSTRAINT [FK_CoachesCorner_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CoachesCorner_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
ALTER TABLE [dbo].[CoachesCorner] CHECK CONSTRAINT [FK_CoachesCorner_User]
GO
/****** Object:  ForeignKey [FK_Raiting_Tournament]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_Tournament]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting]  WITH CHECK ADD  CONSTRAINT [FK_Raiting_Tournament] FOREIGN KEY([TournamentID])
REFERENCES [dbo].[Tournament] ([TournamentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_Tournament]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting] CHECK CONSTRAINT [FK_Raiting_Tournament]
GO
/****** Object:  ForeignKey [FK_Raiting_User]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting]  WITH CHECK ADD  CONSTRAINT [FK_Raiting_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting] CHECK CONSTRAINT [FK_Raiting_User]
GO
/****** Object:  ForeignKey [FK_Region_Country]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Country]
GO
/****** Object:  ForeignKey [FK_Tournament_Region]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [FK_Tournament_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [FK_Tournament_Region]
GO
/****** Object:  ForeignKey [FK_Tournament_User]    Script Date: 10/18/2012 22:25:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [FK_Tournament_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [FK_Tournament_User]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_CheckSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_CreateUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByEmail] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_FindUsersByName] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetAllUsers] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetNumberOfUsersOnline] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPassword] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetPasswordWithFormat] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByEmail] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByName] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_GetUserByUserId] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_ResetPassword] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_SetPassword] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UnlockUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Membership_UpdateUserInfo] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Paths_CreatePath] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Personalization_GetApplicationId] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_FindState] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAdministration_ResetUserState] TO [aspnet_Personalization_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteInactiveProfiles] TO [aspnet_Profile_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_DeleteProfiles] TO [aspnet_Profile_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProfiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_GetProperties] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Profile_SetProperties] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_RegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_CreateRole] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_DeleteRole] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_GetAllRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Roles_RoleExists] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UnRegisterSchemaVersion] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_Users_DeleteUser] TO [aspnet_Membership_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_AddUsersToRoles] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_FindUsersInRole] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetRolesForUser] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_GetUsersInRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_BasicAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_IsUserInRole] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles] TO [aspnet_Roles_FullAccess] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[aspnet_WebEvent_LogEvent] TO [aspnet_WebEvent_FullAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Applications] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_MembershipUsers] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Profiles] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Roles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Membership_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Profile_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_Users] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_UsersInRoles] TO [aspnet_Roles_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Paths] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_Shared] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO
GRANT SELECT ON [dbo].[vw_aspnet_WebPartState_User] TO [aspnet_Personalization_ReportingAccess] AS [dbo]
GO

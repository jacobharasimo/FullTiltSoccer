/****** Object:  Database [FullTiltSoccer]    Script Date: 02/07/2013 11:56:38 ******/
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbo].[sp_fulltext_database] @action = 'enable'
end
GO
/****** Object:  ForeignKey [FK_Camp_User]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Camp_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
ALTER TABLE [dbo].[Camp] DROP CONSTRAINT [FK_Camp_User]
GO
/****** Object:  ForeignKey [FK_CoachesCorner_User]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CoachesCorner_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
ALTER TABLE [dbo].[CoachesCorner] DROP CONSTRAINT [FK_CoachesCorner_User]
GO
/****** Object:  ForeignKey [FK_Raiting_Tournament]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_Tournament]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting] DROP CONSTRAINT [FK_Raiting_Tournament]
GO
/****** Object:  ForeignKey [FK_Raiting_User]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting] DROP CONSTRAINT [FK_Raiting_User]
GO
/****** Object:  ForeignKey [FK_Region_Country]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [FK_Region_Country]
GO
/****** Object:  ForeignKey [FK_Tournament_Region]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament] DROP CONSTRAINT [FK_Tournament_Region]
GO
/****** Object:  ForeignKey [FK_Tournament_User]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament] DROP CONSTRAINT [FK_Tournament_User]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_UserId]
GO
/****** Object:  StoredProcedure [dbo].[GetAverageTournamentRating]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAverageTournamentRating]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAverageTournamentRating]
GO
/****** Object:  StoredProcedure [dbo].[GetTournamentRaitingFromUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTournamentRaitingFromUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetTournamentRaitingFromUser]
GO
/****** Object:  Table [dbo].[Raiting]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Raiting]') AND type in (N'U'))
DROP TABLE [dbo].[Raiting]
GO
/****** Object:  StoredProcedure [dbo].[GetTournamentByTournamentID]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTournamentByTournamentID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetTournamentByTournamentID]
GO
/****** Object:  StoredProcedure [dbo].[GetAllTournamentPostsByUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllTournamentPostsByUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllTournamentPostsByUser]
GO
/****** Object:  StoredProcedure [dbo].[GetAllTournamentsByRegion]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllTournamentsByRegion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllTournamentsByRegion]
GO
/****** Object:  StoredProcedure [dbo].[GetAllRegionsByCountry]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllRegionsByCountry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllRegionsByCountry]
GO
/****** Object:  StoredProcedure [dbo].[GetFellowRegionsByRegion]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetFellowRegionsByRegion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetFellowRegionsByRegion]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCampsBeforeDate]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCampsBeforeDate]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCampsBeforeDate]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCampsPostsByUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCampsPostsByUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCampsPostsByUser]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCorner]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCorner]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCoachesCorner]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerByCountry]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerByCountry]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCoachesCornerByCountry]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerByRegion]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerByRegion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCoachesCornerByRegion]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerByRegionAndAge]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerByRegionAndAge]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCoachesCornerByRegionAndAge]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerPostsByUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerPostsByUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCoachesCornerPostsByUser]
GO
/****** Object:  Table [dbo].[Tournament]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tournament]') AND type in (N'U'))
DROP TABLE [dbo].[Tournament]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
DROP TABLE [dbo].[Region]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[GetAllCountries]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCountries]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetAllCountries]
GO
/****** Object:  StoredProcedure [dbo].[GetCmsData]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetCmsData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[GetCmsData]
GO
/****** Object:  StoredProcedure [dbo].[CreateNewUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreateNewUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[CreateNewUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
GO
/****** Object:  Table [dbo].[Camp]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Camp]') AND type in (N'U'))
DROP TABLE [dbo].[Camp]
GO
/****** Object:  Table [dbo].[CoachesCorner]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CoachesCorner]') AND type in (N'U'))
DROP TABLE [dbo].[CoachesCorner]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_DeleteAllState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_FindState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_GetCountOfState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetSharedState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAdministration_ResetUserState]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_GetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_PersonalizationPerUser_SetPageSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_SetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_SetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_CreateRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_CreateRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_DeleteRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_GetAllRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_GetAllRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Roles_RoleExists]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Roles_RoleExists]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_CheckSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_RegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UnRegisterSchemaVersion]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RemoveAllRoleMembers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Setup_RestorePermissions]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_AddUsersToRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_AnyDataInTables]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_AnyDataInTables]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_FindUsersByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetAllUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetNumberOfUsersOnline]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetPasswordWithFormat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByEmail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByName]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_GetUserByUserId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_ResetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_SetPassword]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_SetPassword]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UnlockUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Membership_UpdateUserInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_DeleteInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProfiles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Profile_GetProperties]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Profile_GetProperties]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_CreateUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_CreateUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Users_DeleteUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Users_DeleteUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_FindUsersInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetRolesForUser]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_GetUsersInRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_IsUserInRole]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_MembershipUsers]'))
DROP VIEW [dbo].[vw_aspnet_MembershipUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Users]'))
DROP VIEW [dbo].[vw_aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_UsersInRoles]'))
DROP VIEW [dbo].[vw_aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_WebEvent_LogEvent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Paths_CreatePath]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Paths_CreatePath]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Paths]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Paths]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Personalization_GetApplicationId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspnet_Applications_CreateApplication]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Applications]'))
DROP VIEW [dbo].[vw_aspnet_Applications]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Roles]'))
DROP VIEW [dbo].[vw_aspnet_Roles]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_Profiles]'))
DROP VIEW [dbo].[vw_aspnet_Profiles]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_User]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_User]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_aspnet_WebPartState_Shared]'))
DROP VIEW [dbo].[vw_aspnet_WebPartState_Shared]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[CmsData]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CmsData]') AND type in (N'U'))
DROP TABLE [dbo].[CmsData]
GO
/****** Object:  Table [dbo].[User]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Membership]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_Membership]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_OAuthMembership]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_OAuthMembership]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND type in (N'U'))
DROP TABLE [dbo].[webpages_Roles]
GO
/****** Object:  Default [DF_Camp_CampID]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Camp_CampID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Camp_CampID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Camp] DROP CONSTRAINT [DF_Camp_CampID]
END


End
GO
/****** Object:  Default [DF_CoachesCorner_CoachesCornerID]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CoachesCorner_CoachesCornerID]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CoachesCorner_CoachesCornerID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CoachesCorner] DROP CONSTRAINT [DF_CoachesCorner_CoachesCornerID]
END


End
GO
/****** Object:  Default [DF_Country_CountryID]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Country_CountryID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Country_CountryID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF_Country_CountryID]
END


End
GO
/****** Object:  Default [DF_Region_RegionID]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Region_RegionID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Region_RegionID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [DF_Region_RegionID]
END


End
GO
/****** Object:  Default [DF_Tournament_TournamentID]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tournament_TournamentID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Tournament_TournamentID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tournament] DROP CONSTRAINT [DF_Tournament_TournamentID]
END


End
GO
/****** Object:  Default [DF_User_UserID]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_User_UserID]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_User_UserID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] DROP CONSTRAINT [DF_User_UserID]
END


End
GO
/****** Object:  Default [DF__webpages___IsCon__55009F39]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__webpages___IsCon__55009F39]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_Membership]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__webpages___IsCon__55009F39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___IsCon__55009F39]
END


End
GO
/****** Object:  Default [DF__webpages___Passw__55F4C372]    Script Date: 02/07/2013 11:56:38 ******/
IF  EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__webpages___Passw__55F4C372]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_Membership]'))
Begin
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__webpages___Passw__55F4C372]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___Passw__55F4C372]
END


End
GO
/****** Object:  FullTextCatalog [fulltiltsoccer]    Script Date: 02/07/2013 11:56:39 ******/
IF EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'fulltiltsoccer')
EXEC dbo.sp_fulltext_catalog @ftcat=N'fulltiltsoccer', @action=N'drop'
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
DROP SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
DROP SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
DROP SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
DROP SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
DROP SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
DROP SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
DROP SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
DROP SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
DROP SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
DROP SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
DROP SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
DROP SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF  EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
DROP SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [fulltiltsoccer]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [gd_execprocs]    Script Date: 02/07/2013 11:56:39 ******/
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
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Membership_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Personalization_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Profile_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_BasicAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_Roles_ReportingAccess' AND type = 'R')
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'aspnet_WebEvent_FullAccess' AND type = 'R')
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [fulltiltsoccer]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'fulltiltsoccer')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'fulltiltsoccer' AND type = 'R')
CREATE ROLE [fulltiltsoccer] AUTHORIZATION [dbo]

END
GO
/****** Object:  Role [gd_execprocs]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs')
BEGIN
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'gd_execprocs' AND type = 'R')
CREATE ROLE [gd_execprocs] AUTHORIZATION [dbo]

END
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]'
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Membership_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]'
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Personalization_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]'
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Profile_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_BasicAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]'
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]'
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_Roles_ReportingAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]'
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'aspnet_WebEvent_FullAccess')
EXEC sys.sp_executesql N'CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]'
GO
/****** Object:  FullTextCatalog [fulltiltsoccer]    Script Date: 02/07/2013 11:56:39 ******/
IF NOT EXISTS (SELECT * FROM sysfulltextcatalogs ftc WHERE ftc.name = N'fulltiltsoccer')
CREATE FULLTEXT CATALOG [fulltiltsoccer]WITH ACCENT_SENSITIVITY = ON
AS DEFAULT
AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Roles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
 CONSTRAINT [PK__webpages__8AFACE1A58D1301D] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__webpages__8A2B61605BAD9CC8] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'Free')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'Paid')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_OAuthMembership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ProviderUserId] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK__webpages__F53FC0ED4F47C5E3] PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_Membership]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
 CONSTRAINT [PK__webpages__1788CC4C531856C7] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (13, CAST(0x0000A14301761479 AS DateTime), NULL, 1, NULL, 0, N'AC9reCG+I7S3f/8CYkdzC+bcvShT2i3l9vu/T8E7t5LyoDf1L4ytDeJY/b2MGOfhBA==', CAST(0x0000A14301761479 AS DateTime), N'', NULL, NULL)
/****** Object:  Table [dbo].[UserProfile]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserProfile]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[FirstName] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[LastName] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK__UserProf__1788CC4C489AC854] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON),
 CONSTRAINT [UQ__UserProf__C9F284564B7734FF] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON
INSERT [dbo].[UserProfile] ([UserId], [UserName], [FirstName], [LastName], [Email]) VALUES (13, N'jacobharasimo', N'jacob', N'Harasimo', N'jacobharasimo@gmail.com')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
/****** Object:  Table [dbo].[User]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UserID] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[UserProfileID] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND name = N'IX_User')
CREATE UNIQUE NONCLUSTERED INDEX [IX_User] ON [dbo].[User] 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
GO
INSERT [dbo].[User] ([UserID], [UserProfileID]) VALUES (N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', 2)
/****** Object:  Table [dbo].[CmsData]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 02/07/2013 11:56:38 ******/
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
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (N'c0d00b24-57dd-4391-a6dc-50389b2dd071', N'UK/Europe')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (N'1dac8a2e-2e64-412d-a2c9-bdbe5d0f4c9c', N'Canada')
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  Table [dbo].[CoachesCorner]    Script Date: 02/07/2013 11:56:38 ******/
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
INSERT [dbo].[CoachesCorner] ([CoachesCornerID], [UserID], [RegionID], [AgeGroup], [Gender], [TeamName], [ClubName], [Description], [DatePosted], [Contactname], [PhoneNumber], [Email], [Website], [ExpirationDate], [City]) VALUES (N'9726f0b2-fcac-4894-a703-1f054ee7ede4', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'16', N'Boys', N'Comets', N'SUper stars FC', N'The Comets are looking for elite level players for the winter indoor season.', CAST(0x2F350B00 AS Date), N'Dave', N'123 456 7890', N'Dave@email.com', N'Comets.com', CAST(0xB7350B00 AS Date), N'Calgary')
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
/****** Object:  Table [dbo].[Camp]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[CreateNewUser]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreateNewUser]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[CreateNewUser]
	/*
	(
	@parameter1 int = 5,
	@parameter2 datatype OUTPUT
	)
	*/
	@value int
AS
	INSERT INTO [User]
                         (UserProfileID)
VALUES        (@value)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetCmsData]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllCountries]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK__webpages__AF2760AD5F7E2DAC] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[Region]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  Table [dbo].[Tournament]    Script Date: 02/07/2013 11:56:38 ******/
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
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'7f11d658-1016-49b5-90c1-003917adf6a4', N'e6f1439d-0fd9-428c-bcc5-64e411697587', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'39884669-1129-4e39-a068-04f8e6fe0d96', N'2850de9f-9c34-482a-aa03-a8d5ecc96226', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'c590806e-6e9d-4eb7-87d5-07ad6680d6d1', N'b3add56f-24fa-4d35-8393-5e12882e922d', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'398e061a-ef70-408f-a698-0e0774405c91', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'50th A.C. Douglas Soccer Tournament', N'Niagara Falls', CAST(0xFD350B00 AS Date), NULL, N'NFSC', N'U11-U18', CAST(350.00 AS Decimal(18, 2)), CAST(0xE8350B00 AS Date), N'Jason Pearson', NULL, N'scheduler@ajaxsoccerclub.ca', 1, N'Boys & Girls', N'http://www.nfsc.ca/tournaments/index/', NULL, N'/Images/Tournament/AC douglas9a637886b68f4c3b8a8d759733e99772.JPG', N'August 3 - 5 2012 The A.C. Douglas tournament has a long history and has turned into one of the most prestigious, enjoyable and well attended recreational tournaments in all of Ontario. In keeping with the spirit of this tournament we would like to take this opportunity to invite you to participate in our 50th annual A.C. Douglas Tournament to be held in the beautiful city of Niagara Falls, Ontario. For additional tournament information, please contact John Camelia Tournament Director, at (905) 374-8016 or via email:jcamelia@sympatico.ca')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'8bfe0742-a377-461e-aea5-16ba7c5fb16b', N'271a35af-3814-4553-b267-26d7f76f6d60', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'7d9e006e-d9c2-47b2-b169-199172185c9c', N'dbc3bd58-2164-4a2b-a037-5890a6d6d065', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'0e45a855-2277-41c8-9ee1-1999c3dba6d7', N'be584279-d632-44d4-9e3d-703b8086f6a0', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'76069109-5af6-47ca-8db6-1f5b4586672b', N'0d347b49-3719-4c23-92d2-6b0565acc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'ca177de3-3c2f-48f4-8c8c-2e78264fdb2d', N'01d16ff4-cd74-49b3-ae70-264c520ae84c', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'125e042d-1bb8-4aa7-9560-304217ee5c53', N'6c46d8ee-914e-4f93-9b33-5be29445211e', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Umbro Beach Soccer Blast', N'Vancouver', CAST(0x04360B00 AS Date), NULL, N'any', N'U10-U18', CAST(300.00 AS Decimal(18, 2)), CAST(0xDB350B00 AS Date), N'any', N'604-818-2845', N'any', 1, N'Boys & Girls', N'http://www.mysportstournament.com/beachblast/', NULL, N'/Images/Tournament/Umbro beach86ca2ed4564a4fe29078a5f6c5774891.JPG', N'The Beach Soccer Blast is the largest beach soccer event in Canada. Each year more than 150 teams of 10 descend on the picturesque Spanish Banks Beach in Vancouver, British Columbia. Youth teams from Under 10 to Under 18 years are accepted as well as adult teams of any skill level in women’s, men’s and co-ed divisions. So kick off your cleats, the Beach Blast is all about enjoying the sun and the sand, about half time spent wading in the waves and about getting together with friends…')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'c4d55aca-496f-4cb1-97a8-31cf662892d8', N'33b0e51f-7207-4a26-9874-0204aac129ea', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'740dccca-be52-482d-90f1-39d406be3a7a', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Challenge Cup', N'Sherwood Park', CAST(0xFD350B00 AS Date), NULL, N'SPDSA', N'U12 - U18', CAST(475.00 AS Decimal(18, 2)), CAST(0xEF350B00 AS Date), N'Dean Mastrangelo', N'780-449-1343', N'd.mastrangelo@spdsa.net', 1, N'Boys & Girls', N'http://www.spdsa.net', N'11V11', N'/Images/Tournament/Sherwood park AB1546ac55b6ce4c23800686598983245c.JPG', N'Challenge CUP - Sherwood Park Alberta.THE  SPDSA WILL BE HOSTING ITS ANNUAL CHALLENGE CUP INVITATIONAL SOCCER TOURNAMENT.DATE:   AUGUST 3 - 6TH, 2012TIERS:  I, II, IIIAGE  GROUPS: U12 TO U18EARLY  BIRD ENTRY IS:  $450.00 IF ENTERED BY JUNE 30TH, 2012REGULAR  ENTRY IS:  $475.00 IF ENTERED BY JULY 15TH, 2012SPDSA  is following the Canadian Soccer Associations Long Term Player Development Model  which is focusing onDevelopment  over Winning.  As a result both the U12 Tournament will be Jamboree style, with  teams guaranteed 3 games. SPDSA  looks forward to seeing you in our tournaments. For more info - http://www.spdsa.net')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'1fb226fb-3a27-4a7c-9017-4680bbda9e39', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Dukinfield Youth JFC Pre-Season Tournament', N'Dukinfield Cheshire', CAST(0x13360B00 AS Date), NULL, N'Dukinfield Youth JFC.', N'U7 - U16', CAST(45.00 AS Decimal(18, 2)), CAST(0x01360B00 AS Date), N'Gary', NULL, N'gary.sweeney4@btinternet.com', 1, N'Boys & Girls', N'http://www.clubwebsite.co.uk/dukinfieldyouthfc', N'11V11', N'/Images/Tournament/Welsh super cup2a777181c4184125ac89fbb2e0b55bab.JPG', N'For over a quarter of a century Wales has hosted one of Europe''s leading International youth football tournaments and today we see the Welsh International Super Cup operate in the Capital City of Cardiff. With magnificent stadiums, wonderful cultures and a proud city full of history and tradition there is no more fitting host for what is without doubt one of the leading worldwide youth football tournaments. For More info - http://www.welshsupercup.com')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'89bf377c-d482-4e86-9ba6-48b462a39500', N'dc53bca7-f069-483b-b09e-e355a4377bfa', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'53ce7f0c-7b20-4161-b817-4d0ac7973167', N'd10fdc04-1fba-4c44-96f9-b76f06c1871f', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e16f664d-bcbc-4679-9bdd-51589152d96b', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'test2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, N'/Images/Tournament/testImage.jpg', N'Applicake caramels danish candy ice cream cookie bonbon. Soufflé icing tiramisu croissant I love cookie soufflé. Dragée bonbon sesame snaps I love gingerbread dragée bonbon danish. Chocolate apple pie cake biscuit cheesecake bear claw tart. I love powder soufflé. Toffee chocolate oat cake biscuit chocolate bar wypas I love I love. Toffee wafer applicake macaroon lollipop sugar plum wafer jujubes. I love chupa chups apple pie cake. Faworki bear claw sweet roll.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd792e303-5bc0-4933-8c7b-524621f02bbd', N'7765dd00-008b-4c86-8f0c-4c72d1233785', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'a313854e-94aa-43eb-863b-53f13437b591', N'7656d6b3-6fc0-4d01-bef8-c9ada30dc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'18298d32-5eb7-4c4a-a3f8-545f2dce8778', N'998ae199-50d3-4bda-ac95-f978b09a7c45', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5c335929-cb70-4116-8f68-55c089575749', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'test1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, N'/Images/Tournament/testImage.jpg', N'Applicake caramels danish candy ice cream cookie bonbon. Soufflé icing tiramisu croissant I love cookie soufflé. Dragée bonbon sesame snaps I love gingerbread dragée bonbon danish. Chocolate apple pie cake biscuit cheesecake bear claw tart. I love powder soufflé. Toffee chocolate oat cake biscuit chocolate bar wypas I love I love. Toffee wafer applicake macaroon lollipop sugar plum wafer jujubes. I love chupa chups apple pie cake. Faworki bear claw sweet roll.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'cc7e3d7d-cadf-4bae-b493-588b59e45954', N'7ec6c323-f01a-4980-8011-c66a6a47d9d1', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'77d7ab7f-bbce-4380-af3a-5c90f5ce05e0', N'68bd0014-34ee-4280-ba5f-ac0e86c36b07', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd64dd40e-e9d0-4ce5-8a45-5ff418a2af5d', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Liverpool Knowsley Cup', N'Liverpool', CAST(0xF3350B00 AS Date), NULL, N'Loch', N'U11 - U19', CAST(350.00 AS Decimal(18, 2)), CAST(0x5A370B00 AS Date), N'Jill', NULL, N'jill@soccerevents.co.uk', 1, N'Boys & Girls', NULL, NULL, N'/Images/Tournament/Liverpool209c4ed483a0423f987e93cfbb98e648.jpg', N'The 2012 Liverpool Knowsley Cup had yet another successful year. It saw 15 visiting teams from 6 countries attend and had over 96 participating teams. The visiting teams spent the week in Liverpool where they visited many of Liverpool''s top attractions alongside competing in the tournament. Excellent comments have been received, all of whom have gone away with fond memories of the tournament and the surrounding area. Visit the testimonials page at www.lkcup.com for some great feedback about the 2012 tournament from some of the local and visiting teams. Teams commented that the Liverpool Knowsley Cup was "A top notch tournament, one of the very best around," something that we at Soccer Events Limited aim to maintain.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5df7022d-b568-4e86-9345-64d1a03b30cb', N'50483cae-8d57-44a4-8d34-8486d1e10d51', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Loch Lomond Youth Soccer Festival', N'Stirling', CAST(0x68370B00 AS Date), NULL, N'Loch', N'U11 - U19', CAST(350.00 AS Decimal(18, 2)), CAST(0x5B370B00 AS Date), N'Jill', NULL, N'jill@soccerevents.co.uk', 1, N'Boys & Girls', NULL, NULL, N'/Images/Tournament/Loch Lomond Logo9920b421834043408ea0c8c31ae9777c.jpg', N'Loch Lomond Youth Soccer Festival will be entering its 13th year of providing exciting international soccer for young teams from around the world in 2013.  Loch Lomond Youth Soccer Festival is recognized as Scotland''s finest Youth Soccer Tournaments.  In 2012, the tournament hosted 100 teams from 6 different countries. Excellent comments have been received, all of whom have gone away with fond memories of the tournament and the surrounding area. Visit the testimonials page at www.lochlomondsoccer.com for some great feedback about the 2012 tournament from some of the local and visiting teams.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'eee93511-c780-49a8-8779-687fc42c0671', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'TCFC Tournament', N'Thornton Cleveleys   Lancashire', CAST(0x0C360B00 AS Date), NULL, N'TCFC.', N'U7-U12', CAST(30.00 AS Decimal(18, 2)), CAST(0x01360B00 AS Date), N'Steve', NULL, N'stevespencer73@msn.com    ', 1, N'Boys & Girls', N'http://www.thorntoncleveleysfc.org', N'11V11', N'/Images/Tournament/Welsh super cup2a777181c4184125ac89fbb2e0b55bab.JPG', N'For over a quarter of a century Wales has hosted one of Europe''s leading International youth football tournaments and today we see the Welsh International Super Cup operate in the Capital City of Cardiff. With magnificent stadiums, wonderful cultures and a proud city full of history and tradition there is no more fitting host for what is without doubt one of the leading worldwide youth football tournaments. For More info - http://www.welshsupercup.com')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'4c91f92f-6d3c-409f-b864-6ae81da00356', N'32975301-abe2-4874-a36d-a1ba38625ebb', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'test', N'test', CAST(0xAF350B00 AS Date), NULL, N'test', N'12', NULL, CAST(0xA9350B00 AS Date), N'test', N'test', N'test@me.ca', 0, N'Boys & Girls', N'www.google.com', NULL, N'', N'test')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'8a5747a4-00e4-4661-9db9-6bc5556c56d6', N'bbccdd83-4613-4bfa-a60d-68f92e1131c1', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'087f0e09-ed55-465b-b5d4-6bf71eba62a5', N'9ef25c60-1e82-4a2f-abba-2c78aefb1a79', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Cobras FC Summer Classic Tournament', N'Rochester', CAST(0xE8350B00 AS Date), NULL, N'Cobras FC', N'U8 - U19', CAST(425.00 AS Decimal(18, 2)), CAST(0xD4350B00 AS Date), N'Kim', NULL, NULL, 1, N'Boys & Girls', N'http://cobrasfc.org/', NULL, N'/Images/Tournament/Cobras FCd1576db9f9d442a7b6e94913870f1053.JPG', N'Our tournament attracts some of the finest Boys and Girls U8-U19 soccer teams from across the northeast and Canada resulting in a solid competitive tournament. Every team is guaranteed at least 3 games. Games are played on high quality, well groomed fields. Saturday night "Family Fun Festival" including dinner, entertainment and fireworks. This is considered a "friendly non-competitive" tournament for ages U8-U10.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'2f38ac22-9891-4b79-b953-6cd90239e949', N'e6fc4973-1d12-4bb9-9e00-416ea8dba629', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'4fd0441f-bf40-4b21-a46a-6e0f112d7398', N'd152e8b5-dd97-41a3-9ebb-ec546e39fcc0', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'55c519d2-3d8a-41b6-b2e4-6f1fe95474d5', N'3a312cbf-8bd4-44fc-9aed-289c0f3af896', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'ddba0e49-8733-40f2-8347-6fe9dfecd98f', N'4c82b197-2ff8-4864-9fad-532760936a92', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'6ea86373-c6e4-4e78-8da4-75a373df1c33', N'0d51f721-5093-40f0-ac93-45fff0765a5b', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'BSA Haunted Classic', N'beavercreek', CAST(0x4A360B00 AS Date), NULL, N'bsa', N'U8 - U15', CAST(400.00 AS Decimal(18, 2)), CAST(0x3D360B00 AS Date), N'Tim Grinstead', NULL, NULL, 1, N'Boys & Girls', N'http://www.hauntedclassic.com/', NULL, N'/Images/Tournament/Haunted Classiccf6afe4c0e2b4facb3176899acf1fd93.jpeg', N'The Haunted Classic is hosted by the Beavercreek Soccer Association (BSA) and is a family-oriented, fun-filled event that is a great way to end the fall season. Many fun events, vendors and awards are planned. Be sure to visit this website often for updates. The Tournament format calls for three preliminary round games with Final Matches in each division. Each team is guaranteed three games. Some divisions may have Semi-Final Matches depending on the number of teams in the division. Individual and Team trophies will be awarded for 1st and 2nd places.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'cb87a9cf-c3e1-43ba-9ec0-7805f2267f03', N'e320f806-dee6-413e-acbb-1bcf18bf8757', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'13aaa318-974b-48d2-9d55-7e13e9535096', N'e6f1439d-0fd9-428c-bcc5-64e411697587', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'The Mayors Cup', N'Salt Lake City', CAST(0x02360B00 AS Date), NULL, N'Sparta United Soccer Club', N'U9 - U18', CAST(500.00 AS Decimal(18, 2)), CAST(0x17360B00 AS Date), N'Ben Vandenhazel', NULL, N'sparta1@spartaunited.org', 1, N'Boys & Girls', N'http://www.forzafutbolclub.com', NULL, N'/Images/Tournament/mayors cup 24a93a5abb0154937b50ee57c802b9ef8.jpg', N'The Mayor’s Cup 2012Labor Day Weekend August 29, 2012 - September 1, 2012 September 3, 2012 Semi-Finals and FinalsHost: Forza Futbol Club Ages: Boys U8-U18 and Girls U8-U14Location: Bountiful, Centerville, FarmingtonFee: U8 $350; U9-U11 $450; U12-U18 $550Registration Is Now Open')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e4135fe5-1d20-4a55-9e9f-7e68c27bdf27', N'1d6ad0cf-5343-46d7-805d-40b099fb85bf', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'24e863f7-865f-42ec-907e-822a1b9ee8bf', N'de71e466-b654-4c85-a823-31376db552ae', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'ba745112-8a67-48ca-a32c-852425132ec4', N'887b356c-bbcd-40a4-990f-1d17382b91a7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'be57c0dd-679f-44eb-abec-894e2b292513', N'9ef25c60-1e82-4a2f-abba-2c78aefb1a79', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'40a5546d-ad13-49ce-9105-8b6c59dcb1bb', N'7656d6b3-6fc0-4d01-bef8-c9ada30dc729', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'TTD Welsh International Super Cup', N'Cardif', CAST(0xF1350B00 AS Date), NULL, N'Team Tours Direct', NULL, CAST(500.00 AS Decimal(18, 2)), CAST(0xEF350B00 AS Date), N'info', N'123', N'none', 1, N'Boys', N'http://www.welshsupercup.com/index.php?id=2', NULL, N'/Images/Tournament/Welsh super cup2a777181c4184125ac89fbb2e0b55bab.JPG', N'For over a quarter of a century Wales has hosted one of Europe''s leading International youth football tournaments and today we see the Welsh International Super Cup operate in the Capital City of Cardiff. With magnificent stadiums, wonderful cultures and a proud city full of history and tradition there is no more fitting host for what is without doubt one of the leading worldwide youth football tournaments. For More info - http://www.welshsupercup.com')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'23eccb7c-14b3-41c3-a87d-93e327affd9a', N'f46814e4-b085-4362-8035-89bec7a98e5a', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'cbcb4537-8e4c-4265-ba4e-98b8cf2b51bf', N'15b3e177-f8e0-44c3-af59-da88efbbeda1', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'1f7ba9d5-895b-4446-b748-98cdd955d792', N'f8311c83-c983-41eb-af7e-2a76c13c8b61', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'dbf446c7-5ecd-493e-959e-9f27020a068c', N'ef5a50d9-51cc-44bc-893b-b929a560cdc2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'617398a8-77e8-47a0-aecb-a1141fbe9ee1', N'406db0e5-de60-4cc8-abc8-e05dbc5d15e1', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'bd3ffc9c-5dca-4fc1-87b3-a1fbf6b136ed', N'c5c49d20-d687-4e1f-bfe0-81efdc3188a6', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'134b1191-7092-4b93-871d-ac8a3cbff27b', N'e8c92fc8-2c2e-4c9f-b7f8-992c475b7e7a', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'21965065-dc3e-476d-bdb9-aeca2dc2326d', N'7de1bad4-a488-45b7-a3f5-711c4e519e35', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'8c027ed2-677d-4447-b710-b7a32e79e1fa', N'51310c95-84d8-48f3-9575-5447b2497ef8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'015ef3b9-9b89-49fb-810e-ba1f1d7a432d', N'f1c48f4e-6d30-4b3f-b552-4c34b32bf0f9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd1ffe1be-5eae-4adc-af8c-ba7dfb464615', N'f0132463-1dfe-493d-8aef-7fdb81335dfa', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'4e5e4ba8-9e74-4556-b7ea-ba94e504e54e', N'0d51f721-5093-40f0-ac93-45fff0765a5b', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'4ee03466-6a2b-47ab-b2d2-bb2579ce950d', N'd9a78296-e63b-4f87-ba6b-b862d2875cd0', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'6adf7df0-18db-4ed6-a791-bd56992b4151', N'f7af9b3b-5d2e-4cbd-9830-47c68b378614', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'fdff22f7-25c5-4ec2-9283-c463636c294d', N'017cc2a4-6070-4032-a1aa-57c4d0add5b7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'39aa03e8-f4af-41ed-9023-c5fad19937c0', N'42e730cc-8ada-498a-b057-8a0bea5615a7', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e6890e37-119f-4110-bf3c-c7844e481e6d', N'44243e76-6670-496e-a1d1-19c1c76024ea', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'21759544-a6a7-4ea6-94e1-c9328f16c24a', N'7770c81f-5afc-4a75-87dd-7265e1c24aa0', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'd41e48c6-d7dd-4a45-9fa0-c933a6fb8c32', N'149bf3e8-a370-4102-8821-f791c5b38ca9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'8c3e685c-54d9-4d8c-8402-ce8948e1c72f', N'cfe10f27-17c5-4632-b6c9-ada0cb5b9c51', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'dd9bd4eb-0996-4f8d-9aca-d1b75ec93ce6', N'4c5f3f98-f76b-4a74-a078-d22e49cfd9ab', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'5e87aaad-52aa-4348-b303-d4981a4b5749', N'd290407e-882e-4509-a29b-d1b957fdfaa8', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'9f74d8fd-3224-4fdf-8780-d5aa58a66ba2', N'c67aaca1-4f7c-4ffc-966c-93fd4b7ed2ae', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'a9317f8b-598c-4d02-a86b-da5ba33c52f2', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Lammack Juniors FC Annual Soccer Tournament.', N'Blackburn', CAST(0x0C360B00 AS Date), NULL, N'Lammack Juniors FC.', N'U7-U15', CAST(30.00 AS Decimal(18, 2)), CAST(0x01360B00 AS Date), N'Director', NULL, N'lammack.juniors@ntlworld.com     ', 0, N'Boys & Girls', N'http://www.blackburnsports.co.uk', N'11V11', N'', N'For over a quarter of a century Wales has hosted one of Europe''s leading International youth football tournaments and today we see the Welsh International Super Cup operate in the Capital City of Cardiff. With magnificent stadiums, wonderful cultures and a proud city full of history and tradition there is no more fitting host for what is without doubt one of the leading worldwide youth football tournaments. For More info - http://www.welshsupercup.com')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'11360b27-3114-4eb5-82b3-e092e4f4dce7', N'241204c1-864a-4bb0-b434-ac9e339eb602', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'31bddef5-d421-460a-8360-e32c4f7b87fb', N'93883549-75d3-422a-875b-8658850da03a', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'585f9178-8cae-439c-bb59-e439bc6448c5', N'5475b7f8-0f32-4605-9bda-8b069b836f26', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'2983ffca-69d6-41d8-93d0-e75a76056914', N'c144dc22-17d9-4f63-a470-10be31bc67fc', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'b767ae68-9a15-4d2b-85b5-ed6e9188762f', N'3453d7b0-1303-4563-ab55-632cd5396fa2', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'8d0e2144-ef38-4fdd-b733-f5640d59ec5e', N'd1d55650-ce32-4657-9ed4-1e9039e90af4', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'e307ec6b-7422-451d-851b-f57c08acb50a', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'BJFF (Blackpool) Annual Summer Football Tournament', N'Blackpool', CAST(0x13360B00 AS Date), NULL, N'Bispham Junior Football Federation', N'U6 - U16', CAST(35.00 AS Decimal(18, 2)), CAST(0x01360B00 AS Date), N'Andrew', NULL, N'agriffit@csc.com', 0, N'Boys & Girls', N'http://www.clubwebsite.co.uk/bjff', N'11V11', N'', N'For over a quarter of a century Wales has hosted one of Europe''s leading International youth football tournaments and today we see the Welsh International Super Cup operate in the Capital City of Cardiff. With magnificent stadiums, wonderful cultures and a proud city full of history and tradition there is no more fitting host for what is without doubt one of the leading worldwide youth football tournaments. For More info - http://www.welshsupercup.com')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'42ec0c9f-09d0-48be-b59d-f60cc3f8d74c', N'8e3ce80f-2144-488c-a3eb-f8fc3a0df838', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'b45b675f-8016-41e9-8546-f69777bc867d', N'43c678ac-d7da-4f6b-b01d-34cf3d4c3cd9', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Oadby Owls (Leicester)', N'Evington Leicester', CAST(0x05360B00 AS Date), NULL, N'Oadby Owls.', N'U11 - U16', CAST(50.00 AS Decimal(18, 2)), CAST(0x01360B00 AS Date), N'Rob', NULL, N'robfarrar@oadbyowls.com', 0, N'Boys & Girls', N'http://oadbyowls.com', N'11V11', N'', N'For over a quarter of a century Wales has hosted one of Europe''s leading International youth football tournaments and today we see the Welsh International Super Cup operate in the Capital City of Cardiff. With magnificent stadiums, wonderful cultures and a proud city full of history and tradition there is no more fitting host for what is without doubt one of the leading worldwide youth football tournaments. For More info - http://www.welshsupercup.com')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'3df2a5ce-d4ef-4745-99f7-f895471efe6d', N'50483cae-8d57-44a4-8d34-8486d1e10d51', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
INSERT [dbo].[Tournament] ([TournamentID], [RegionID], [UserID], [TournamentName], [TournamentLocation], [TournamentDate], [TournamentTime], [TournamentHostingClub], [TournamentAgeGroup], [TournamentTeamFee], [TournamentRegistrationDeadline], [ContactName], [ContactNumber], [ContactEmail], [IsPaidListing], [TournamentGender], [TournamentClubSite], [TournamentFormat], [TournamentImageUrl], [TournamentDescription]) VALUES (N'28d80aeb-ce76-49e2-b206-faa8bfdd1547', N'a53e93cb-b92f-4621-a4f8-58e1b12196ca', N'd2b2cedb-4f8d-4702-b48d-c147f7425efd', N'Your Tournament can be here for FREE', N'Toronto', CAST(0x93360B00 AS Date), NULL, N'Fulltilt', NULL, CAST(300.00 AS Decimal(18, 2)), CAST(0x92360B00 AS Date), N'bob', NULL, N'info@fulltiltsoccer.com', 1, N'Boys', N'www.fulltiltsoccer.com', NULL, N'/Images/Tournament/FTS Logo 2a8bf900647024b3c87e58889a51da023.jpg', N'You can list your tournament here for free. Contact info@fulltiltsoccer.com for more info. Don''t forget about our forums too! If you are a coach, let tournament directors know about this site so we can fill these pages quickly.')
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerPostsByUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerByRegionAndAge]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerByRegionAndAge]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllCoachesCornerByRegionAndAge]
	@regionName varchar(50),
	@ageGroup varchar(50)
AS
	SELECT        *
FROM            CoachesCorner INNER JOIN
                         Region ON CoachesCorner.RegionID = Region.RegionID
WHERE        (Region.RegionName = @regionName) AND (CoachesCorner.AgeGroup = @ageGroup)
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerByRegion]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCornerByCountry]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCornerByCountry]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllCoachesCornerByCountry]
	@countryName varchar(50)
	
AS
	SELECT        *
FROM            CoachesCorner INNER JOIN
                         Region ON CoachesCorner.RegionID = Region.RegionID INNER JOIN
                         Country ON Region.CountryID = Country.CountryID
WHERE        (Country.CountryName = @countryName)
ORDER BY CoachesCorner.AgeGroup, CoachesCorner.RegionID
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCoachesCorner]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetAllCoachesCorner]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetAllCoachesCorner]	
	
AS
	SELECT        *
FROM            CoachesCorner INNER JOIN
                         Region ON CoachesCorner.RegionID = Region.RegionID INNER JOIN
                         Country ON Region.CountryID = Country.CountryID
ORDER BY CoachesCorner.AgeGroup, Country.CountryID, CoachesCorner.RegionID 
	RETURN
' 
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllCampsPostsByUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllCampsBeforeDate]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetFellowRegionsByRegion]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllRegionsByCountry]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllTournamentsByRegion]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAllTournamentPostsByUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetTournamentByTournamentID]    Script Date: 02/07/2013 11:56:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetTournamentByTournamentID]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[GetTournamentByTournamentID]
	@tournamentID uniqueidentifier
AS
	SELECT        *
FROM            Tournament
WHERE        (TournamentID = @tournamentID)
	RETURN
' 
END
GO
/****** Object:  Table [dbo].[Raiting]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetTournamentRaitingFromUser]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAverageTournamentRating]    Script Date: 02/07/2013 11:56:38 ******/
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
/****** Object:  Default [DF_Camp_CampID]    Script Date: 02/07/2013 11:56:38 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Camp_CampID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Camp_CampID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Camp] ADD  CONSTRAINT [DF_Camp_CampID]  DEFAULT (newid()) FOR [CampID]
END


End
GO
/****** Object:  Default [DF_CoachesCorner_CoachesCornerID]    Script Date: 02/07/2013 11:56:38 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_CoachesCorner_CoachesCornerID]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_CoachesCorner_CoachesCornerID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CoachesCorner] ADD  CONSTRAINT [DF_CoachesCorner_CoachesCornerID]  DEFAULT (newid()) FOR [CoachesCornerID]
END


End
GO
/****** Object:  Default [DF_Country_CountryID]    Script Date: 02/07/2013 11:56:38 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Country_CountryID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Country_CountryID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CountryID]  DEFAULT (newid()) FOR [CountryID]
END


End
GO
/****** Object:  Default [DF_Region_RegionID]    Script Date: 02/07/2013 11:56:38 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Region_RegionID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Region_RegionID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_RegionID]  DEFAULT (newid()) FOR [RegionID]
END


End
GO
/****** Object:  Default [DF_Tournament_TournamentID]    Script Date: 02/07/2013 11:56:38 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Tournament_TournamentID]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Tournament_TournamentID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Tournament] ADD  CONSTRAINT [DF_Tournament_TournamentID]  DEFAULT (newid()) FOR [TournamentID]
END


End
GO
/****** Object:  Default [DF_User_UserID]    Script Date: 02/07/2013 11:56:38 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_User_UserID]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_User_UserID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UserID]  DEFAULT (newid()) FOR [UserID]
END


End
GO
/****** Object:  Default [DF__webpages___IsCon__55009F39]    Script Date: 02/07/2013 11:56:38 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__webpages___IsCon__55009F39]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_Membership]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__webpages___IsCon__55009F39]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] ADD  CONSTRAINT [DF__webpages___IsCon__55009F39]  DEFAULT ((0)) FOR [IsConfirmed]
END


End
GO
/****** Object:  Default [DF__webpages___Passw__55F4C372]    Script Date: 02/07/2013 11:56:38 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__webpages___Passw__55F4C372]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_Membership]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__webpages___Passw__55F4C372]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[webpages_Membership] ADD  CONSTRAINT [DF__webpages___Passw__55F4C372]  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
END


End
GO
/****** Object:  ForeignKey [FK_Camp_User]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Camp_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
ALTER TABLE [dbo].[Camp]  WITH CHECK ADD  CONSTRAINT [FK_Camp_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Camp_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Camp]'))
ALTER TABLE [dbo].[Camp] CHECK CONSTRAINT [FK_Camp_User]
GO
/****** Object:  ForeignKey [FK_CoachesCorner_User]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CoachesCorner_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
ALTER TABLE [dbo].[CoachesCorner]  WITH CHECK ADD  CONSTRAINT [FK_CoachesCorner_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CoachesCorner_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[CoachesCorner]'))
ALTER TABLE [dbo].[CoachesCorner] CHECK CONSTRAINT [FK_CoachesCorner_User]
GO
/****** Object:  ForeignKey [FK_Raiting_Tournament]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_Tournament]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting]  WITH CHECK ADD  CONSTRAINT [FK_Raiting_Tournament] FOREIGN KEY([TournamentID])
REFERENCES [dbo].[Tournament] ([TournamentID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_Tournament]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting] CHECK CONSTRAINT [FK_Raiting_Tournament]
GO
/****** Object:  ForeignKey [FK_Raiting_User]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting]  WITH CHECK ADD  CONSTRAINT [FK_Raiting_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Raiting_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Raiting]'))
ALTER TABLE [dbo].[Raiting] CHECK CONSTRAINT [FK_Raiting_User]
GO
/****** Object:  ForeignKey [FK_Region_Country]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region]  WITH CHECK ADD  CONSTRAINT [FK_Region_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Region_Country]') AND parent_object_id = OBJECT_ID(N'[dbo].[Region]'))
ALTER TABLE [dbo].[Region] CHECK CONSTRAINT [FK_Region_Country]
GO
/****** Object:  ForeignKey [FK_Tournament_Region]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [FK_Tournament_Region] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Region] ([RegionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [FK_Tournament_Region]
GO
/****** Object:  ForeignKey [FK_Tournament_User]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament]  WITH CHECK ADD  CONSTRAINT [FK_Tournament_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Tournament_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Tournament]'))
ALTER TABLE [dbo].[Tournament] CHECK CONSTRAINT [FK_Tournament_User]
GO
/****** Object:  ForeignKey [fk_RoleId]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
/****** Object:  ForeignKey [fk_UserId]    Script Date: 02/07/2013 11:56:38 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[webpages_UsersInRoles]'))
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
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

// this class contains all the APIs and their endpoints.
class APIs {
  // static const String baseUrl = "https://us-central1-cr-mobile-13fb4.cloudfunctions.net/app/api/v1";

  static const String signUp = '/auth/signup';

  ///Games
  static const String allGames = '/games/getAllGames';
  static const String myGames = '/games/mygames';

  static const String checkVoucher = '/games/validateVoucher';

  /// Game
  static const String getNPCInformants = '/games/getNpcInformant';
  static const String getNPCQuestions = '/games/getNpcQuestions';
  static const String getGame = '/games';
  static const String gameleaderboard = '/games/gameleaderboard';

  /// Team
  static const String changeLeadership = '/teams/changeleadership';
  static const String finishGame = '/teams/finishgame';
  static const String validateJoinTeam = '/teams/validateJoinTeam';
  static const String teamMembers = '/teams/getTeam';
  static const String updateTeam = '/teams/updateTeam';
  static const String uploadTeamPhotos = '/teams/uploadTeamPhotos';
  static const String finalizedPhotos = '/teams/finalizedPhotos';


  /// Team Reporting
  static const String getRemainingQuestions = '/team_reporting/getRemainingQuestions';
  static const String updateTeamReporting = '/team_reporting/updateTeamReporting';
  static const String getAskedInformants = '/team_reporting/getAskedInformants';
  static const String getAskedHints = '/team_reporting/getAskedHints';
  static const String getAskedRiddles = '/team_reporting/getAskedRIddles';
  static const String getUsedInventory = '/team_reporting/getUsedInventory';
  static const String markHint = '/team_reporting/markHint';
  static const String markRiddle = '/team_reporting/markRIddle';
  static const String markInformant = '/team_reporting/markInformantQuestion';
  static const String getAskedQuestions = '/team_reporting/getAskedQuestions';
  static const String updateVisitedNPC = '/team_reporting/updateVisitedNpc';
  static const String updateInventory = '/team_reporting/updateInventory';
  static const String createNPCNote = '/team_reporting/createNpcNote';
  static const String updateNPCNote = '/team_reporting/updateNpcNote';
  static const String askQuestion = '/team_reporting/askQuestion';
  static const String getNPCNotes = '/team_reporting/getNpcNotes';
  static const String addPenalty = '/team_reporting/addpenalty';
  static const String addReward = '/team_reporting/addreward';
  static const String addPause = '/team_reporting/addpause';
  static const String markNews = '/team_reporting/markNews';
  static const String getMarkedNews = '/team_reporting/getMarkedNews';

  /// Others
  static const String getNews = '/news/getNews';

}

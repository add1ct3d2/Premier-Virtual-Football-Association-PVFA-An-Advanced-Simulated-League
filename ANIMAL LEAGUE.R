#Football Simulator

# Set up teams
library(dplyr)
library(readxl)
teamStats <- read_excel("Official Animal League - Simulation.xlsx")
EagleEyedUnitedStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Eagle Eyed United", range = "A6:Q17")
LionheartRoversStats <-read_excel("Official Animal League - Simulation.xlsx", sheet = "Lionheart Rovers", range = "A6:Q17")
CobraStrikeFCStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Cobra Strike FC", range = "A6:Q17")
FalconFlyersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Falcon Flyers", range = "A6:Q17")
PantherProwlersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Panther Prowlers", range = "A6:Q17")
SharkfinAthleticStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Sharkfin Athletic", range = "A6:Q17")
WolfpackWanderersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Wolfpack Wanderers", range = "A6:Q17")
RhinoRampageStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Rhino Rampage", range = "A6:Q17")
TigerTacklersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Tiger Tacklers", range = "A6:Q17")
BearBrigadeStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Bear Brigade", range = "A6:Q17")
HawkHavenStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Hawk Haven", range = "A6:Q17")
PythonPowerStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Python Power", range = "A6:Q17")
DolphinDribblersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Dolphin Dribblers", range = "A6:Q17")
JaguarJuggernautsStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Jaguar Juggernauts", range = "A6:Q17")
ElephantElitesStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Elephant Elites", range = "A6:Q17")
CheetahChasersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Cheetah Chasers", range = "A6:Q17")
RavenRaidersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Raven Raiders", range = "A6:Q17")
StallionStrikersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Stallion Strikers", range = "A6:Q17")
BuffaloBattlersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Buffalo Battlers", range = "A6:Q17")
GorillaGoalscorersStats <- read_excel("Official Animal League - Simulation.xlsx", sheet = "Gorilla Goalscorers", range = "A6:Q17")


allTeamPlayers <- list(
  "Eagle Eyed United" = EagleEyedUnitedStats,
  "Lionheart Rovers" = LionheartRoversStats,
  "Cobra Strike FC" = CobraStrikeFCStats,
  "Falcon Flyers" = FalconFlyersStats,
  "Panther Prowlers" = PantherProwlersStats,
  "Sharkfin Athletic" = SharkfinAthleticStats,
  "Wolfpack Wanderers" = WolfpackWanderersStats,
  "Rhino Rampage" = RhinoRampageStats,
  "Tiger Tacklers" = TigerTacklersStats,
  "Bear Brigade" = BearBrigadeStats,
  "Hawk Haven" = HawkHavenStats,
  "Python Power" = PythonPowerStats,
  "Dolphin Dribblers" = DolphinDribblersStats,
  "Jaguar Juggernauts" = JaguarJuggernautsStats,
  "Elephant Elites" = ElephantElitesStats,
  "Cheetah Chasers" = CheetahChasersStats,
  "Raven Raiders" = RavenRaidersStats,
  "Stallion Strikers" = StallionStrikersStats,
  "Buffalo Battlers" = BuffaloBattlersStats,
  "Gorilla Goalscorers" = GorillaGoalscorersStats
)

teams <- c("Eagle Eyed United", "Lionheart Rovers", "Cobra Strike FC", "Falcon Flyers", "Panther Prowlers", 
           "Sharkfin Athletic", "Wolfpack Wanderers", "Rhino Rampage", "Tiger Tacklers", "Bear Brigade", 
           "Hawk Haven", "Python Power", "Dolphin Dribblers", "Jaguar Juggernauts", "Elephant Elites", 
           "Cheetah Chasers", "Raven Raiders", "Stallion Strikers", "Buffalo Battlers", "Gorilla Goalscorers")

#Football Simulator

leagueTable <- data.frame(Rank = integer(length(teams)), Team = teams, Points = integer(length(teams)), 
                          Played = integer(length(teams)), Wins = integer(length(teams)), 
                          Draws = integer(length(teams)), Losses = integer(length(teams)), 
                          GF = integer(length(teams)), GA = integer(length(teams)), GD = integer(length(teams)))

## Initialize match schedule

# Function to generate a double round-robin schedule
generateDoubleRoundRobin <- function(teams) {
  n <- length(teams)
  
  # Create the first half of the schedule
  firstHalfSchedule <- data.frame(Round = integer(), HomeTeam = character(), AwayTeam = character(), stringsAsFactors = FALSE)
  for (i in 1:(n-1)) {
    for (j in 1:(n/2)) {
      home <- teams[j]
      away <- teams[n - j + 1]
      firstHalfSchedule <- rbind(firstHalfSchedule, data.frame(Round = i, HomeTeam = home, AwayTeam = away))
    }
    teams <- c(teams[1], teams[n], teams[2:(n-1)])
  }
  
  # Create the second half of the schedule by reversing home and away teams
  secondHalfSchedule <- firstHalfSchedule
  secondHalfSchedule$Round <- secondHalfSchedule$Round + (n-1) # Adjust round numbers for the second half
  secondHalfSchedule <- secondHalfSchedule[, c("Round", "AwayTeam", "HomeTeam")] # Swap Home and Away
  names(secondHalfSchedule)[2:3] <- c("HomeTeam", "AwayTeam") # Correct column names after swapping
  
  # Combine the two halves
  fullSchedule <- rbind(firstHalfSchedule, secondHalfSchedule)
  
  return(fullSchedule)
}

schedule <- generateDoubleRoundRobin(teams)
print(schedule)


#Selecting Goalscorers
selectGoalScorers <- function(players, goals) {
  goalScorers <- character(0)
  if (goals > 0) {
    for (i in 1:goals) {
      # Select a player based on their scoring probability
      selectedPlayer <- sample(players$KnownAs, 1, prob = players$ScoringProbability)
      goalScorers <- c(goalScorers, selectedPlayer)
    }
  }
  return(goalScorers)
}

selectGoalScorersWithMinutes <- function(players, goals) {
  goalScorers <- character(0)
  if (goals > 0) {
    for (i in 1:goals) {
      # Select a player based on their scoring probability
      selectedPlayer <- sample(players$KnownAs, 1, prob = players$ScoringProbability)
      # Assign a random minute between 1 and 90
      minuteScored <- sample(1:90, 1)
      # Concatenate player's name with the minute scored
      goalScorers <- c(goalScorers, paste(selectedPlayer, "(", minuteScored, "min)", sep=""))
    }
  }
  return(goalScorers)
}


# Match Simulation
team1Stats <- teamStats[teamStats$Team == "Eagle Eyed United",c(1:5) ]
team2Stats <- teamStats[teamStats$Team == "Lionheart Rovers",c(1:5) ]
team1Players <- EagleEyedUnitedStats[, c("KnownAs", "ScoringProbability")]
team2Players <- LionheartRoversStats[, c("KnownAs", "ScoringProbability")]

simulateMatch <- function(team1Stats, team2Stats, team1Players, team2Players) {
  # Base mean and standard deviation for goals
  baseMeanGoals <- 1.5
  baseSdGoals <- 1.5
  
  # Adjust mean goals based on team attack and opponent defense
  meanGoalsTeam1 <- baseMeanGoals + (team1Stats$Attack - team2Stats$Defense)*2 / 100
  meanGoalsTeam2 <- baseMeanGoals + (team2Stats$Attack - team1Stats$Defense)*2 / 100
  
  # Adjust standard deviation based on team consistency
  sdGoalsTeam1 <- baseSdGoals * (1 - (team1Stats$Consistency / 200))
  sdGoalsTeam2 <- baseSdGoals * (1 - (team2Stats$Consistency / 200))
  
  # Generate random goals for each team
  goalsTeam1 <- round(rnorm(1, mean = max(meanGoalsTeam1, 0), sd = max(sdGoalsTeam1, 0.5)))
  goalsTeam2 <- round(rnorm(1, mean = max(meanGoalsTeam2, 0), sd = max(sdGoalsTeam2, 0.5)))
  
  # Ensure that goals are not negative
  goalsTeam1 <- max(goalsTeam1, 0)
  goalsTeam2 <- max(goalsTeam2, 0)
  
  # Select goal scorers for each team
  goalScorersTeam1 <- selectGoalScorers(team1Players, goalsTeam1)
  goalScorersTeam2 <- selectGoalScorers(team2Players, goalsTeam2)
  
  # Determine match outcome
  if (goalsTeam1 > goalsTeam2) {
    result <- "Win"
  } else if (goalsTeam1 == goalsTeam2) {
    result <- "Draw"
  } else {
    result <- "Loss"
  }
  
  return(list(goals=c(goalsTeam1, goalsTeam2), result=result, goalScorers=list(Team1=goalScorersTeam1, Team2=goalScorersTeam2)))
}

matchResults <- simulateMatch(team1Stats, team2Stats, team1Players, team2Players)

matchResults

#Simulate Round
simulateRound <- function(roundNumber, schedule, teamStats, allTeamPlayers) {
  roundMatches <- subset(schedule, Round == roundNumber)
  
  # Initialize results data frame to include goal scorers and minutes
  results <- data.frame(
    HomeTeam = character(), 
    AwayTeam = character(), 
    HomeGoals = integer(), 
    AwayGoals = integer(), 
    HomeGoalScorers = character(), 
    AwayGoalScorers = character(), 
    HomeGoalMinutes = character(), 
    AwayGoalMinutes = character(), 
    stringsAsFactors = FALSE
  )
  
  for (i in 1:nrow(roundMatches)) {
    homeTeam <- roundMatches$HomeTeam[i]
    awayTeam <- roundMatches$AwayTeam[i]
    
    # Get the stats for each team
    homeTeamStats <- teamStats[teamStats$Team == homeTeam, ]
    awayTeamStats <- teamStats[teamStats$Team == awayTeam, ]
    
    # Get player data for each team
    homeTeamPlayers <- allTeamPlayers[[homeTeam]]
    awayTeamPlayers <- allTeamPlayers[[awayTeam]]
    
    # Simulate the match with the team stats and players
    matchResult <- simulateMatch(homeTeamStats, awayTeamStats, homeTeamPlayers, awayTeamPlayers)
    
    # Generate random minutes for goals
    homeGoalMinutes <- sort(sample(1:90, matchResult$goals[1], replace = TRUE))
    awayGoalMinutes <- sort(sample(1:90, matchResult$goals[2], replace = TRUE))
    
    # Append the results with goal scorers and minutes
    results <- rbind(results, data.frame(
      HomeTeam = homeTeam,
      AwayTeam = awayTeam,
      HomeGoals = matchResult$goals[1],
      AwayGoals = matchResult$goals[2],
      HomeGoalScorers = paste(matchResult$goalScorers$Team1, collapse=", "),
      HomeGoalMinutes = paste(homeGoalMinutes, collapse=", "),
      AwayGoalScorers = paste(matchResult$goalScorers$Team2, collapse=", "),
      AwayGoalMinutes = paste(awayGoalMinutes, collapse=", ")
    ))
  }
  return(results)
}

#Goalscorers Tally
updateGoalScorers <- function(matchResults, goalScorers) {
  for (i in 1:nrow(matchResults)) {
    homeTeam <- matchResults$HomeTeam[i]
    awayTeam <- matchResults$AwayTeam[i]
    homeGoalScorers <- unlist(strsplit(matchResults$HomeGoalScorers[i], ",\\s*"))
    awayGoalScorers <- unlist(strsplit(matchResults$AwayGoalScorers[i], ",\\s*"))
    
    # Add team info to each scorer
    homeScorersWithTeam <- setNames(rep(homeTeam, length(homeGoalScorers)), homeGoalScorers)
    awayScorersWithTeam <- setNames(rep(awayTeam, length(awayGoalScorers)), awayGoalScorers)
    allScorersWithTeam <- c(homeScorersWithTeam, awayScorersWithTeam)
    
    for (scorer in names(allScorersWithTeam)) {
      if (scorer != "") {
        scorerRow <- goalScorers[goalScorers$Player == scorer, ]
        if (nrow(scorerRow) == 0) {
          # Add new scorer
          goalScorers <- rbind(goalScorers, data.frame(Player = scorer, Team = allScorersWithTeam[scorer], Goals = 1))
        } else {
          # Update existing scorer's goals
          goalScorers$Goals[goalScorers$Player == scorer] <- scorerRow$Goals + 1
        }
      }
    }
  }
  return(goalScorers)
}

# Initialize the goalScorers data frame
goalScorers <- data.frame(Player = character(), Team = character(), Goals = integer(), stringsAsFactors = FALSE)

# Function to update the league table
updateLeagueTable <- function(matchResults, leagueTable) {
  for (i in 1:nrow(matchResults)) {
    homeTeam <- matchResults$HomeTeam[i]
    awayTeam <- matchResults$AwayTeam[i]
    homeGoals <- matchResults$HomeGoals[i]
    awayGoals <- matchResults$AwayGoals[i]
    
    # Update home team stats
    homeTeamIndex <- which(leagueTable$Team == homeTeam)
    leagueTable$Played[homeTeamIndex] <- leagueTable$Played[homeTeamIndex] + 1
    leagueTable$GF[homeTeamIndex] <- leagueTable$GF[homeTeamIndex] + homeGoals
    leagueTable$GA[homeTeamIndex] <- leagueTable$GA[homeTeamIndex] + awayGoals
    
    # Update away team stats
    awayTeamIndex <- which(leagueTable$Team == awayTeam)
    leagueTable$Played[awayTeamIndex] <- leagueTable$Played[awayTeamIndex] + 1
    leagueTable$GF[awayTeamIndex] <- leagueTable$GF[awayTeamIndex] + awayGoals
    leagueTable$GA[awayTeamIndex] <- leagueTable$GA[awayTeamIndex] + homeGoals
    
    # Update Goal Difference (GD)
    leagueTable$GD[homeTeamIndex] <- leagueTable$GF[homeTeamIndex] - leagueTable$GA[homeTeamIndex]
    leagueTable$GD[awayTeamIndex] <- leagueTable$GF[awayTeamIndex] - leagueTable$GA[awayTeamIndex]
    
    # Update points and win/draw/loss
    if (homeGoals > awayGoals) {
      # Home win
      leagueTable$Wins[homeTeamIndex] <- leagueTable$Wins[homeTeamIndex] + 1
      leagueTable$Losses[awayTeamIndex] <- leagueTable$Losses[awayTeamIndex] + 1
      leagueTable$Points[homeTeamIndex] <- leagueTable$Points[homeTeamIndex] + 3
    } else if (homeGoals < awayGoals) {
      # Away win
      leagueTable$Wins[awayTeamIndex] <- leagueTable$Wins[awayTeamIndex] + 1
      leagueTable$Losses[homeTeamIndex] <- leagueTable$Losses[homeTeamIndex] + 1
      leagueTable$Points[awayTeamIndex] <- leagueTable$Points[awayTeamIndex] + 3
    } else {
      # Draw
      leagueTable$Draws[homeTeamIndex] <- leagueTable$Draws[homeTeamIndex] + 1
      leagueTable$Draws[awayTeamIndex] <- leagueTable$Draws[awayTeamIndex] + 1
      leagueTable$Points[homeTeamIndex] <- leagueTable$Points[homeTeamIndex] + 1
      leagueTable$Points[awayTeamIndex] <- leagueTable$Points[awayTeamIndex] + 1
    }
    
    # Sort the league table by Points, then by GD, and then by GF
    leagueTable <- leagueTable[order(-leagueTable$Points, -leagueTable$GD, -leagueTable$GF),]
    
    # Assign ranks
    leagueTable$Rank <- ave(seq_along(leagueTable$Points), list(leagueTable$Points, leagueTable$GD, leagueTable$GF), FUN = function(x) min(x))
  }
  return(leagueTable)
}



# Resetting all relevant columns to zero
leagueTable <- data.frame(Rank = integer(length(teams)), Team = teams, Points = integer(length(teams)), 
                          Played = integer(length(teams)), Wins = integer(length(teams)), 
                          Draws = integer(length(teams)), Losses = integer(length(teams)), 
                          GF = integer(length(teams)), GA = integer(length(teams)), GD = integer(length(teams)))

# Resetting the goalScorers data frame
goalScorers <- data.frame(Player = character(), Team = character(), Goals = integer(), stringsAsFactors = FALSE)

# Print the reset league table
print(leagueTable)

#SEASON SIMULATION
set.seed(56)
#Round 1
#set.seed(1)
successful <- FALSE

while (!successful) {
  round1Results <- try(simulateRound(1, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round1Results, "try-error")) {
    successful <- TRUE
    print(round1Results)
    
    matchResults <- round1Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round1Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 1, retrying...\n")
  }
}

#Round 2
#set.seed(2)
successful <- FALSE

while (!successful) {
  round2Results <- try(simulateRound(2, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round2Results, "try-error")) {
    successful <- TRUE
    print(round2Results)
    
    matchResults <- round2Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round2Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 2, retrying...\n")
  }
}

#RoUND 3
#set.seed(3)
successful <- FALSE

while (!successful) {
  round3Results <- try(simulateRound(3, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round3Results, "try-error")) {
    successful <- TRUE
    print(round3Results)
    
    matchResults <- round3Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round3Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 3, retrying...\n")
  }
}

#Round 4
#set.seed(4)
successful <- FALSE

while (!successful) {
  round4Results <- try(simulateRound(4, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round4Results, "try-error")) {
    successful <- TRUE
    print(round4Results)
    
    matchResults <- round4Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round4Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 4, retrying...\n")
  }
}

#RoUND 5
#set.seed(5)
successful <- FALSE

while (!successful) {
  round5Results <- try(simulateRound(5, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round5Results, "try-error")) {
    successful <- TRUE
    print(round5Results)
    
    matchResults <- round5Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round5Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 5, retrying...\n")
  }
}


#RoUND 6
#set.seed(6)
successful <- FALSE

while (!successful) {
  round6Results <- try(simulateRound(6, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round6Results, "try-error")) {
    successful <- TRUE
    print(round6Results)
    
    matchResults <- round6Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round6Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 6, retrying...\n")
  }
}

#RoUND 7
#set.seed(7)
successful <- FALSE

while (!successful) {
  round7Results <- try(simulateRound(7, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round7Results, "try-error")) {
    successful <- TRUE
    print(round7Results)
    
    matchResults <- round7Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round7Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 7, retrying...\n")
  }
}

#RoUND 8
#set.seed(8)
successful <- FALSE

while (!successful) {
  round8Results <- try(simulateRound(8, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round8Results, "try-error")) {
    successful <- TRUE
    print(round8Results)
    
    matchResults <- round8Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round8Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 8, retrying...\n")
  }
}

#RoUND 9
#set.seed(9)
successful <- FALSE

while (!successful) {
  round9Results <- try(simulateRound(9, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round9Results, "try-error")) {
    successful <- TRUE
    print(round9Results)
    
    matchResults <- round9Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round9Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 9, retrying...\n")
  }
}

#RoUND 10
#set.seed(10)
successful <- FALSE

while (!successful) {
  round10Results <- try(simulateRound(10, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round10Results, "try-error")) {
    successful <- TRUE
    print(round10Results)
    
    matchResults <- round10Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round10Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 10, retrying...\n")
  }
}

#RoUND 11
#set.seed(11)
successful <- FALSE

while (!successful) {
  round11Results <- try(simulateRound(11, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round11Results, "try-error")) {
    successful <- TRUE
    print(round11Results)
    
    matchResults <- round11Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round11Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 11, retrying...\n")
  }
}

#RoUND 12
#set.seed(12)
successful <- FALSE

while (!successful) {
  round12Results <- try(simulateRound(12, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round12Results, "try-error")) {
    successful <- TRUE
    print(round12Results)
    
    matchResults <- round12Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round12Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 12, retrying...\n")
  }
}

#RoUND 13
#set.seed(13)
successful <- FALSE

while (!successful) {
  round13Results <- try(simulateRound(13, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round13Results, "try-error")) {
    successful <- TRUE
    print(round13Results)
    
    matchResults <- round13Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round13Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 13, retrying...\n")
  }
}

#RoUND 14
#set.seed(14)
successful <- FALSE

while (!successful) {
  round14Results <- try(simulateRound(14, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round14Results, "try-error")) {
    successful <- TRUE
    print(round14Results)
    
    matchResults <- round14Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round14Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 14, retrying...\n")
  }
}

#RoUND 15
#set.seed(15)
successful <- FALSE

while (!successful) {
  round15Results <- try(simulateRound(15, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round15Results, "try-error")) {
    successful <- TRUE
    print(round15Results)
    
    matchResults <- round15Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round15Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 15, retrying...\n")
  }
}

#RoUND 16
#set.seed(16)
successful <- FALSE

while (!successful) {
  round16Results <- try(simulateRound(16, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round16Results, "try-error")) {
    successful <- TRUE
    print(round16Results)
    
    matchResults <- round16Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round16Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 16, retrying...\n")
  }
}

#RoUND 17
#set.seed(17)
successful <- FALSE

while (!successful) {
  round17Results <- try(simulateRound(17, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round17Results, "try-error")) {
    successful <- TRUE
    print(round17Results)
    
    matchResults <- round17Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round17Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 17, retrying...\n")
  }
}

#RoUND 18
#set.seed(18)
successful <- FALSE

while (!successful) {
  round18Results <- try(simulateRound(18, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round18Results, "try-error")) {
    successful <- TRUE
    print(round18Results)
    
    matchResults <- round18Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round18Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 18, retrying...\n")
  }
}

#RoUND 19
#set.seed(19)
successful <- FALSE

while (!successful) {
  round19Results <- try(simulateRound(19, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round19Results, "try-error")) {
    successful <- TRUE
    print(round19Results)
    
    matchResults <- round19Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round19Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 19, retrying...\n")
  }
}

#RoUND 20
#set.seed(20)
successful <- FALSE

while (!successful) {
  round20Results <- try(simulateRound(20, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round20Results, "try-error")) {
    successful <- TRUE
    print(round20Results)
    
    matchResults <- round20Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round20Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 20, retrying...\n")
  }
}

#RoUND 21
#set.seed(21)
successful <- FALSE

while (!successful) {
  round21Results <- try(simulateRound(21, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round21Results, "try-error")) {
    successful <- TRUE
    print(round21Results)
    
    matchResults <- round21Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round21Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 21, retrying...\n")
  }
}

#RoUND 22
#set.seed(22)
successful <- FALSE

while (!successful) {
  round22Results <- try(simulateRound(22, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round22Results, "try-error")) {
    successful <- TRUE
    print(round22Results)
    
    matchResults <- round22Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round22Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 22, retrying...\n")
  }
}

#RoUND 23
#set.seed(23)
successful <- FALSE

while (!successful) {
  round23Results <- try(simulateRound(23, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round23Results, "try-error")) {
    successful <- TRUE
    print(round23Results)
    
    matchResults <- round23Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round23Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 23, retrying...\n")
  }
}

#RoUND 24
#set.seed(24)
successful <- FALSE

while (!successful) {
  round24Results <- try(simulateRound(24, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round24Results, "try-error")) {
    successful <- TRUE
    print(round24Results)
    
    matchResults <- round24Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round24Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 24, retrying...\n")
  }
}

#RoUND 25
#set.seed(25)
successful <- FALSE

while (!successful) {
  round25Results <- try(simulateRound(25, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round25Results, "try-error")) {
    successful <- TRUE
    print(round25Results)
    
    matchResults <- round25Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round25Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 25, retrying...\n")
  }
}

#RoUND 26
#set.seed(26)
successful <- FALSE

while (!successful) {
  round26Results <- try(simulateRound(26, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round26Results, "try-error")) {
    successful <- TRUE
    print(round26Results)
    
    matchResults <- round26Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round26Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 26, retrying...\n")
  }
}

#RoUND 27
#set.seed(27)
successful <- FALSE

while (!successful) {
  round27Results <- try(simulateRound(27, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round27Results, "try-error")) {
    successful <- TRUE
    print(round27Results)
    
    matchResults <- round27Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round27Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 27, retrying...\n")
  }
}

#RoUND 28
#set.seed(28)
successful <- FALSE

while (!successful) {
  round28Results <- try(simulateRound(28, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round28Results, "try-error")) {
    successful <- TRUE
    print(round28Results)
    
    matchResults <- round28Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round28Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 28, retrying...\n")
  }
}

#RoUND 29
#set.seed(29)
successful <- FALSE

while (!successful) {
  round29Results <- try(simulateRound(29, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round29Results, "try-error")) {
    successful <- TRUE
    print(round29Results)
    
    matchResults <- round29Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round29Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 29, retrying...\n")
  }
}

#RoUND 30
#set.seed(30)
successful <- FALSE

while (!successful) {
  round30Results <- try(simulateRound(30, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round30Results, "try-error")) {
    successful <- TRUE
    print(round30Results)
    
    matchResults <- round30Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round30Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 30, retrying...\n")
  }
}

#RoUND 31
#set.seed(31)
successful <- FALSE

while (!successful) {
  round31Results <- try(simulateRound(31, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round31Results, "try-error")) {
    successful <- TRUE
    print(round31Results)
    
    matchResults <- round31Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round31Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 31, retrying...\n")
  }
}

#RoUND 32
#set.seed(32)
successful <- FALSE

while (!successful) {
  round32Results <- try(simulateRound(32, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round32Results, "try-error")) {
    successful <- TRUE
    print(round32Results)
    
    matchResults <- round32Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round32Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 32, retrying...\n")
  }
}

#RoUND 33
#set.seed(33)
successful <- FALSE

while (!successful) {
  round33Results <- try(simulateRound(33, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round33Results, "try-error")) {
    successful <- TRUE
    print(round33Results)
    
    matchResults <- round33Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round33Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 33, retrying...\n")
  }
}

#RoUND 34
#set.seed(34)
successful <- FALSE

while (!successful) {
  round34Results <- try(simulateRound(34, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round34Results, "try-error")) {
    successful <- TRUE
    print(round34Results)
    
    matchResults <- round34Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round34Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 34, retrying...\n")
  }
}

#RoUND 35
#set.seed(35)
successful <- FALSE

while (!successful) {
  round35Results <- try(simulateRound(35, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round35Results, "try-error")) {
    successful <- TRUE
    print(round35Results)
    
    matchResults <- round35Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round35Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 35, retrying...\n")
  }
}

#RoUND 36
#set.seed(36)
successful <- FALSE

while (!successful) {
  round36Results <- try(simulateRound(36, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round36Results, "try-error")) {
    successful <- TRUE
    print(round36Results)
    
    matchResults <- round36Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round36Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 36, retrying...\n")
  }
}

#RoUND 37
#set.seed(37)
successful <- FALSE

while (!successful) {
  round37Results <- try(simulateRound(37, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round37Results, "try-error")) {
    successful <- TRUE
    print(round37Results)
    
    matchResults <- round37Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round37Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 37, retrying...\n")
  }
}

#RoUND 38
#set.seed(38)
successful <- FALSE

while (!successful) {
  round38Results <- try(simulateRound(38, schedule, teamStats, allTeamPlayers), silent = TRUE)
  
  # Check if the result is an error
  if (!inherits(round38Results, "try-error")) {
    successful <- TRUE
    print(round38Results)
    
    matchResults <- round38Results
    matchResults$HomeGoals <- as.numeric(matchResults$HomeGoals)
    matchResults$AwayGoals <- as.numeric(matchResults$AwayGoals)
    leagueTable <- updateLeagueTable(matchResults, leagueTable)
    print(leagueTable)
    goalScorers <- updateGoalScorers(round38Results, goalScorers)
    print(goalScorers)
  } else {
    cat("An error occurred in simulateRound for round 38, retrying...\n")
  }
}

print(round1Results)

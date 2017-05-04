package ru.ifmo.ctddev.shovkoplyas.diploma;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by shovkoplyas on 11.04.2017.
 */
public class Utils {
    public static class ContestTeamProblem {
        public ContestTeamProblem(String constest, String team, String problem) {
            this.constest = constest;
            this.team = team;
            this.problem = problem;
        }

        private String constest, team, problem;

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;

            ContestTeamProblem problem1 = (ContestTeamProblem) o;

            if (constest != null ? !constest.equals(problem1.constest) : problem1.constest != null) return false;
            if (team != null ? !team.equals(problem1.team) : problem1.team != null) return false;
            return problem != null ? problem.equals(problem1.problem) : problem1.problem == null;
        }

        @Override
        public int hashCode() {
            return constest.hashCode() ^ team.hashCode() ^ problem.hashCode();
        }
    }

    static HashMap<ContestTeamProblem, List<HashMap<String, String>>> submissions;

    public static void loadSubmissionsFromFile(String path) {
        submissions = new HashMap<>();
        try {
            BufferedReader br = new BufferedReader(new FileReader(new File(path)));
            String curLine = br.readLine();
            HashMap<String, String> cur = new HashMap<>();
            while (curLine != null) {
                if (curLine.length() == 0) {
                    ContestTeamProblem ctp = getRunFromSubmission(cur);
                    if (!submissions.containsKey(ctp)) {
                        submissions.put(ctp, new ArrayList<HashMap<String, String>>());
                    }
                    submissions.get(ctp).add(cur);
                    cur = new HashMap<>();
                } else {
                    String[] info = curLine.split(" = ", 2);
                    cur.put(info[0], info[1]);
                }
                curLine = br.readLine();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }


    }

    private static ContestTeamProblem getRunFromSubmission(HashMap<String, String> submission) {
        return new ContestTeamProblem(submission.get("contest"), submission.get("team"), submission.get("problem"));
    }


}

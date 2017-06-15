package ru.ifmo.ctddev.shovkoplyas.diploma;

import java.io.*;
import java.nio.charset.Charset;
import java.util.*;

import static java.nio.charset.Charset.defaultCharset;

/**
 * Created by shovkoplyas on 14.06.2017.
 */
public class JobBase {
    final static String summaryName = "summary.txt";
    public static ArrayList<Job> jobs = new ArrayList<>();


    public static void addFromFile(String summaryPath) {
        try {
            String curPath = summaryPath + "/" + summaryName;
            BufferedReader br = new BufferedReader(new InputStreamReader(
                    new FileInputStream(new File(curPath)), Charset.forName("windows-1251")));

            StringBuilder sb = new StringBuilder();
            String line = br.readLine();
            while (line != null) {
                sb.append(line).append("\n");
                line = br.readLine();
            }
            String text = sb.toString();
            String[] parsed = text.split("Job ");
            System.err.println("Jobs found: " + (parsed.length - 1));
            for (int i = 1; i < parsed.length; i++) {
                Job cur = new Job(parsed[i], summaryPath);
                jobs.add(cur);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static HashMap<Pair<String, Integer>, ArrayList<Job>> grouped = new HashMap<>();

    static final boolean NEED = false;

    public static void main(String[] args) {
        addFromFile("runs.mun.pascal.free.IOIfied");
        addFromFile("runs.mun.pascal.abc.IOIfied");
        System.err.println("Summary: " + jobs.size());
        for (Job job : jobs) {
            if (NEED) {
                String dirPath = "by_party/" + String.format("%s", job.party);
                if (!new File(dirPath).exists())
                    new File(dirPath).mkdirs();
                try {
                    PrintWriter pw = new PrintWriter(new File(dirPath + "/" + job.getFileName()));
                    pw.print(job.code);
                    pw.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            String pId = job.problemId;
            int tn = job.testNumber;
            Pair cur = new Pair(pId, tn);
            if (!grouped.containsKey(cur)) {
                grouped.put(cur, new ArrayList<Job>());
            }
            grouped.get(cur).add(job);
        }
        System.err.println("groups number = " + grouped.size());

        ArrayList<Pair<Pair<String, Integer>, ArrayList<Job>>> stats = new ArrayList<>();
        for (Map.Entry<Pair<String, Integer>, ArrayList<Job>> entry : grouped.entrySet()) {
            Pair<String, Integer> key = entry.getKey();
            ArrayList<Job> value = entry.getValue();
            stats.add(new Pair(key, value));
        }
        Collections.sort(stats, new Comparator<Pair<Pair<String, Integer>, ArrayList<Job>>>() {
            @Override
            public int compare(Pair<Pair<String, Integer>, ArrayList<Job>> o1, Pair<Pair<String, Integer>, ArrayList<Job>> o2) {
                int s1 = o1.getSecond().size();
                int s2 = o2.getSecond().size();
                return s1 - s2;
            }
        });

        for (int i = 0; i < stats.size(); i++) {
            Pair p = stats.get(i).getFirst();
            ArrayList<Job> al = stats.get(i).getSecond();
            HashSet<String> parties = new HashSet<>();
            for (Job job : al) {
                parties.add(job.party);
            }
            System.out.println(p + ": " + al.size() + "/" + parties.size());


            if (NEED) {
                String dirPath = "grouped/" + String.format("%s_%02d", p.getFirst(), p.getSecond());
                new File(dirPath).mkdirs();
                for (Job job : al) {
                    try {
                        PrintWriter pw = new PrintWriter(new File(dirPath + "/" + job.getFileName()));
                        pw.print(job.code);
                        pw.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }

        //choose concrete problem-test
        String curProblem = "E";
        int curTest = 8;

        ArrayList<Job> curList = grouped.get(new Pair<String, Integer>(curProblem, curTest));
        HashSet<String> parties = new HashSet<>();
        for (Job job : curList) {
            parties.add(job.party);
        }
        Map<String, ArrayList<Pair<Integer, Integer>>> history = new HashMap<>();
        for (Job job : jobs) {
            if (!parties.contains(job.party) || !job.problemId.equals(curProblem))
                continue;
            if (!history.containsKey(job.party)) {
                history.put(job.party, new ArrayList<Pair<Integer, Integer>>());
            }
            history.get(job.party).add(new Pair(job.attempt, job.testNumber));
        }

        for (Map.Entry<String, ArrayList<Pair<Integer, Integer>>> entry : history.entrySet()) {
            String key = entry.getKey();
            ArrayList<Pair<Integer, Integer>> value = entry.getValue();
            Collections.sort(value, new Comparator<Pair<Integer, Integer>>() {
                @Override
                public int compare(Pair<Integer, Integer> o1, Pair<Integer, Integer> o2) {
                    return o1.getFirst().compareTo(o2.getFirst());
                }
            });
            System.out.print(key + ": ");
            for (int i = 0; i < value.size(); i++) {
                System.out.print(value.get(i).getSecond());
                if (i < value.size() - 1)
                    System.out.print("->");
                else
                    System.out.println();
            }
        }


    }
}

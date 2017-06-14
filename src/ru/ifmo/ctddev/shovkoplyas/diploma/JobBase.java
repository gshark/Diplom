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

    public static void main(String[] args) {
        addFromFile("runs.mun.pascal.free.IOIfied");
        addFromFile("runs.mun.pascal.abc.IOIfied");
        System.err.println("Summary: " + jobs.size());
        for (Job job : jobs) {
            String pId = job.problemId;
            int tn = job.testNumber;
            Pair cur = new Pair(pId, tn);
            if (!grouped.containsKey(cur)) {
                grouped.put(cur, new ArrayList<Job>());
            }
            grouped.get(cur).add(job);
        }
        System.err.println("groups number = " + grouped.size());

        ArrayList<Pair<Pair<String, Integer>, Integer>> stats = new ArrayList<>();
        for(Map.Entry<Pair<String, Integer>, ArrayList<Job>> entry : grouped.entrySet()) {
            Pair<String, Integer> key = entry.getKey();
            ArrayList<Job> value = entry.getValue();
            stats.add(new Pair(key, value.size()));
        }
        Collections.sort(stats, new Comparator<Pair<Pair<String, Integer>, Integer>>() {
            @Override
            public int compare(Pair<Pair<String, Integer>, Integer> o1, Pair<Pair<String, Integer>, Integer> o2) {
                return o1.getSecond().compareTo(o2.getSecond());
            }
        });
        for (int i = 0; i < stats.size(); i++) {
            System.out.println(stats.get(i).getFirst() + ": " + stats.get(i).getSecond());
        }

    }
}

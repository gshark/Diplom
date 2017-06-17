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
        HashMap<Pair<String, Pair<String, Integer>>, String> codes = new HashMap<>();
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
            String part = job.party;
            int at = job.attempt;
            Pair curr = new Pair(part, new Pair(pId, at));
            if (codes.containsKey(curr)) {
                System.err.println(curr);
                throw new AssertionError();
            }
            codes.put(curr, job.code);
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
        if (NEED) {
            for (int i = 0; i < stats.size(); i++) {
                Pair p = stats.get(i).getFirst();
                ArrayList<Job> al = stats.get(i).getSecond();
                HashSet<String> parties = new HashSet<>();
                for (Job job : al) {
                    parties.add(job.party);
                }
                //System.out.println(p + ": " + al.size() + "/" + parties.size());


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

        HashSet<String> parties = new HashSet<>();
        for (Job job : jobs) {
            parties.add(job.party);
        }
        System.err.println("Parties = " + parties.size());
        System.err.flush();
        Map<String, ArrayList<Pair<Integer, Integer>>> history[] = new Map[5];
        for (int i = 0; i < 5; i++)
            history[i] = new HashMap<>();

        for (Job job : jobs) {
            //if (!parties.contains(job.party) || !job.problemId.equals(curProblem))
            //    continue;
            int cur = job.problemId.charAt(0) - 'A';
            if (!history[cur].containsKey(job.party)) {
                history[cur].put(job.party, new ArrayList<Pair<Integer, Integer>>());
            }
            history[cur].get(job.party).add(new Pair(job.attempt, job.testNumber));
        }
        for (int i = 0; i < 5; i++) {
            for (Map.Entry<String, ArrayList<Pair<Integer, Integer>>> entry : history[i].entrySet()) {
                String key = entry.getKey();
                ArrayList<Pair<Integer, Integer>> value = entry.getValue();
                Collections.sort(value, new Comparator<Pair<Integer, Integer>>() {
                    @Override
                    public int compare(Pair<Integer, Integer> o1, Pair<Integer, Integer> o2) {
                        return o1.getFirst().compareTo(o2.getFirst());
                    }
                });
            }
        }

        ArrayList<Pair<Integer, Double>> gr[] = new ArrayList[5];
        for (int i = 0; i < 5; i++)
            gr[i] = new ArrayList<>();
        //choose concrete problem-test
        for (int i = 0; i < stats.size(); i++) {
            Pair<String, Integer> p = stats.get(i).getFirst();
            ArrayList<Job> al = stats.get(i).getSecond();
            HashSet<String> curParties = new HashSet<>();
            for (Job job : al) {
                curParties.add(job.party);
            }
            System.out.print(p + ": " + al.size() + "/" + curParties.size());

            String curProblem = p.getFirst();
            int cur = curProblem.charAt(0) - 'A';

            int curTest = p.getSecond();

            ArrayList<Job> curList = al;//grouped.get(new Pair<String, Integer>(curProblem, curTest));

            int cnt = 0;
            int canDiff = 0;
            int sumDiff = 0;
            //for (Map.Entry<String, ArrayList<Pair<Integer, Integer>>> entry : history[cur].entrySet()) {
            for (String part : curParties) {
                ArrayList<Pair<Integer, Integer>> value = history[cur].get(part);
                boolean notBetter = false;
                int at1 = -1;
                int at2 = -1;
                for (int j = 0; j < value.size(); j++) {
                    if (value.get(j).getSecond() == curTest) {
                        at1 = value.get(j).getFirst();
                    } else if (value.get(j).getSecond() > curTest) {
                        notBetter = true;
                        at2 = value.get(j).getFirst();
                        break;
                    }
                }
                if (!notBetter || at1 == -1)
                    continue;
                cnt++;
                Pair key1 = new Pair(part, new Pair(curProblem, at1));
                Pair key2 = new Pair(part, new Pair(curProblem, at2));

                String code1 = codes.get(key1);
                String code2 = codes.get(key2);
                if (code1 == null || code2 == null)
                    throw new AssertionError();

                printToFile(code1, "__code1.pas");
                printToFile(code2, "__code2.pas");
                int cntDiff = 0;
                String command = "diff __code1.pas __code2.pas";
                try {
                    Process process = Runtime.getRuntime().exec(command);
                    BufferedReader br = new BufferedReader(new InputStreamReader(process.getInputStream()));
                    String line = br.readLine();
                    while (line != null) {
                        if (line.startsWith(">") || line.startsWith("<")) {
                            cntDiff++;
                        }
                        line = br.readLine();
                    }
                    sumDiff += cntDiff;
                    canDiff++;
                } catch (IOException e) {
                    e.printStackTrace();
                }


            }
            System.out.println(String.format("/%d/%.2f", cnt,
                    (canDiff == 0) ? -1 : (double) sumDiff / canDiff));
            if (canDiff != 0)
                gr[cur].add(new Pair(curTest, (double) sumDiff / canDiff));
        }

        for (int i = 0; i < 5; i++) {
            try {
                Collections.sort(gr[i], new Comparator<Pair<Integer, Double>>() {
                    @Override
                    public int compare(Pair<Integer, Double> o1, Pair<Integer, Double> o2) {
                        return o1.getFirst().compareTo(o2.getFirst());
                    }
                });
                PrintWriter pw = new PrintWriter(new File("gr" + i + ".csv"));
                int q = 0;
                for (Pair p : gr[i]) {
                    pw.println(q++ + " " + p.getSecond());
                }
                for (Pair p : gr[i]) {
                    pw.print(p.getFirst() + ",");
                }
                pw.println();

                pw.close();
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            }
        }

    }

    public static void printToFile(String code, String fileName) {
        try {
            PrintWriter pw = new PrintWriter(new File(fileName));
            pw.print(code);
            pw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

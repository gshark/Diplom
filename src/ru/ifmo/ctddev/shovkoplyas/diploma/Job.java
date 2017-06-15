package ru.ifmo.ctddev.shovkoplyas.diploma;

import java.io.*;
import java.nio.charset.Charset;

/**
 * Created by shovkoplyas on 14.06.2017.
 */
public class Job {
    int attempt;
    String problemId;
    String path;
    String problem;
    String party;
    String language;
    int testNumber;
    String verdict;
    int sources;
    String name;
    String code;

    public String getFileName() {
        return String.format("%s.%02d.%s.%s.%02d.pas",
                problemId, testNumber, verdict, party, attempt);
    }

    public String loadCode(String path) {
        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(
                    new FileInputStream(new File(path)), Charset.forName("windows-1251")));

            StringBuilder sb = new StringBuilder();
            String line = br.readLine();
            while (line != null) {
                sb.append(line).append("\n");
                line = br.readLine();
            }
            return sb.toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Job(String s, String summaryPath) {
        String lines[] = s.split("\n");
        String tmp[] = lines[0].split(" exported to ");
        path = tmp[1];
        String ttmp[] = tmp[0].split("\\.");
        problemId = ttmp[ttmp.length - 3];
        attempt = Integer.parseInt(ttmp[ttmp.length - 2]);

        problem = lines[1].split(": ")[1];

        party = lines[2].split(": ")[1];
        String tmpp[] = party.split("\\.");
        String newParty = tmpp[tmpp.length - 1];
        party = newParty;

        language = lines[3].split(": ")[1];
        testNumber = Integer.parseInt(lines[4].split(": ")[1]) + 1;
        verdict = lines[5].split(": ")[1];
        int k = 6;
        while (!lines[k].contains("Sources")) k++;
        sources = Integer.parseInt(lines[k].split(": ")[1]);
        if (sources != 1)
            throw new AssertionError();
        name = lines[k + 1].split("'")[1];

        code = loadCode(summaryPath + "/" + path + "/" + name);
    }

    @Override
    public String toString() {
        return "Job{" +
                "attempt=" + attempt +
                ", problemId='" + problemId + '\'' +
                ", path='" + path + '\'' +
                ", problem='" + problem + '\'' +
                ", party='" + party + '\'' +
                ", language='" + language + '\'' +
                ", testNumber=" + testNumber +
                ", verdict='" + verdict + '\'' +
                ", sources=" + sources +
                ", name='" + name + '\'' +
                ", code.length ='" + code.length() + '\'' +
                '}';
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import entity.Student;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

/**
 *
 * @author ADMIN
 */
public class Helper {

    public static List<Student> generateStudents(int numberOfStudents) throws ParseException {
        List<Student> lst = new ArrayList<>();

        Random random = new Random();

        for (int i = 1; i <= numberOfStudents; i++) {
            // Generate random student details
            int id = i;
            String name = generateRandomName();
            boolean gender = random.nextBoolean();
            Date dob = between(new SimpleDateFormat("dd/MM/yyyy").parse("01/01/1900"), new SimpleDateFormat("dd/MM/yyyy").parse("01/01/2000"));
            Student student = new Student(id, name, gender, dob);
            lst.add(student);
        }

        return lst;
    }

    public static String generateRandomName() {
        Random random = new Random();
        StringBuilder nameBuilder = new StringBuilder();

        int nameLength = random.nextInt(6) + 5; // Random name length between 5 and 10 characters

        for (int i = 0; i < nameLength; i++) {
            char randomChar = (char) (random.nextInt(26) + 'a');
            nameBuilder.append(randomChar);
        }

        return nameBuilder.toString();
    }

    public static Date between(Date startInclusive, Date endExclusive) {
        long startMillis = startInclusive.getTime();
        long endMillis = endExclusive.getTime();
        long randomMillisSinceEpoch = ThreadLocalRandom
                .current()
                .nextLong(startMillis, endMillis);

        return new Date(randomMillisSinceEpoch);
    }

    public static void main(String[] args) throws ParseException {
        System.out.println(Helper.between(new SimpleDateFormat("dd/MM/yyyy").parse("01/01/1900"), new SimpleDateFormat("dd/MM/yyyy").parse("01/01/2000")));
    }
}

import com.yimei.warehouse.AegisWareHouseApplication;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.*;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleSupplier;
import java.util.function.IntBinaryOperator;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = AegisWareHouseApplication.class)
public class AegisWareHouseApplicationTests {

    @Test
    public void test001() {
        System.out.println(" ------------------------------------ ");
        System.out.println(" ------------------------------------ ");
        System.out.println(" ------------------------------------ ");
        System.out.println(" ------------------------------------ ");
        System.out.println(" ------------------------------------ ");
        Date aaa = new Date(System.currentTimeMillis());
        System.out.println(" ------------------------------------ " + (aaa.toLocalDate().getYear()));


        Stream.of("a", "b", "c", "d", "e", "f", "g").collect(Collectors.toList()).parallelStream().forEach(System.out::println);

        IntBinaryOperator intAdd = (int x, int y) -> x + y;
        DoubleBinaryOperator doubleAdd = (double x, double y) -> x + y;

        DoubleSupplier doubleSupplier = () -> 42;

        System.out.println(" -------- " + (intAdd.applyAsInt(3, 5)));
        System.out.println(" -------- " + (doubleAdd.applyAsDouble(3, 5)));

        Random random = new Random();
        List<Integer> numList = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            numList.add(random.nextInt(1000));
        }

        System.out.println(" ------------------------------------- init ");
        System.out.println(" ------------------------------------- init ");
        System.out.println(" ------------------------------------- init ");

        numList.stream().forEach(num -> System.out.print(num + " "));


        System.out.println(" ------------------------------------- test1 start ");
        System.out.println(" ------------------------------------- test1 start ");
        System.out.println(" ------------------------------------- test1 start " + LocalDateTime.now());
        for (int i = 0; i < numList.size(); i++) {
            for (int j = 0; j < numList.size(); j++) {
                int temp = numList.get(i);
                if (numList.get(i) < numList.get(j)) {
                    temp = numList.get(i);
                    numList.set(i, numList.get(j));
                    numList.set(j, temp);
                }
            }
        }
        System.out.println(" ------------------------------------- test1 end " + LocalDateTime.now());
        numList.stream().forEach(num -> System.out.print(num + " "));


        System.out.println(" ------------------------------------- test1");

    }

    @Test
    public void lambdaTest() {
        System.out.println(" ------------------------------------- ");
        System.out.println(" ------------------------------------- ");
        System.out.println(" ------------------------------------- ");
        System.out.println(" ------------------------------------- ");
        System.out.println(" ------------------------------------- ");
        System.out.println(" ------------------------------------- ");

        Set<Integer> numList = new HashSet<>();
        numList.add(1);
        numList.addAll(numList);
        numList.add(3);
        numList.add(9);
        numList.add(999);
        numList.add(22);
        numList.add(36);

        numList.parallelStream().forEach(System.out::println);

        System.out.println(" ----------------- ");
        System.out.println(" ----------------- ");
        System.out.println(" ----------------- ");
        System.out.println(" ----------------- ");
        System.out.println(" ----------------- ");
        System.out.println(" ----------------- ");

//        List<Integer> newNumList = new ArrayList<>(numList);
//
//        List<String> strList = Stream.of("a", "c", "b", "z", "e").collect(Collectors.toList());
//
//        String result = strList.stream()
//                .collect(Collectors.joining(",", "[", "]"));
//
//        System.out.println(" --------- " + result);
//
//        result = strList.stream()
//                .collect(Collectors.joining(","));
//
//        System.out.println(" ---------" + result);




//		List<User> userList = identityService.createUserQuery().list();
//
//		System.out.println(" -------- start time " + LocalDateTime.now());
//
//		userList = userList.stream().sorted((u1, u2) -> Integer.valueOf(u1.getId()).compareTo(Integer.valueOf(u2.getId()))).collect(Collectors.toList());
//
//		userList.stream().forEach(user -> {
//			System.out.println(" --- " + user.getId() + " --- " + user.getFirstName());
//		});
//
//		userList.parallelStream().forEach(user -> {
//			System.out.println(" --- " + user.getId() + " --- " + user.getFirstName());
//		});
    }


}

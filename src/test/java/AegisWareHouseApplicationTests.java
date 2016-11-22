import com.yimei.warehouse.AegisWareHouseApplication;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.sql.Date;
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

	}



}

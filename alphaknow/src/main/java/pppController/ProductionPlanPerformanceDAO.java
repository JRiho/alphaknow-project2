package pppController;

import java.io.Reader;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import pppDTO.ProductionPlanPerformanceDTO;

public class ProductionPlanPerformanceDAO {
	private static SqlSessionFactory sqlMapper = null;

	public static SqlSessionFactory getInstance() {
		if(sqlMapper == null) {
			try {
				String res = "mybatis/SqlMapConfig.xml";
				Reader reader = Resources.getResourceAsReader(res);
				
				SqlSessionFactoryBuilder ssfb = new SqlSessionFactoryBuilder();
				sqlMapper = ssfb.build(reader);
				
				reader.close();
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return sqlMapper;
	}

	public List<ProductionPlanPerformanceDTO> selectChartList() {
		List<ProductionPlanPerformanceDTO> chartList = null;

		 try {
			// DB 접속 정보 읽기
			sqlMapper = getInstance();
			// DB 접속
			SqlSession sqlSession = sqlMapper.openSession();
			chartList = sqlSession.selectList("mapper.pppChart.selectChartList");				System.out.println("empList.size() : " + chartList.size());
		 } catch (Exception e) {
			 e.printStackTrace();
	     }
		

		return chartList;
	}

	public int insertProductionData() {
		int result = -1;
		SqlSession sqlSession = null;
		
		Random random = new Random();
		Calendar calendar = Calendar.getInstance();
		
		try {
		// DB 접속 정보 읽기
		sqlMapper = getInstance();

		// DB 접속
		sqlSession = sqlMapper.openSession();

		System.out.println("insert 시작");
		for (int year = 2023; year <= 2024; year++) {
			for (int month = 1; month <= (year == 2024 ? 4 : 12); month++) {
				calendar.set(year, month - 1, 1); // 해당 연도와 월의 첫째 날 설정
				int maxWeeksInMonth = calendar.getActualMaximum(Calendar.WEEK_OF_MONTH);

				for (int week = 1; week <= maxWeeksInMonth; week++) {
					for (int day = 1; day <= 7; day++) {
						for (int itemNumber = 1; itemNumber <= 3; itemNumber++) {
							String itemName = "Item" + itemNumber;
							int productionAmount = 10000;
							int makeAmount = (int) (productionAmount * (0.9 + random.nextDouble() * 0.1));
							double defectRate = 100 - (makeAmount / (double) productionAmount * 100);

							ProductionPlanPerformanceDTO dto = new ProductionPlanPerformanceDTO();
							dto.setWorkYear(year);
							dto.setWorkMonth(month);
							dto.setWorkWeek(week);
							dto.setWorkDay(((week - 1) * 7) + day);
							dto.setItemName(itemName);
							dto.setProductionAmount(productionAmount);
							dto.setMakeAmount(makeAmount);
							dto.setAchievementRate(100 - defectRate);
							dto.setDefectRate(defectRate);

							sqlSession.insert("insertProductionData", dto);
							
						}
					}
				}
			}
		}
		sqlSession.commit();
		result = 1;
	}catch(Exception e) {
		if(sqlSession != null) {
			sqlSession.rollback();
			result = 0;
		}
		e.printStackTrace();
	}
		return result;
	}

}

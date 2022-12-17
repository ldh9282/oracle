package java_select_statement_and_prestatement;

import java.util.List;

public class MemberDAO_Test {

	public static void main(String[] args) {
		MemberDAO memberDAO = new MemberDAO();
		
		List<MemberVO> memberVOs = memberDAO.listMembers();
		List<MemberVO> memberVOs2 = memberDAO.listMembers(
				"SELECT"
				+ " *"
				+ " FROM MYUSER.TBL_MEMBER"
				+ " WHERE MID = 'kim'");
		
		
		memberVOs.forEach((memberVO) -> {
			System.out.println(memberVO);
		});
		System.out.println("--");
		memberVOs2.forEach((memberVO) -> {
			System.out.println(memberVO);
		});
		
		
		
	}
}

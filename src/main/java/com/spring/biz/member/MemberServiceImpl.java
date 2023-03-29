package com.spring.biz.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO MemberDAO;

	@Override
	public boolean insertMember(MemberVO vo) {
		return MemberDAO.insertMember(vo);
	}

	@Override
	public boolean updateMember(MemberVO vo) {
		return MemberDAO.updateMember(vo);
	}

	@Override
	public MemberVO selectOneMember(MemberVO vo) {
		return MemberDAO.selectOneMember(vo);
	}

	@Override
	public List<MemberVO> selectAll_GRADE(MemberVO vo) {
		return MemberDAO.selectAll_GRADE(vo);
	}

	@Override
	public boolean deleteMember(MemberVO vo) {
		return MemberDAO.deleteMember(vo);
	}

	@Override
	public boolean updateAuthStatus(MemberVO vo) {
		return MemberDAO.updateAuthStatus(vo);
	}


	@Override
	public MemberVO checkNickName(MemberVO vo) {
		return MemberDAO.checkNickName(vo);
	}

	@Override
	public MemberVO checkId(MemberVO vo) {
		return MemberDAO.checkId(vo);
	}

	@Override
	public boolean updateKey(MemberVO vo) {
		return MemberDAO.updateKey(vo);
	}

	@Override
	public MemberVO selectMemberCnt(MemberVO vo) {
		return MemberDAO.selectMemberCnt(vo);
	}

	@Override
	public List<MemberVO> select_admin_grade(MemberVO vo) {
		return MemberDAO.select_admin_grade(vo);
	}

	@Override
	public List<MemberVO> select_admin_report(MemberVO vo) {
		return MemberDAO.select_admin_report(vo);
	}

	@Override
	public boolean updateMember_mjoindate(MemberVO vo) {
		return MemberDAO.updateMember_mjoindate(vo);
	}

	@Override
	public MemberVO checkEmail(MemberVO vo) {
		return MemberDAO.checkEmail(vo);
	}

}
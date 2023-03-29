package com.spring.biz.heart;

public interface HeartService {
   public boolean insertHeart(HeartVO vo);
   public boolean deleteHeart(HeartVO vo);
   public HeartVO selectHeartCnt(HeartVO vo);
   public boolean deleteHeartMember(HeartVO vo);
   public boolean updateHeartMember(HeartVO vo);
}
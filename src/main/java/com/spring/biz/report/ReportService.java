package com.spring.biz.report;

public interface ReportService {
   public boolean insertReport(ReportVO vo);
   public boolean deleteReport(ReportVO vo);
   public ReportVO selectMy(ReportVO vo);
   public boolean updateReport(ReportVO vo);
   public boolean deleteReportMember(ReportVO vo);
   public boolean updateReportMember(ReportVO vo);
}
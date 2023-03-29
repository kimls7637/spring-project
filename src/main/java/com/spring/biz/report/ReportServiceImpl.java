package com.spring.biz.report;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("reportService")
public class ReportServiceImpl implements ReportService {

   @Autowired
   private ReportDAO ReportDAO;

   @Override
   public boolean insertReport(ReportVO vo) {
      return ReportDAO.insertReport(vo);
   }

   @Override
   public boolean deleteReport(ReportVO vo) {
      return ReportDAO.deleteReport(vo);
   }

   @Override
   public ReportVO selectMy(ReportVO vo) {
      return ReportDAO.selectMy(vo);
   }

   @Override
   public boolean updateReport(ReportVO vo) {
      return ReportDAO.updateReport(vo);
   }

   @Override
   public boolean deleteReportMember(ReportVO vo) {
      return ReportDAO.deleteReportMember(vo);
   }

@Override
public boolean updateReportMember(ReportVO vo) {
    return ReportDAO.deleteReportMember(vo);
}

}
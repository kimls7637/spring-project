package com.spring.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.google.gson.JsonObject;

@Controller
public class CkeditorFileUploadController {

   @PostMapping("/fileupload.do")
    public void fileUpload(HttpServletRequest request, HttpServletResponse response, MultipartHttpServletRequest multiFile, MultipartFile upload) throws Exception{
        
        OutputStream out = null;
        PrintWriter printWriter = null;
        
        //인코딩
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        
        try{
            
            //파일 이름 가져오기
            String fileName = upload.getOriginalFilename();
            byte[] bytes = upload.getBytes();
           
            
            //이미지 경로 생성
            String path = request.getSession().getServletContext().getRealPath("./upload");
            System.out.println(path);
            String ckUploadPath = path + "\\" + fileName;
            System.out.println(ckUploadPath);
            File folder = new File(path);
            
            //해당 디렉토리 확인
            if(!folder.exists()){
                try{
                    folder.mkdirs(); // 폴더 생성
                }catch(Exception e){
                    e.getStackTrace();
                }
            }
            
            out = new FileOutputStream(new File(ckUploadPath));
            out.write(bytes);
            out.flush(); // outputStram에 저장된 데이터를 전송하고 초기화
            
            printWriter = response.getWriter();
            
            JsonObject json = new JsonObject();
            json.addProperty("uploaded", 1);
            json.addProperty("fileName", fileName);
            json.addProperty("url", "./upload/"+fileName);
            
            printWriter.println(json);
            
            printWriter.flush();
            
        }catch(IOException e){
            e.printStackTrace();
        } finally {
           out.close();
           printWriter.close();
         }
   }
}
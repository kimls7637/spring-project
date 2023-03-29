package com.spring.controller;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import com.spring.biz.board.BoardVO;
 
public class Instagram {
 
    // WebDriver
    private WebDriver driver;
    
    // Properties
    public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static final String WEB_DRIVER_PATH = "C:\\Program Files\\chromedriver.exe";
    public static final String path = "C:\\lee1108\\workspace03\\AC\\src\\main\\webapp\\images\\";
    
    // URL
    private String base_url;
    
    public Instagram() {
        //System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        
        //Driver SetUp
        driver = new ChromeDriver();
        base_url = "https://www.instagram.com/";
    }
 
    public void crawl(BoardVO vo) {
 
       System.out.println("전달받은아이디" + vo.getMultiId());
       System.out.println("전달받은비밀번호" + vo.getMultiPw());
       System.out.println("전달받은콘텐츠" + vo.getMultiContent());
       System.out.println("전달받은파일" + vo.getUploadFile().getOriginalFilename());
       
        try {
            driver.get(base_url);

            // 아이디, 비밀번호 입력
            Thread.sleep(2000);
            List<WebElement> ls = driver.findElements(By.cssSelector("._aa4b"));
//          ls.get(0).sendKeys("kimls0829o@gmail.com");
//          ls.get(1).sendKeys("zhfldk123");
            ls.get(0).sendKeys(vo.getMultiId());
            ls.get(1).sendKeys(vo.getMultiPw());
            Thread.sleep(2000);
            
            // 로그인버튼 클릭
            ls = driver.findElements(By.cssSelector("._acap"));
            ls.get(0).click();
            Thread.sleep(5000);
            
            // 게시글작성버튼 클릭
            ls = driver.findElements(By.cssSelector(".x1i10hfl"));  
            ls.get(7).click();
            Thread.sleep(4000);
            
            // 파일첨부
            ls = driver.findElements(By.cssSelector("._ac69"));
            String filePath = path + vo.getUploadFile().getOriginalFilename();
            ls.get(0).sendKeys(filePath);
            Thread.sleep(6000);
            
            // 다음버튼 클릭
            ls = driver.findElements(By.cssSelector(".x1i10hfl"));
            ls.get(ls.size()-1).click();
            Thread.sleep(6000);
            
            // 다음버튼 클릭
            ls = driver.findElements(By.cssSelector(".x1i10hfl"));
            ls.get(ls.size()-1).click();
            Thread.sleep(4000);
            
            // 글 작성
            ls = driver.findElements(By.cssSelector(".xw2csxc"));
//          ls.get(2).sendKeys("안녕");
            ls.get(2).sendKeys(vo.getMultiContent());
            Thread.sleep(6000);
            
            // 공유버튼 클릭
            ls = driver.findElements(By.cssSelector(".x1i10hfl"));
            ls.get(ls.size()-2).click();
            Thread.sleep(6000);
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            driver.close();
            driver.quit();
        }
    }
}
Feature: Drive to Get Informaion page
  Background:
    #Given configure driver = { type: 'chromedriver', executable: 'C:\\Users\\Administrator\\Downloads\\chromedriver_win32\\chromedriver.exe' }
  Scenario: Input email to give information
    Given driver "https://demo.guru99.com/"
    When input("/html/body/form/table/tbody/tr[5]/td[2]/input","congDanToanCau@abbank.com")
    And click("/html/body/form/table/tbody/tr[6]/td[2]/input")
    Then match text("//td[contains(text(), 'User ID :')]/following-sibling::td") != null
    #Nó chỉ tìm một phần tử <td> duy nhất thỏa mãn điều kiện chứa văn bản "User ID :" và sau đó kiểm tra phần tử <td> kế tiếp của nó
    And match text("//td[contains(text(), 'Password :')]/following-sibling::td") != null
    #Then match text("/html/body/table/tbody/tr[1]/td/h2") == "Access details to demo site."
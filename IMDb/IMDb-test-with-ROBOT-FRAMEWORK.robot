*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      https://www.imdb.com/
${expected_value}

*** Test Cases ***
Run test cases 
    Open Browser            ${URL}                  chrome
    Maximize Browser Window
    Click at login
        Register user
    Search & Select Movie & Add2Watchlist & Check 
    Test Menu
        Test Movies categorie
    Test Menu
        Test TV Shows categorie
    Test Menu
        Test Awards & Events categorie
    Test Menu
        Test Videos categorie
    Test Menu
        Test Community categorie
    [Teardown]    Close Browser

*** Keywords ***
Click at login
    Click Element           xpath://*[@id="imdbHeader"]/div[2]/div[5]/a/div

Register user
    Click Element           xpath://*[@id="signin-options"]/div/div[2]/a
    Input Text              css:input[id=ap_customer_name]          Chris
    Input Text              css:input[id=ap_email]                  test.chris@gmail.com
    Input Text              css:input[id=ap_password]               test@chris
    Input Text              css:input[id=ap_password_check]         test@chris
    Click Element           class:a-button-inner
    Page Should contain     Teste

Search & Select Movie & Add2Watchlist & Check
    Input Text                  css:input[id=suggestion-search]          Avengers EndGame
    sleep                       2s
    Page Should contain         Avengers: Endgame
    Page Should contain         2019
    Page Should contain         Robert Downey Jr., Chris Evans
    Click Element               css:button[id=suggestion-search-button]
    Page Should contain         Results for "Avengers EndGame"
    Page Should contain         Avengers: Endgame
    Click Element               xpath://*[@id="main"]/div/div[2]/table/tbody/tr[1]/td[2]/a
    Page Should contain         Avengers: Endgame
    Click Element               xpath://*[@id="title-overview-widget"]/div[2]/div[2]/div[3]/button[2]
    Page Should contain         Added to Watchlist
    Click Element               xpath://*[@id="imdbHeader"]/div[2]/div[4]/a
    Page Should contain         Your Watchlist
    Page Should contain         Avengers: Endgame

Test Menu
    Click Element           class:ipc-button__text

Test Movies categorie
    SeleniumLibrary.Wait Until Element Is Visible           xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[1]/span/div/div/ul/a[5]         timeout=10s
    Click Element               xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[1]/span/div/div/ul/a[5]
    Page Should contain         Popular TV Show and Movie Genres

Test TV Shows categorie
    SeleniumLibrary.Wait Until Element Is Visible           xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[2]/span/div/div/ul/a[3]         timeout=10s
    Click Element               xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[2]/span/div/div/ul/a[3]
    Page Should contain         Top Rated TV Shows
    Page Should contain         Breaking Bad

Test Awards & Events categorie
    SeleniumLibrary.Wait Until Element Is Visible           xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[3]/span/div/div/ul/a[1]         timeout=10s
    Click Element               xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[3]/span/div/div/ul/a[1]
    Page Should contain         Oscars Red Carpet: All the Best Photos
    Page Should contain         Academy Awards: Presenters, Winners, and More

Test Videos categorie
    SeleniumLibrary.Wait Until Element Is Visible           xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[5]/span/div/div/ul/a[1]         timeout=10s
    sleep                       0.3s
    Click Element               xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[5]/span/div/div/ul/a[1]
    Page Should contain         IMDb ORIGINALS
    #Watch this video :P
    sleep                       5s

Test Community categorie
    SeleniumLibrary.Wait Until Element Is Visible           xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[6]/span/div/div/ul/a[1]         timeout=10s
    sleep                       0.3s
    Click Element               xpath://*[@id="imdbHeader"]/div[2]/aside/div/div[2]/div/div[6]/span/div/div/ul/a[1]
    Page Should contain         Help Center
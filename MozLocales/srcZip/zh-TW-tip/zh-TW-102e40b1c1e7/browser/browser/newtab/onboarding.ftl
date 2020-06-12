# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


### UI strings for the simplified onboarding modal / about:welcome
### Various strings use a non-breaking space to avoid a single dangling /
### widowed word, so test on various window sizes if you also want this.


## These button action text can be split onto multiple lines, so use explicit
## newlines in translations to control where the line break appears (e.g., to
## avoid breaking quoted text).

onboarding-button-label-learn-more = 了解更多
onboarding-button-label-try-now = 立刻試試
onboarding-button-label-get-started = 開始使用

## Welcome modal dialog strings

onboarding-welcome-header = 歡迎使用 { -brand-short-name }
onboarding-welcome-body = 瀏覽器安裝完成。<br/>了解 { -brand-product-name } 的其他功能。
onboarding-welcome-learn-more = 了解更多好處。

onboarding-join-form-header = 加入 { -brand-product-name }
onboarding-welcome-modal-get-body = 瀏覽器安裝完成。<br/>了解 { -brand-product-name } 的其他功能。
onboarding-welcome-modal-supercharge-body = 加強對您的隱私保護。
onboarding-welcome-modal-privacy-body = 瀏覽器安裝完成。現在讓我們加入更多隱私保護。
onboarding-welcome-modal-family-learn-more = 了解 { -brand-product-name } 的系列產品。
onboarding-welcome-form-header = 從這裡開始

onboarding-join-form-body = 在此輸入您的電子郵件信箱，即可開始使用。
onboarding-join-form-email =
    .placeholder = 輸入電子郵件信箱
onboarding-join-form-email-error = 請輸入有效的電子郵件信箱
onboarding-join-form-legal = 繼續使用，代表您同意我們的<a data-l10n-name="terms">使用條款</a>及<a data-l10n-name="privacy">隱私權公告</a>。
onboarding-join-form-continue = 繼續

# This message is followed by a link using onboarding-join-form-signin ("Sign In") as text.
onboarding-join-form-signin-label = 已經有帳號了嗎？
# Text for link to submit the sign in form
onboarding-join-form-signin = 登入

onboarding-start-browsing-button-label = 開始瀏覽

onboarding-cards-dismiss =
    .title = 隱藏
    .aria-label = 隱藏

## Welcome full page string

onboarding-fullpage-welcome-subheader = 讓我們探索還能做哪些事。
onboarding-fullpage-form-email =
    .placeholder = 您的電子郵件地址…

## Firefox Sync modal dialog strings.

onboarding-sync-welcome-header = { -brand-product-name } 隨身帶著走
onboarding-sync-welcome-content = 在您的各種裝置上同步書籤、瀏覽紀錄、登入資訊及其他設定。
onboarding-sync-welcome-learn-more-link = 了解 Firefox Accounts 的更多資訊

onboarding-sync-form-input =
    .placeholder = 電子郵件

onboarding-sync-form-continue-button = 繼續
onboarding-sync-form-skip-login-button = 跳過這步

## This is part of the line "Enter your email to continue to Firefox Sync"

onboarding-sync-form-header = 輸入您的電子郵件地址
onboarding-sync-form-sub-header = 繼續前往 { -sync-brand-name }


## These are individual benefit messages shown with an image, title and
## description.

onboarding-benefit-products-title = 有用的產品

onboarding-benefit-products-text = 使用各種尊重您隱私的小工具，更快達成任務。

onboarding-benefit-knowledge-title = 實用小知識
onboarding-benefit-knowledge-text = 瞭解您需要的所有資訊，在線上更聰明、更安全。

onboarding-benefit-privacy-title = 保護隱私權

# "Personal Data Promise" is a concept that should be translated consistently
# across the product. It refers to a concept shown elsewhere to the user: "The
# Firefox Personal Data Promise is the way we honor your data in everything we
# make and do. We take less data. We keep it safe. And we make sure that we are
# transparent about how we use it."
onboarding-benefit-privacy-text = 我們作的任何事情，都符合我們對個人資料隱私的承諾: 能少拿就少拿、確保資料安全、絕不偷偷來。


onboarding-benefit-sync-title = { -sync-brand-short-name }
onboarding-benefit-sync-text = 在任何使用 { -brand-product-name } 的地方同步書籤、密碼、上網紀錄與更多資料。

onboarding-benefit-monitor-title = { -monitor-brand-short-name }
onboarding-benefit-monitor-text = 在您的個人資料出現在資料外洩事件時獲得通知。

onboarding-benefit-lockwise-title = { -lockwise-brand-short-name }
onboarding-benefit-lockwise-text = 以安全又可隨身攜帶的方式，管理您的網站密碼。


## These strings belong to the individual onboarding messages.


## Each message has a title and a description of what the browser feature is.
## Each message also has an associated button for the user to try the feature.
## The string for the button is found above, in the UI strings section

onboarding-private-browsing-title = 隱私瀏覽
onboarding-private-browsing-text = 上網不露足跡。含有內容封鎖機制的隱私瀏覽功能會封鎖在網路上追蹤您的線上追蹤器。

onboarding-screenshots-title = 拍攝擷圖
onboarding-screenshots-text = 不用離開 { -brand-short-name } 即可拍攝、儲存、分享畫面擷圖。可直接拍攝整個畫面或頁面中的一部份，然後自動上傳到網路上，方便使用分享。

onboarding-addons-title = 附加元件
onboarding-addons-text = 擴充 { -brand-short-name } 內建的功能，讓瀏覽器更好用。您可以用附加元件來比價、查天氣，或是自訂佈景主題展現自我。

onboarding-ghostery-title = Ghostery
onboarding-ghostery-text = 使用 Ghostery 封鎖討人厭的廣告，讓您上網更快、更聰明、更安全。

# Note: "Sync" in this case is a generic verb, as in "to synchronize"
onboarding-fxa-title = 同步
onboarding-fxa-text = 註冊 { -fxaccount-brand-name } 後，即可在任何使用 { -brand-short-name } 的地方同步您的書籤、密碼、開啟的分頁。

onboarding-tracking-protection-title2 = 保護您不受追蹤
onboarding-tracking-protection-text2 = { -brand-short-name } 可幫助防止網站在線上追蹤，讓廣告更難追著你。
onboarding-tracking-protection-button2 = 原理是什麼

onboarding-data-sync-title = 把設定隨身帶著走
# "Sync" is short for synchronize.
onboarding-data-sync-text2 = 在任何使用 { -brand-product-name } 的地方同步書籤、密碼等資料。
onboarding-data-sync-button2 = 登入 { -sync-brand-short-name }

onboarding-firefox-monitor-title = 小心資料外洩！
onboarding-firefox-monitor-text = { -monitor-brand-name } 會監控您的 E-Mail 是否出現在資料外洩事故中，並且在有新事故時通知您。
onboarding-firefox-monitor-text2 = { -monitor-brand-name } 會監控您的 E-Mail 是否出現在資料外洩事故中，並且在有新事故時通知您。
onboarding-firefox-monitor-button = 訂閱帳號資料外洩警報

onboarding-browse-privately-title = 私密上網
onboarding-browse-privately-text = 隱私瀏覽模式會自動清除您的搜尋與上網紀錄，讓這台電腦的其他使用者無法得知您的上網紀錄。
onboarding-browse-privately-button = 開啟隱私視窗

onboarding-firefox-send-title = 以私密的方式分享檔案
onboarding-firefox-send-text2 = 上傳您的檔案到 { -send-brand-name }，即可透過點對點加密與會自動失效的鏈結來進行分享。
onboarding-firefox-send-button = 試用 { -send-brand-name }

onboarding-mobile-phone-title = 取得手機版的 { -brand-product-name }
onboarding-mobile-phone-text = 下載 { -brand-product-name } for iOS 或 Android，即可在您的不同裝置間同步資料。
# "Mobile" is short for mobile/cellular phone, "Browser" is short for web
# browser.
onboarding-mobile-phone-button = 下載行動瀏覽器

onboarding-send-tabs-title = 即時發送分頁給自己
# "Send Tabs" refers to "Send Tab to Device" feature that appears when opening a
# tab's context menu.
onboarding-send-tabs-text = Send Tabs 可即時於您的各個裝置間分享分頁，不需要複製、貼上或離開瀏覽器。
# "Send Tabs" refers to "Send Tab to Device" feature that appears when opening a
# tab's context menu.
onboarding-send-tabs-text2 = 輕鬆地在您的各個裝置間分享網頁，不需要複製網址或離開瀏覽器。
onboarding-send-tabs-button = 開始使用 Send Tabs

onboarding-pocket-anywhere-title = 隨處閱讀隨處聽
onboarding-pocket-anywhere-text2 = 可使用 { -pocket-brand-name } 將您最愛的文章儲存下來，這樣就可以在有空的時候閱讀、聆聽或觀賞，就算離線也沒問題。
onboarding-pocket-anywhere-button = 試用 { -pocket-brand-name }

onboarding-lockwise-passwords-title = 密碼隨身帶著走
onboarding-lockwise-passwords-text2 = { -lockwise-brand-name } 會安全地儲存您的密碼，讓您可輕鬆在各個網站上登入帳號。
onboarding-lockwise-passwords-button2 = 下載程式

onboarding-lockwise-strong-passwords-title = 建立並儲存強密碼
onboarding-lockwise-strong-passwords-text = { -lockwise-brand-name } 可直接在網頁表單中建立強密碼，並且儲存在同一個地方，方便使用。
onboarding-lockwise-strong-passwords-button = 管理您的登入資訊

onboarding-facebook-container-title = 為 Facebook 設定邊界
onboarding-facebook-container-text2 = { -facebook-container-brand-name } 可將您的 Facebook 身分隔絕於其他網站之外，使其更難在網路上追蹤您。
onboarding-facebook-container-button = 安裝擴充套件


onboarding-import-browser-settings-title = 匯入您的書籤、密碼與更多資料
onboarding-import-browser-settings-text = 別猶豫—馬上把您的 Chrome 網站資料與設定匯入進來。
onboarding-import-browser-settings-button = 匯入 Chrome 資料

onboarding-personal-data-promise-title = 從設計就保護隱私
onboarding-personal-data-promise-text = { -brand-product-name } 尊重您的資料，能少拿就少拿、盡力保護，並且明確說明我們會如何使用。
onboarding-personal-data-promise-button = 閱讀我們的承諾

## Message strings belonging to the Return to AMO flow

return-to-amo-sub-header = 恭喜，您已經安裝好 { -brand-short-name }

# <icon></icon> will be replaced with the icon belonging to the extension
#
# Variables:
#   $addon-name (String) - Name of the add-on
return-to-amo-addon-header = 現在來安裝 <icon></icon><b>{ $addon-name }</b> 吧。
return-to-amo-extension-button = 安裝擴充套件
return-to-amo-get-started-button = { -brand-short-name } 使用入門

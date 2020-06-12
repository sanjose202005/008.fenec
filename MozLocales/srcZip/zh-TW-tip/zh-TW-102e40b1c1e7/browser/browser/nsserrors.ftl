# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Variables:
# $hostname (String) - Hostname of the website with SSL error.
# $errorMessage (String) - Error message corresponding to the type of error we are experiencing.
ssl-connection-error = 連線到 { $hostname } 時發生錯誤。{ $errorMessage }

# Variables:
# $error (string) - NSS error code string that specifies type of cert error. e.g. unknown issuer, invalid cert, etc.
cert-error-code-prefix = 錯誤碼: { $error }

psmerr-ssl-disabled = 無法安全連線，因為 SSL 通訊協定已停用。
psmerr-ssl2-disabled = 無法安全連線，因為該網站使用舊版、不安全的 SSL 通訊協定。

# This is a multi-line message.
psmerr-hostreusedissuerandserial =
    您收到無效的憑證，請與伺服器管理員或郵件聯絡人聯絡，並提供下列資訊:
    
    您的憑證內含與其他憑證機構所簽發憑證相同的序號，請用不同的序號產生新的憑證。

ssl-error-export-only-server = 無法安全通訊，節點不支援高等級加密。
ssl-error-us-only-server = 無法安全通訊，不支援節點所要求的高等級加密。
ssl-error-no-cypher-overlap = 無法安全地與對方通訊: 無雙方接受的加密演算法。
ssl-error-no-certificate = 找不到鑑別需要的憑證或金鑰。
ssl-error-bad-certificate = 無法安全與節點通訊: 節點 的憑證已被拒絕。
ssl-error-bad-client = 伺服器從用戶端收到損壞的資料。
ssl-error-bad-server = 用戶端從伺服器收到損壞的資料。
ssl-error-unsupported-certificate-type = 不支援的憑證類型。
ssl-error-unsupported-version = 對方使用不支援的安全通訊協定版本。
ssl-error-wrong-certificate = 用戶端鑑別失敗: 金鑰資料庫中的私密金鑰和憑證資料庫中的公開金鑰不符。
ssl-error-bad-cert-domain = 無法安全與節點通訊: 請求的網域名稱與伺服器的憑證不符。
ssl-error-post-warning = 無法識別的 SSL 錯誤代碼。
ssl-error-ssl2-disabled = 對方只支援 SSL 第 2 版，但本機已停用此協定。
ssl-error-bad-mac-read = SSL 接收了含錯誤訊息鑑別碼的記錄。
ssl-error-bad-mac-alert = SSL 端點回報錯誤的訊息鑑別碼。
ssl-error-bad-cert-alert = SSL 端點無法驗證您的憑證。
ssl-error-revoked-cert-alert = 由於您的憑證已廢止，SSL 端點拒絕接收。
ssl-error-expired-cert-alert = 由於您的憑證已過期，SSL 端點拒絕接收。
ssl-error-ssl-disabled = 無法連線: SSL 已停用。
ssl-error-fortezza-pqg = 無法連線: SSL 端點位於其他的 FORTEZZA 網域。
ssl-error-unknown-cipher-suite = 請求了未知的 SSL 加密套件組。
ssl-error-no-ciphers-supported = 此程式目前沒有啟用任何加密套件組。
ssl-error-bad-block-padding = SSL 收到含損壞區塊填充的記錄。
ssl-error-rx-record-too-long = SSL 收到含超出最大允許字串長度的記錄。
ssl-error-tx-record-too-long = SSL 試圖傳送超出最大允許字串長度的記錄。
ssl-error-rx-malformed-hello-request = SSL 收到不正常的 Hello Request 交握訊息。
ssl-error-rx-malformed-client-hello = SSL 收到不正常的 Client Hello 交握訊息。
ssl-error-rx-malformed-server-hello = SSL 收到不正常的 Server Hello 交握訊息。
ssl-error-rx-malformed-certificate = SSL 收到不正常的 Certificate 交握訊息。
ssl-error-rx-malformed-server-key-exch = SSL 收到不正常的 Server Key Exchange 交握訊息。
ssl-error-rx-malformed-cert-request = SSL 收到不正常的 Certificate Request 交握訊息。
ssl-error-rx-malformed-hello-done = SSL 收到不正常的 Server Hello Done 交握訊息。
ssl-error-rx-malformed-cert-verify = SSL 收到不正常的 Certificate Verify 交握訊息。
ssl-error-rx-malformed-client-key-exch = SSL 收到不正常的 Client Key Exchange 交握訊息。
ssl-error-rx-malformed-finished = SSL 收到不正常的 Finished 交握訊息。
ssl-error-rx-malformed-change-cipher = SSL 收到不正常的 Change Cipher Spec 記錄。
ssl-error-rx-malformed-alert = SSL 收到不正常的 Alert 記錄。
ssl-error-rx-malformed-handshake = SSL 收到不正常的交握記錄。
ssl-error-rx-malformed-application-data = SSL 收到不正常的程式資料記錄。
ssl-error-rx-unexpected-hello-request = SSL 收到未預期的 Hello 請求交握訊息。
ssl-error-rx-unexpected-client-hello = SSL 收到未預期的 Client Hello 交握訊息。
ssl-error-rx-unexpected-server-hello = SSL 收到未預期的 Server Hello 交握訊息。
ssl-error-rx-unexpected-certificate = SSL 收到未預期的 Certificate 交握訊息。
ssl-error-rx-unexpected-server-key-exch = SSL 收到未預期的 Server Key Exchange 交握訊息。
ssl-error-rx-unexpected-cert-request = SSL 收到未預期的 Certificate Request 交握訊息。
ssl-error-rx-unexpected-hello-done = SSL 收到未預期的伺服器 Hello 完成交握訊息。
ssl-error-rx-unexpected-cert-verify = SSL 收到未預期的 Certificate Verify 交握訊息。
ssl-error-rx-unexpected-client-key-exch = SSL 收到未預期的 Client Key Exchange 交握訊息。
ssl-error-rx-unexpected-finished = SSL 收到未預期的已完成交握訊息。
ssl-error-rx-unexpected-change-cipher = SSL 收到未預期的變更密文格式記錄。
ssl-error-rx-unexpected-alert = SSL 收到未預期的警告記錄。
ssl-error-rx-unexpected-handshake = SSL 收到未預期的交握記錄。
ssl-error-rx-unexpected-application-data = SSL 收到未預期的程式資料記錄。
ssl-error-rx-unknown-record-type = SSL 收到含未知內容類型的記錄。
ssl-error-rx-unknown-handshake = SSL 收到含未知訊息類型的交握訊息。
ssl-error-rx-unknown-alert = SSL 收到含未知警告敘述的警告記錄。
ssl-error-close-notify-alert = SSL 端點已關閉此連線。
ssl-error-handshake-unexpected-alert = SSL 端點收到了不應收到的交握訊息。
ssl-error-decompression-failure-alert = SSL 端點無法成功解壓縮收到的 SSL 記錄。
ssl-error-handshake-failure-alert = SSL 端點無法交涉出可接受的安全性參數。
ssl-error-illegal-parameter-alert = SSL 端點已拒絕接收無法接受的內容。
ssl-error-unsupported-cert-alert = SSL 端點不支援收到的憑證類型。
ssl-error-certificate-unknown-alert = SSL 端點收到的憑證發生未預期的問題。
ssl-error-generate-random-failure = SSL 的隨機數字產生器失效。
ssl-error-sign-hashes-failure = 無法數位化簽署資料以驗證您的憑證。
ssl-error-extract-public-key-failure = SSL 無法解開來自節點的憑證中的公開金鑰。
ssl-error-server-key-exchange-failure = 處理 SSL 伺服器金鑰交換交握時遇到不明原因的失敗。
ssl-error-client-key-exchange-failure = 處理 SSL 用戶端金鑰交換交握時遇到不明原因的失敗。
ssl-error-encryption-failure = 所選的加密套件組的大量資料加密演算法失效。
ssl-error-decryption-failure = 所選的加密套件組中的大量資料解密演算法失效。
ssl-error-socket-write-failure = 試圖寫入加密資訊到其下的 socket 失敗。
ssl-error-md5-digest-failure = MD5 摘要函式失效。
ssl-error-sha-digest-failure = SHA-1 摘要函式失效。
ssl-error-mac-computation-failure = MAC 計算失敗。
ssl-error-sym-key-context-failure = 建立對稱式金鑰內容失敗。
ssl-error-sym-key-unwrap-failure = 於用戶端金鑰交換訊息展開對稱式金鑰時失敗。
ssl-error-pub-key-size-limit-exceeded = SSL 伺服器試圖於匯出的加密套件組使用民用規格的公開金鑰。
ssl-error-iv-param-failure = 將 PKCS11 代碼轉譯為 IV 到參數時失敗。
ssl-error-init-cipher-suite-failure = 所選的加密套件組初始化失敗。
ssl-error-session-key-gen-failure = 用戶端產生用於 SSL 連線的連線金鑰失敗。
ssl-error-no-server-key-for-alg = 伺服器沒有金鑰可供嘗試金鑰交換演算法。
ssl-error-token-insertion-removal = 操作進行時 PKCS#11 token 已插入或移除。
ssl-error-token-slot-not-found = 找不到 PKCS#11 token 完成要求的操作。
ssl-error-no-compression-overlap = 無法安全地與節點通訊: 無雙方接受的壓縮演算法。
ssl-error-handshake-not-completed = 到目前的交握完成前無法初始其他的 SSL 交握。
ssl-error-bad-handshake-hash-value = 從對方收到錯誤的交握雜湊值。
ssl-error-cert-kea-mismatch = 提供的憑證無法用於所選的金鑰交換演算法。
ssl-error-no-trusted-ssl-client-ca = 未信任任何憑證機構進行 SSL 用戶端驗證。
ssl-error-session-not-found = 伺服器的連線快取中找不到用戶端的 SSL 連線 ID。
ssl-error-decryption-failed-alert = 對方無法解密收到的 SSL 記錄。
ssl-error-record-overflow-alert = 對方所收到的 SSL 記錄比所允許的還長。
ssl-error-unknown-ca-alert = 對方不認得且不信任簽發您的憑證的憑證機構。
ssl-error-access-denied-alert = 對方已收到有效的憑證，但被拒絕存取。
ssl-error-decode-error-alert = 對方無法解碼 SSL 交握訊息。
ssl-error-decrypt-error-alert = 對方回報簽章驗證或金鑰交換失敗。
ssl-error-export-restriction-alert = 對方回報協議與匯出規則不符。
ssl-error-protocol-version-alert = 對方回報不相容或未支援的通訊協定版本。
ssl-error-insufficient-security-alert = 伺服器要求使用的加密演算法超出用戶端支援範圍。
ssl-error-internal-error-alert = 對方回報發生內部錯誤。
ssl-error-user-canceled-alert = 對方使用者已取消交握。
ssl-error-no-renegotiation-alert = 對方不允許重新協議 SSL 安全性參數。
ssl-error-server-cache-not-configured = SSL 伺服器快取未組態且未於此 socket 停用。
ssl-error-unsupported-extension-alert = SSL 端點不支援請求的 TLS hello 擴充欄位。
ssl-error-certificate-unobtainable-alert = SSL 端點無法從您給的網址取得憑證。
ssl-error-unrecognized-name-alert = SSL 端點沒有請求的 DNS 名稱的憑證。
ssl-error-bad-cert-status-response-alert = SSL 端點無法取得其憑證的 OCSP 回應。
ssl-error-bad-cert-hash-value-alert = SSL 端點回報了憑證雜湊值錯誤。
ssl-error-rx-unexpected-new-session-ticket = SSL 收到一個未預期的 New Session Ticket 交握訊息。
ssl-error-rx-malformed-new-session-ticket = SSL 收到不正常的 New Session Ticket 交握訊息。
ssl-error-decompression-failure = SSL 接收到了一個無法被解壓縮的壓縮記錄。
ssl-error-renegotiation-not-allowed = SSL 連線端口不允許重新交涉。
ssl-error-unsafe-negotiation = 對方電腦用了較舊的（可能是容易遭攻擊的）交握方式要求連線。
ssl-error-rx-unexpected-uncompressed-record = SSL 收到了一個未預期的未壓縮記錄。
ssl-error-weak-server-ephemeral-dh-key = SSL 在 Server Key Exchange 的交握訊息當中收到一個短暫的弱強度 Diffie-Hellman 金鑰。
ssl-error-next-protocol-data-invalid = SSL 收到了無效的 NPN 擴充欄位資料。
ssl-error-feature-not-supported-for-ssl2 = SSL 2.0 連線當中不支援的 SSL 功能。
ssl-error-feature-not-supported-for-servers = 伺服器不支援的 SSL 功能。
ssl-error-feature-not-supported-for-clients = 客戶端不支援的 SSL 功能。
ssl-error-invalid-version-range = SSL 版本範圍無效。
ssl-error-cipher-disallowed-for-version = SSL 節點選用了在指定的通訊協定版本中不被允許使用的加密套件組。
ssl-error-rx-malformed-hello-verify-request = SSL 收到不正常的 Hello Verify Request 交握訊息。
ssl-error-rx-unexpected-hello-verify-request = SSL 收到未預期的 Hello Verify Request 交握訊息。
ssl-error-feature-not-supported-for-version = 該通訊協定版本不支援 SSL 功能。
ssl-error-rx-unexpected-cert-status = SSL 收到未預期的 Certificate Status 交握訊息。
ssl-error-unsupported-hash-algorithm = TLS 節點使用了未支援的雜湊演算法。
ssl-error-digest-failure = Digest 函數失敗。
ssl-error-incorrect-signature-algorithm = 數位簽署元素中指定了不正確的簽章演算法。
ssl-error-next-protocol-no-callback = 啟用了 Next protocol negotiation 擴充功能，但 callback 在需要用到之前就被清除。
ssl-error-next-protocol-no-protocol = 伺服器不支援任何客戶端接受的 ALPN 擴充功能當中的通訊協定。
ssl-error-inappropriate-fallback-alert = 因為客戶端降級至比伺服器支援還更低的 TLS 版本，伺服器拒絕交握。
ssl-error-weak-server-cert-key = 伺服器憑證中包含一把加密程度太弱的公鑰。
ssl-error-rx-short-dtls-read = DTLS 紀錄緩衝區的空間不足。
ssl-error-no-supported-signature-algorithm = 未設定使用支援的 TLS 簽章演算法。
ssl-error-unsupported-signature-algorithm = 對方使用了不支援的簽章與雜湊演算法組合。
ssl-error-missing-extended-master-secret = 對方嘗試以不正確的 extended_master_secret 延伸內容恢復。
ssl-error-unexpected-extended-master-secret = 對方嘗試以未預期的 extended_master_secret 延伸內容恢復。
sec-error-io = 在安全鑑別時發生 I/O 錯誤。
sec-error-library-failure = 安全函式庫失效。
sec-error-bad-data = 安全函式庫: 已收到損壞資料。
sec-error-output-len = 安全函式庫: 輸出長度錯誤。
sec-error-input-len = 安全函式庫遇到輸入長度錯誤。
sec-error-invalid-args = 安全函式庫: 無效的參數。
sec-error-invalid-algorithm = 安全函式庫: 無效的演算法。
sec-error-invalid-ava = 安全函式庫: 無效的 AVA。
sec-error-invalid-time = 不正確的時間字串格式。
sec-error-bad-der = 安全函式庫: 不正確的 DER 編碼訊息格式。
sec-error-bad-signature = 節點的憑證簽章無效。
sec-error-expired-certificate = 節點的憑證已過期。
sec-error-revoked-certificate = 節點的憑證已廢止。
sec-error-unknown-issuer = 無法辨認節點的憑證簽發者。
sec-error-bad-key = 節點的公開金鑰無效。
sec-error-bad-password = 輸入的安全密碼不正確。
sec-error-retry-password = 輸入的新密碼不正確，請再試一次。
sec-error-no-nodelock = 安全函式庫: 無 nodelock。
sec-error-bad-database = 安全函式庫: 損壞的資料庫。
sec-error-no-memory = 安全函式庫: 記憶體定址失敗。
sec-error-untrusted-issuer = 節點的憑證簽發者已被使用者標記為不受信任。
sec-error-untrusted-cert = 節點的憑證已被使用者標記為不受信任。
sec-error-duplicate-cert = 憑證已存在於資料庫中。
sec-error-duplicate-cert-name = 所下載的憑證名稱和資料庫中的記錄重複。
sec-error-adding-cert = 新增憑證到資料庫時錯誤。
sec-error-filing-key = 重新填寫此憑證的金鑰時錯誤。
sec-error-no-key = 資料庫中找不到此憑證的私密金鑰。
sec-error-cert-valid = 此憑證有效。
sec-error-cert-not-valid = 此憑證無效。
sec-error-cert-no-response = 憑證函式庫: 無回應
sec-error-expired-issuer-certificate = 憑證簽發者的憑證已過期，請檢查您的系統日期及時間。
sec-error-crl-expired = 憑證簽發者的已過期，請更新廢止清冊或檢查您的系統日期及時間。
sec-error-crl-bad-signature = 憑證簽發者的廢止清冊簽章無效。
sec-error-crl-invalid = 新憑證廢止清冊的格式無效。
sec-error-extension-value-invalid = 憑證擴充欄位的值無效。
sec-error-extension-not-found = 找不到憑證的擴充欄位。
sec-error-ca-cert-invalid = 簽發者的憑證無效。
sec-error-path-len-constraint-invalid = 憑證路徑長度限制無效。
sec-error-cert-usages-invalid = 憑證使用的欄位無效。
sec-internal-only = **專供內部使用的模組**
sec-error-invalid-key = 金鑰不支援所請求的操作。
sec-error-unknown-critical-extension = 憑證含未知的 Critical 擴充欄位。
sec-error-old-crl = 新憑證廢止清冊不能比目前的清冊還晚。
sec-error-no-email-cert = 未加密或簽章: 您尚未擁有 Email 憑證。
sec-error-no-recipient-certs-query = 未加密: 您尚未擁有每個收件人的憑證。
sec-error-not-a-recipient = 無法解密: 您不是收件人或是找不到相符的憑證或私密金鑰。
sec-error-pkcs7-keyalg-mismatch = 無法解密: 金鑰加密演算法和您的憑證不符。
sec-error-pkcs7-bad-signature = 簽章鑑別失敗: 找不到簽署者、找到太多簽署者或收到不正確、損毀的資料。
sec-error-unsupported-keyalg = 不支援或未知的金鑰演算法。
sec-error-decryption-disallowed = 無法解密: 加密資訊使用不允許的演算法或金鑰長度。
xp-sec-fortezza-bad-card = Fortezza 卡未正確初始化，請取出並還給您的簽發者。
xp-sec-fortezza-no-card = 找不到 Fortezza 卡
xp-sec-fortezza-none-selected = 未選擇 Fortezza 卡
xp-sec-fortezza-more-info = 請選擇個人身份以取得更多資訊於
xp-sec-fortezza-person-not-found = 找不到個人身份
xp-sec-fortezza-no-more-info = 在此個人身份找不到更多資訊
xp-sec-fortezza-bad-pin = 無效的 PIN
xp-sec-fortezza-person-error = 無法初始化 Fortezza 的個人身份。
sec-error-no-krl = 找不到此網站憑證的金鑰廢止清冊。
sec-error-krl-expired = 此網站憑證的金鑰廢止清冊已過期。
sec-error-krl-bad-signature = 此網站憑證的金鑰廢止清冊含無效的簽章。
sec-error-revoked-key = 此網站憑證的金鑰廢止清冊金鑰已廢止。
sec-error-krl-invalid = 新金鑰廢止清冊格式無效。
sec-error-need-random = 安全函式庫: 需要隨機資料。
sec-error-no-module = 安全函式庫: 無安全模組能完成請求的操作。
sec-error-no-token = 安全卡或 Token 不存在、需要初始化或已被取出。
sec-error-read-only = 安全函式庫: 資料庫是唯讀狀態。
sec-error-no-slot-selected = 未選擇 Slot 或 Token。
sec-error-cert-nickname-collision = 憑證內含的相同暱稱已存在。
sec-error-key-nickname-collision = 金鑰內含的相同暱稱已存在。
sec-error-safe-not-created = 建立安全物件時錯誤
sec-error-baggage-not-created = 建立包裹物件時錯誤
xp-java-remove-principal-error = 無法移除 Principal
xp-java-delete-privilege-error = 無法刪除 Privilege
xp-java-cert-not-exists-error = 此 Principal 沒有憑證
sec-error-bad-export-algorithm = 所需的演算法不被允許。
sec-error-exporting-certificates = 嘗試匯出憑證時錯誤。
sec-error-importing-certificates = 嘗試匯入憑證時錯誤。
sec-error-pkcs12-decoding-pfx = 無法匯入，解碼錯誤，檔案無效。
sec-error-pkcs12-invalid-mac = MAC 無效，無法匯入。密碼錯誤或是檔案已損毀。
sec-error-pkcs12-unsupported-mac-algorithm = 無法匯入，不支援的 MAC 演算法。
sec-error-pkcs12-unsupported-transport-mode = 無法匯入，只支援密碼完整性及隱私模式。
sec-error-pkcs12-corrupt-pfx-structure = 無法匯入，檔案結構損毀。
sec-error-pkcs12-unsupported-pbe-algorithm = 無法匯入，加密演算法不支援。
sec-error-pkcs12-unsupported-version = 無法匯入，檔案版本不支援。
sec-error-pkcs12-privacy-password-incorrect = 無法匯入，隱私密碼不正確。
sec-error-pkcs12-cert-collision = 無法匯入，資料庫中已有相同的暱稱。
sec-error-user-cancelled = 使用者按下「取消」。
sec-error-pkcs12-duplicate-data = 未匯入，資料庫已有資料。
sec-error-message-send-aborted = 訊息未送出。
sec-error-inadequate-key-usage = 試圖操作的憑證金鑰用法不正確。
sec-error-inadequate-cert-type = 程式的憑證類型未被核准。
sec-error-cert-addr-mismatch = 簽署憑證的位置與訊息標頭中的位置不符。
sec-error-pkcs12-unable-to-import-key = 無法匯入，試圖匯入私密金鑰時錯誤。
sec-error-pkcs12-importing-cert-chain = 無法匯入，試圖匯入憑證鏈時錯誤。
sec-error-pkcs12-unable-to-locate-object-by-name = 無法匯出，無法依暱稱尋找憑證或金鑰。
sec-error-pkcs12-unable-to-export-key = 無法匯出，無法找到私鑰並匯出。
sec-error-pkcs12-unable-to-write = 無法匯出，無法寫入匯出檔案。
sec-error-pkcs12-unable-to-read = 無法匯入，無法讀取匯入檔案。
sec-error-pkcs12-key-database-not-initialized = 無法匯出，金鑰資料庫毀損或已刪除。
sec-error-keygen-fail = 無法產生公開╱私密金鑰對。
sec-error-invalid-password = 輸入的密碼無效，請選擇其他的密碼。
sec-error-retry-old-password = 輸入的舊密碼不正確，請再試一次。
sec-error-bad-nickname = 憑證暱稱已被使用。
sec-error-not-fortezza-issuer = 對方的 FORTEZZA 鏈內含非 FORTEZZA 的憑證。
sec-error-cannot-move-sensitive-key = Sensitive 金鑰無法移到所需要的 Slot。
sec-error-js-invalid-module-name = 模組名稱無效。
sec-error-js-invalid-dll = 模組路徑╱檔名無效。
sec-error-js-add-mod-failure = 無法新增模組
sec-error-js-del-mod-failure = 無法刪除模組
sec-error-old-krl = 新金鑰廢止清冊不能比目前的清冊還晚。
sec-error-ckl-conflict = 新洩漏金鑰清冊和目前的清冊簽發者不同，請刪除目前的洩漏金鑰清冊。
sec-error-cert-not-in-name-space = 此憑證的憑證機構不允許用此名稱簽發憑證。
sec-error-krl-not-yet-valid = 此憑證的金鑰廢止清冊尚未驗證。
sec-error-crl-not-yet-valid = 此憑證的憑證廢止清冊尚未驗證。
sec-error-unknown-cert = 找不到請求的憑證。
sec-error-unknown-signer = 找不到簽署者的憑證。
sec-error-cert-bad-access-location = 憑證狀態伺服器位置的格式無效。
sec-error-ocsp-unknown-response-type = OCSP 回應無法被完全解碼；回應是未知的類型。
sec-error-ocsp-bad-http-response = OCSP 伺服器回傳了未預期╱無效的 HTTP 資料。
sec-error-ocsp-malformed-request = OCSP 伺服器發現請求已損毀或格式不正確。
sec-error-ocsp-server-error = OCSP 伺服器發生內部錯誤。
sec-error-ocsp-try-server-later = OCSP 伺服器建議您稍候再試。
sec-error-ocsp-request-needs-sig = OCSP 伺服器需要此請求的簽章。
sec-error-ocsp-unauthorized-request = OCSP 伺服器已拒絕此未授權的請求。
sec-error-ocsp-unknown-response-status = OCSP 伺服器回傳了未辨識的狀態。
sec-error-ocsp-unknown-cert = OCSP 伺服器沒有憑證狀態。
sec-error-ocsp-not-enabled = 您必須啟用 OCSP 才能完成此操作。
sec-error-ocsp-no-default-responder = 您必須設定 OCSP 預設回應者才能完成此操作。
sec-error-ocsp-malformed-response = 從 OCSP 伺服器傳來的回應已損毀或格式不正確。
sec-error-ocsp-unauthorized-response = OCSP 回應的簽署者未獲授權回應此憑證的狀態。
sec-error-ocsp-future-response = OCSP 回應尚未生效（內含未來的日期）。
sec-error-ocsp-old-response = OCSP 回應內含過期的資訊。
sec-error-digest-not-found = 簽章訊息中找不到 CMS 或 PKCS #7 摘要。
sec-error-unsupported-message-type = CMS 或 PKCS #7 訊息類型不支援。
sec-error-module-stuck = PKCS #11 模組正在使用中，無法移除。
sec-error-bad-template = 無法解碼 ASN.1 資料，指定的範本無效。
sec-error-crl-not-found = 找不到相符的憑證廢止清冊。
sec-error-reused-issuer-and-serial = 您正試圖匯入和現有憑證的簽發者╱序號相同的憑證，但他們並不是同一個憑證。
sec-error-busy = NSS 無法關閉，物件還在使用中。
sec-error-extra-input = DER 編碼訊息含有額外的未使用資料。
sec-error-unsupported-elliptic-curve = 不支援的橢圓曲線。
sec-error-unsupported-ec-point-form = 不支援的橢圓曲線點格式。
sec-error-unrecognized-oid = 不支援的物件識別符。
sec-error-ocsp-invalid-signing-cert = OCSP 回應含無效的 OCSP 簽署憑證。
sec-error-revoked-certificate-crl = 在簽發者憑證廢止清單中的憑證已廢止。
sec-error-revoked-certificate-ocsp = 簽發者的 OCSP 回應者回報憑證已廢止。
sec-error-crl-invalid-version = 簽發者的憑證廢止清冊有未知的版本號碼。
sec-error-crl-v1-critical-extension = 簽發者的 V1 憑證廢止清單為 Critical 擴充欄位。
sec-error-crl-unknown-critical-extension = 簽發者的 V2 憑證廢止清單為未知的 Critical 擴充欄位。
sec-error-unknown-object-type = 指定的物件類型未知。
sec-error-incompatible-pkcs11 = PKCS #11 的驅動程式以不相容的方式違反規格。
sec-error-no-event = 目前沒有新 Slot 事件。
sec-error-crl-already-exists = 憑證廢止清冊已存在。
sec-error-not-initialized = NSS 尚未初始化。
sec-error-token-not-logged-in = 操作失敗，因為 PKCS#11 token 未登入。
sec-error-ocsp-responder-cert-invalid = 所設定 OCSP 回應者的憑證無效。
sec-error-ocsp-bad-signature = OCSP 回應含無效的簽章。
sec-error-out-of-search-limits = 憑證驗證搜尋超出了搜尋範圍
sec-error-invalid-policy-mapping = 憑證策略對應（Policy Mapping）包含了 anypolicy
sec-error-policy-validation-failed = 憑證鍊未通過憑證策略驗證
sec-error-unknown-aia-location-type = 憑證的授權資訊存取擴充欄位中包含了未知的位置類型
sec-error-bad-http-response = 伺服器回覆了無效的 HTTP 回應
sec-error-bad-ldap-response = 伺服器回覆了無效的 LDAP 回應
sec-error-failed-to-encode-data = 使用 ASN1 編碼器編碼資料失敗
sec-error-bad-info-access-location = 憑證擴充欄位中有錯誤的存取位置資訊
sec-error-libpkix-internal = 驗證憑證時，Libpkix 遇到了內部錯誤。
sec-error-pkcs11-general-error = 一個 PKCS #11 模組回覆了 CKR_GENERAL_ERROR，表示遇到了一個無法恢復的錯誤。
sec-error-pkcs11-function-failed = 一個 PKCS #11 模組回覆了 CKR_FUNCTION_FAILED，表示請求的函式無法被執行。再做一次相同的動作也許就會成功。
sec-error-pkcs11-device-error = 一個 PKCS #11 模組回覆了 CKR_DEVICE_ERROR，表示權杖（token）或插槽（slot）遇到了問題。
sec-error-bad-info-access-method = 憑證擴充欄位當中有未知的存取方式資訊。
sec-error-crl-import-failed = 匯入憑證撤銷清單（CRL）時遇到問題。
sec-error-expired-password = 密碼已過期。
sec-error-locked-password = 密碼已鎖定。
sec-error-unknown-pkcs11-error = 未知的 PKCS #11 錯誤。
sec-error-bad-crl-dp-url = 廢止清冊發佈點當中有無效或未支援的網址。
sec-error-cert-signature-algorithm-disabled = 此憑證使用了已被停用的演算法所簽署，因為該演算法不安全。
mozilla-pkix-error-key-pinning-failure = 此伺服器使用 key pinning (HPKP) 機制，但無法建構符合 pinset 的信任的金鑰鍊。無法忽略違規的 key pinning。
mozilla-pkix-error-ca-cert-used-as-end-entity = 伺服器使用了包含「基本限制」擴充欄位的憑證，表示其為憑證機構。對於正確發行的憑證來說不應該這麼做。
mozilla-pkix-error-inadequate-key-size = 伺服器提供的憑證金鑰太小，無法建立安全連線。
mozilla-pkix-error-v1-cert-used-as-ca = 伺服器的憑證是由非信賴起源（Trust Anchor）的 X.509 版本 1 憑證簽發。已棄用 X.509 版本 1 憑證，不應再用來簽發其他憑證。
mozilla-pkix-error-not-yet-valid-certificate = 伺服器提供了尚未生效的憑證。
mozilla-pkix-error-not-yet-valid-issuer-certificate = 此伺服器的憑證是以尚未生效的憑證簽發。
mozilla-pkix-error-signature-algorithm-mismatch = 憑證簽章欄位中的簽章演算法與其 signatureAlgorithm 欄位中所記載的演算法不符。
mozilla-pkix-error-ocsp-response-for-cert-missing = OCSP 回應中並未包含要驗證的憑證的狀態。
mozilla-pkix-error-validity-too-long = 伺服器提供了有效期限太長的憑證。
mozilla-pkix-error-required-tls-feature-missing = 缺少必需的 TLS 功能。
mozilla-pkix-error-invalid-integer-encoding = 伺服器提供了一張包含無效整數編碼的憑證。常見的原因可能是用了負數的序號、負的 RSA moduli，以及比需要長度還長的編碼。
mozilla-pkix-error-empty-issuer-name = 伺服器提供了發行者識別名稱空白的憑證。
mozilla-pkix-error-additional-policy-constraint-failed = 驗證此憑證時，發生附加政策限制驗證失敗。
mozilla-pkix-error-self-signed-cert = 該憑證未受信任，因為憑證是自己簽署的憑證。

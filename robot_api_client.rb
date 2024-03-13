require 'net/http'
require 'uri'
require 'json'
require 'csv'

# BASIC認証 ID
BASIC_ID = 'diveintocode'
# BASIC認証 パスワード
BASIC_PW = 'irTmas9R5wnc'

# 1.urlを解析する
url = URI.parse("https://robot.diveintocode.jp:17777/programLanguages")
# 2.httpの通信を設定する
# 通信先のホストやポートを設定
https = Net::HTTP.new(url.host, url.port)
# httpsで通信する場合、use_sslをtrueにする
https.use_ssl = true
# 3.リクエストを作成する
req = Net::HTTP::Get.new(url.path)
# 4. Basic認証の情報を設定する
req.basic_auth(BASIC_ID, BASIC_PW)
# 4.リクエストを投げる/レスポンスを受け取る
res = https.request(req)
# 5.データを変換する
binding.irb
hash = JSON.parse(res.body)
# 結果を出力
puts hash
require 'spec_helper'

describe "APIに対しリクエストレスポンス機能", type: :request do
　url = URI.parse("https://robot.diveintocode.jp:17777/programLanguages")

  describe 'GET ' do
    it 'リクエストすると正常にレスポンスが返ってくる' do 
　　 　get url.path
    　expect(response.status).to eq 200
    end
    it 'リクエストするとレスポンスに  が存在する' do 
　　　 get tweet_path(@tweet)
      expect(response.body).to include(@tweet.text)
    end
    #一部省略
  end
end
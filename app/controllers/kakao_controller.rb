class KakaoController < ApplicationController
  def keyboard
		@msg =
			{ 
				type: "buttons",
				buttons: ["소개", "예약"]
			}
		render json: @msg, status: :ok
  end
	
  def message
		@response = params[:content]
			
		if @response == "소개"
			@msg = {
				message: {
					text: "엉터리생고기 교대역점입니다.",
					photo: {
						url: "https://afternoon-reef-22396.herokuapp.com/%EB%8B%A4%EB%9E%8C%EC%A5%90.png",
						width: 640,
						height: 480
					}
					# message_button: {
					#   label: "NAVER BLOG",
					#   url: "https://blog.naver.com/xhdtn8070/221231786261"
					# }
				},
				keyboard: {
					type: "buttons",
					buttons: ["소개", "메뉴", "예약"]
				}
			}
		render json: @msg, status: :ok
			
		elsif @response == "예약"
			@msg = {
				message: {
					text: "02-596-8009\n전화 주시면 친절히 예약 도와드리겠습니다."
					# photo: {
					#     url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
					#     width: 640,
					#     height: 480
					# },
					
				},
				keyboard: {
					type: "buttons",
					buttons: ["소개", "메뉴", "예약"]
				}
			}
			render json: @msg, status: :ok
			elsif @response == "메뉴"
			@msg = {
				message: {
					text: "메뉴판 사진"
					# photo: {
					#     url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
					#     width: 640,
					#     height: 480
					# },
					
				},
				keyboard: {
					type: "buttons",
					buttons: ["소개", "메뉴", "예약"]
				}
			}
			render json: @msg, status: :ok
		else
			@msg = {
				message: {
					text: "#{@response}, 메시지가 잘 전달되었습니다."
				},
				keyboard: {
					type: "buttons",
					buttons: ["소개", "예약"]
				}
			}
			render json: @msg, status: :ok
		end
			
	end
end

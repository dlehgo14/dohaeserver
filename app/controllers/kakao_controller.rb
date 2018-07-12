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
					url: "/다람쥐.png",
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
				buttons: ["소개", "예약"]
			}
		}
		render json: @msg, status: :ok
			
		elsif @response == "예약"
			@msg = {
				message: {
					text: "예약 날짜 및 시간, 인원수를 입력해주세요.",
					# photo: {
					#     url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
					#     width: 640,
					#     height: 480
					# },
					message_button: {
						label: "UNI LION",
						url: "https://uni.likelion.org/lectures"
					}
				},
				keyboard: {
					type: "text",
				}
			}
			render json: @msg, status: :ok
		end
	end
end

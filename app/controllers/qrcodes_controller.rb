require 'rqrcode'
require 'chunky_png'

class QrcodesController < ApplicationController
  def generate
    data = '0292000100100000012249520230725202307281'

    # QRコードを生成
    qrcode = RQRCode::QRCode.new(data, :size => 4, :level => :q)
    
    # QRコードをイメージ画像に変換
    png = qrcode.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      module_px_size: 6,
      resize_exactly_to: false
    )

    # イメージ画像をデスクトップに保存
    desktop_path = File.expand_path('~/Desktop')
    file_name = "#{URI.encode_www_form_component(data)}.png"
    file_path = File.join(desktop_path, file_name)
    png.save(file_path)

    # ブラウザにイメージ画像を表示
    send_data File.read(file_path), type: 'image/png', disposition: 'inline'
  end
end

require 'rqrcode'

class QrcodesController < ApplicationController
  def generate
    qrcode = RQRCode::QRCode.new('Hello, QR code!')
    svg = qrcode.as_svg
    send_data svg, type: 'image/svg+xml', disposition: 'inline'
  end
end

class Api::V1::GetController < ApplicationController

  def index
    url = "https://api.evenfinancial.com/originator/rateTables/28e489b1-92b4-4ae0-9677-bbe98fe977f8"

    headers={
      'Accept': 'application/vnd.evenfinancial.v1+json',
      'Content-Type': 'application/json',
      'Authorization': `Bearer #{Rails.application.credentials.dig(:secret_api_key)}`
    }

    response=HTTParty.get(url, headers: headers)

    @uuid = response.body

    render json: @uuid

  end
end

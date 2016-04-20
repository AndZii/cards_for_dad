class CardsController < ApplicationController
  before_action :set_card, only: [:show, :update, :destroy]

  # GET /cards
  # GET /cards.json
  def index
    @cards = Card.all

    if @cards.count < 5
      store_call_words
    end

    render json: @cards
  end

  # GET /cards/1
  # GET /cards/1.json
  def show
    render json: @card
  end

  # POST /cards
  # POST /cards.json
  def create
    @card = Card.new(card_params)

    if @card.save
      render json: @card, status: :created, location: @card
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cards/1
  # PATCH/PUT /cards/1.json
  def update
    @card = Card.find(params[:id])

    if @card.update(card_params)
      head :no_content
    else
      render json: @card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cards/1
  # DELETE /cards/1.json
  def destroy
    @card.destroy

    head :no_content
  end

  private

    def set_card
      @card = Card.find(params[:id])
    end

    def card_params
      params.require(:card).permit(:frontSideSide, :backSideSide)
    end

  def store_call_words
    Card.create(:frontSide => "ascertain" ,:backSide =>"выяснять").save
    Card.create(:frontSide => "accessible",:backSide =>"доступный").save
    Card.create(:frontSide => "requirements",:backSide =>"требования").save
    Card.create(:frontSide => "mean",:backSide =>"иметь в виду").save
    Card.create(:frontSide => "apply",:backSide =>"подать заявление").save
    Card.create(:frontSide => "refers",:backSide =>"относиться").save
    Card.create(:frontSide => "approve",:backSide =>"утверждать/одобрять").save
    Card.create(:frontSide => "attend",:backSide =>"посещать/присутствовать").save
    Card.create(:frontSide => "quality",:backSide =>"качественный").save
    Card.create(:frontSide => "recreateal",:backSide =>"обновление").save
    Card.create(:frontSide => "complete",:backSide =>"полный/законченый").save
    Card.create(:frontSide => "mondatory",:backSide =>"обязательный").save
    Card.create(:frontSide => "suspend",:backSide =>"приостановить").save
    Card.create(:frontSide => "fail",:backSide =>"потерпеть неудачу").save
    Card.create(:frontSide => "response",:backSide =>"ответ").save
    Card.create(:frontSide => "request",:backSide =>"запрос").save
    Card.create(:frontSide => "avoid",:backSide =>"избегать").save
    Card.create(:frontSide => "equipped",:backSide =>"оборудованный").save
    Card.create(:frontSide => "suggest",:backSide =>"предлогать").save
    Card.create(:frontSide => "violation",:backSide =>"нарушение").save
    Card.create(:frontSide => "destination",:backSide =>"пункт назначения").save
    Card.create(:frontSide => "reach",:backSide =>"достич").save
    Card.create(:frontSide => "additionaly",:backSide =>"дополнительно").save
    Card.create(:frontSide => "toll",:backSide =>"плата за проезд").save
    Card.create(:frontSide => "emergency flashes",:backSide =>"аварийные мигалки").save
    Card.create(:frontSide => "to speed up",:backSide =>"ускорять").save
    Card.create(:frontSide => "extra charge",:backSide =>"дополнительная плата").save
    Card.create(:frontSide => "fare",:backSide =>"тариф").save
    Card.create(:frontSide => "according",:backSide =>"в соответствии").save
    Card.create(:frontSide => "torn",:backSide =>"порванный").save
    Card.create(:frontSide => "unreadable",:backSide =>"нечитаемый").save
    Card.create(:frontSide => "immediately",:backSide =>"немедленно").save
    Card.create(:frontSide => "to involve",:backSide =>"вовлекать").save
    Card.create(:frontSide => "error",:backSide =>"ошибка").save
    Card.create(:frontSide => "duty",:backSide =>"на работе").save
    Card.create(:frontSide => "fashion omnibus",:backSide =>"Карета/повозка").save
    Card.create(:frontSide => "to negotiate",:backSide =>"договариваться").save
    Card.create(:frontSide => "entire",:backSide =>"весь/целый").save
    Card.create(:frontSide => "revoke",:backSide =>"онулировать/отзыавть").save
    Card.create(:frontSide => "deny",:backSide =>"отказывать").save
    Card.create(:frontSide => "statement",:backSide =>"утверждение/высказывание").save
    Card.create(:frontSide => "to implement",:backSide =>"реализовывать").save
    Card.create(:frontSide => "to relate",:backSide =>"относиться(к чему то)").save
    Card.create(:frontSide => "nearest",:backSide =>"ближайший").save
    Card.create(:frontSide => "intruduction",:backSide =>"введение").save
    Card.create(:frontSide => "to divide",:backSide =>"делить").save
    Card.create(:frontSide => "major",:backSide =>"основной").save
    Card.create(:frontSide => "responsible",:backSide =>"ответственный").save
    Card.create(:frontSide => "approximately",:backSide =>"приблезительно").save
    Card.create(:frontSide => "probation",:backSide =>"испытательный срок").save
    Card.create(:frontSide => "puddle",:backSide =>"лужа").save
    Card.create(:frontSide => "tailgated",:backSide =>"не держать дистанцию").save
    Card.create(:frontSide => "trip",:backSide =>"поездка").save
    Card.create(:frontSide => "rest",:backSide =>"отдых").save
    Card.create(:frontSide => "property",:backSide =>"имущество").save
    Card.create(:frontSide => "to find",:backSide =>"искать").save
    Card.create(:frontSide => "idling",:backSide =>"ожидание").save
    Card.create(:frontSide => "trunk",:backSide =>"багажник").save
    Card.create(:frontSide => "advice",:backSide =>"совет").save
    Card.create(:frontSide => "almost",:backSide =>"почти").save
    Card.create(:frontSide => "approach",:backSide =>"подход").save
    Card.create(:frontSide => "ahead",:backSide =>"впереди").save
    Card.create(:frontSide => "agree",:backSide =>"соглашаться").save
    Card.create(:frontSide => "collect",:backSide =>"собирать").save
    Card.create(:frontSide => "refuse",:backSide =>"отказать").save
    Card.create(:frontSide => "solicit",:backSide =>"выпрашивать").save
    Card.create(:frontSide => "make sure",:backSide =>"убедиться").save
    Card.create(:frontSide => "flat rate",:backSide =>"фиксированный тариф").save
    Card.create(:frontSide => "within",:backSide =>"в пределах").save
    Card.create(:frontSide => "to surrender",:backSide =>"сдаваться").save
    Card.create(:frontSide => "replacement",:backSide =>"замена").save
    Card.create(:frontSide => "disorderly",:backSide =>"беспорядочный").save
    Card.create(:frontSide => "to follow",:backSide =>"следовать").save
    Card.create(:frontSide => "during",:backSide =>"в течении (времени)").save
    Card.create(:frontSide => "available",:backSide =>"доступный/свободный").save
  end


end

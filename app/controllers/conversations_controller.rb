class ConversationsController < ApplicationController
  before_action :set_conversation, only: [:show, :update, :destroy]

  # GET /conversations
  def index
    @conversations = Conversation.all
    render json: @conversations
  end

  def show
    render json: @conversation
  end

  # POST /conversations
  def create
    # binding.pry
    @conversation = Conversation.new(conversation_params)
    if @conversation.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        ConversationSerializer.new(@conversation)
      ).serializable_hash
      ActionCable.server.broadcast 'conversations_channel', serialized_data
      head :ok
      # headers['"Access-Control-Allow-Credentials'] = true
      # render json: @conversation, status: :created, location: @conversation
    else
      render json: @conversation.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /conversations/1
  # def update
  #   if @conversation.update(conversation_params)
  #     render json: @conversation
  #   else
  #     render json: @conversation.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /conversations/1
  # def destroy
  #   @conversation.destroy
  # end

  private
    # # Use callbacks to share common setup or constraints between actions.
    # def set_conversation
    #   @conversation = Conversation.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    def conversation_params
      params.fetch(:conversation).permit(:name)
    end
end

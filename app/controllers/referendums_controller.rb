class ReferendumsController < ApplicationController
  def new
    @social_contract = Post.find(params[:social_contract_id])
    @referendum = @social_contract.comments.create(params[:referendem])
    redirect_to_social_contracts_path(@social_contract)
  end
end

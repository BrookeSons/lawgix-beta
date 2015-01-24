class FlowsController < ApplicationController

  respond_to :html

  def index
    @flows = Flow.all
    respond_with(@flows)
  end

  def show
    respond_with(@flow)
  end

  def new
    @flow = Deed.new
    respond_with(@flow)
  end

  def edit
  end

  def create
    @flow = Deed.new(flow_params)
    flash[:notice] = 'Flow was successfully created.' if @flow.save
    respond_with(@flow)
  end

  def update
    flash[:notice] = 'Flow was successfully updated.' if @flow.update(flow_params)
    respond_with(@flow)
  end

  def destroy
    @flow.destroy
    respond_with(@flow)
  end



  private

  def flow_params
    params.require(:flow).permit(:flow_type, :assignee, :received_at)
  end

end

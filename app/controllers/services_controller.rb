class ServicesController < ApplicationController



  def new
    @service = Service.new
    @service.lessees.build
    @service.parcels.build
    @service.documents.build
  end

  def show
    @service   = Service.find(params[:id])
    @documents = @service.documents
    # authorize @user
  end

  def index
    @services = Service.order(created_at: :desc).all.paginate(page: params[:page], per_page: 8)
  end

  def create
    @service = Service.new(service_params)
    @service.save
    redirect_to dashboards_path
  end


  def receive
    service = Service.find(params[:id])
    service.transition_to!(:fee_accepted)
    redirect_to new_service_dispatcher_path
  end

  def accept
    service = Service.find(params[:id])
    service.parcels.each do |parcel|
      title_abstract = TitleAbstract.new
      title_abstract.deeds << Deed.new
      parcel.title_abstract = title_abstract
    end
    service.transition_to!(:accepted_by_abstractor)
    redirect_to absdashes_path
  end

  def assign
    @service = Service.find(params[:service_id])
    @service.abstractors << Abstractor.find(params[:abstractor_id])
    service.transition_to!(:assigned)
    redirect_to dashboards_path
  end

  def update
    @service = Service.find(params[:id])
    if @service.update_attributes(service_params)
      redirect_to services_path, :notice => "Service Request updated."
    else
      redirect_to services_path, :alert => "Unable to update Service Request."
    end
  end

  private

  def service_params
    params.require(:service).permit!
    # (:lease_number,:state, :county, :description,
    #                                 :requested_delivery,
    #                                 lessees_attributes: [:last_name, :first_name,
    #                                 :address, :city, :state, :zip,
    #                                 :phone, :email, :company, :bus_phone, :id],
    #                                 flows_attributes: [:flow_type, :assignee, :requested_at],
    #                                 parcels_attributes: [:tax_map, :tax_parcel, :deed_id,:id])
  end

  def req_params
    params.require(:service_request).permit(:to_state)
  end

end


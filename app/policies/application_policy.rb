class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end



  def rails_admin?(action)
    case action
      when :dashboard
        true
        # user.ogx_admin
      when :index
        true
        # user.ogx_admin
      when :show
        true
        # user.ogx_admin
      when :new
        true
        # user.ogx_admin
      when :edit
        true
        # user.ogx_admin
      when :destroy
        true
        # user.ogx_admin
      when :export
        true
        # user.ogx_admin
      when :history
        true
        # user.ogx_admin
      when :show_in_app
        true
        # user.ogx_admin
      else
        raise ::Pundit::NotDefinedError, "unable to find policy #{action} for #{record}."
    end
  end






  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end


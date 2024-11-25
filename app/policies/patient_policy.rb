class PatientPolicy<ApplicationPolicy
    attr_reader :user, :patient
  
    def initialize(user, patient)
      @user = user
      @post = patient
    end
  
    def index?
      user.receptionist? || user.doctor?
    end

    def show?
      user.receptionist? || user.doctor?
    end

    def graph?
      user.doctor?
    end

    def edit?
      user.receptionist?
    end

    def create?
      user.receptionist?
    end

    def update?
      user.receptionist?
    end

    def new?
      user.receptionist?
    end

    def destroy?
      user.receptionist?
    end


  end
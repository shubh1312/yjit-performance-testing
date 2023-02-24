class ApplicationController < ActionController::Base
    def health
        return render json: {status: 'Application is running', yjit_enabled: RubyVM::YJIT.enabled?.to_s}, status: 200
    end
end

class PagosController < ApplicationController

  def index
		@pagos = Pago.all
  end

  def show
  end

  def new
		@pago = Pago.new
  end

  def edit
  end

  def create
		pars = pago_params
		@pago = Pago.new({
			:persona_id => pars[:persona_id],
			:valor => pars[:valor],
			:fecha => pars[:fecha],
			:confirmacion_url => pars[:confirmacion].original_filename
		})
		if @pago.save
			@pago.persona.saldo -= @pago.valor
			@pago.persona.save
			upload
			redirect_to pagos_path
		else
			render :action => "new"
		end
  end

  def update
  end

  def destroy
  end

	private
		def pago_params
			params.require(:pago).permit(:persona_id, :valor, :fecha, :confirmacion)
		end
		
		def upload
			uploaded_io = pago_params[:confirmacion]
			File.open(Rails.root.join("public", "confirmaciones", uploaded_io.original_filename), "wb") do |file|
				file.write(uploaded_io.read)
			end
		end
end

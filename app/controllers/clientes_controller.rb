class ClientesController < ApplicationController
    def index
        @cliente = Cliente.all
    end
    def new
        @cliente = Cliente.new
    end
    def create
        @cliente = Cliente.new(cliente_params)
        if @cliente.save
            redirect_to clientes_path
        else
            render :new
        end
    end
    def edit
        @cliente = Cliente.find(params[:id])
    end 
    def update
        @cliente = Cliente.find(params[:id])
        if @cliente.update(cliente_params)
            redirect_to clientes_path
        else
            render :edit
        end
    end
    def delete
        @cliente = Cliente.find(params[:id])
        @cliente.destroy
        redirect_to clientes_path
    end
    private
        def cliente_params
            params.require(:cliente).permit(:nombre, :direccion, :ntelefono)
        end
end


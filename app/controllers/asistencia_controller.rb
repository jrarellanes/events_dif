class AsistenciaController < ApplicationController
  # GET /asistencia
  # GET /asistencia.json
  def index
    @asistencia = Asistencium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asistencia }
    end
  end

  # GET /asistencia/1
  # GET /asistencia/1.json
  def show
    @asistencium = Asistencium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @asistencium }
    end
  end

  # GET /asistencia/new
  # GET /asistencia/new.json
  def new
    @asistencium = Asistencium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @asistencium }
    end
  end

  # GET /asistencia/1/edit
  def edit
    @asistencium = Asistencium.find(params[:id])
  end

  # POST /asistencia
  # POST /asistencia.json
  def create
    @asistencium = Asistencium.new(params[:asistencium])

    respond_to do |format|
      if @asistencium.save
        format.html { redirect_to @asistencium, notice: 'Asistencium was successfully created.' }
        format.json { render json: @asistencium, status: :created, location: @asistencium }
      else
        format.html { render action: "new" }
        format.json { render json: @asistencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asistencia/1
  # PUT /asistencia/1.json
  def update
    @asistencium = Asistencium.find(params[:id])

    respond_to do |format|
      if @asistencium.update_attributes(params[:asistencium])
        format.html { redirect_to @asistencium, notice: 'Asistencium was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @asistencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asistencia/1
  # DELETE /asistencia/1.json
  def destroy
    @asistencium = Asistencium.find(params[:id])
    @asistencium.destroy

    respond_to do |format|
      format.html { redirect_to asistencia_url }
      format.json { head :ok }
    end
  end
end

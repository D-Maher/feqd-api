class Admin::RulesController < Admin::AdminController

  before_action :set_rule, only: %i[show edit update destroy]

  # GET /rules
  def index
    @rules = Rule.all
  end

  # GET /rules/1
  def show; end

  # GET /rules/new
  def new
    @rule = Rule.new
  end

  # GET /rules/1/edit
  def edit; end

  # POST /rules
  def create
    @rule = Rule.new(rule_params)

    if @rule.save
      redirect_to admin_rule_path(@rule), notice: "Rule was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /rules/1
  def update
    if @rule.update(rule_params)
      redirect_to admin_rule_path(@rule), notice: "Rule was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /rules/1
  def destroy
    puts "@rule:"
    p @rule
    @rule.destroy
    redirect_to admin_rules_path, notice: "Rule was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_rule
    @rule = Rule.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def rule_params
    params.require(:rule).permit(:title, :body, :min_players)
  end

end

{"filter":false,"title":"sessions_controller.rb","tooltip":"/monolist/app/controllers/sessions_controller.rb","undoManager":{"mark":5,"position":5,"stack":[[{"start":{"row":8,"column":5},"end":{"row":9,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"insert","lines":["  "]},{"start":{"row":9,"column":2},"end":{"row":10,"column":0},"action":"insert","lines":["",""]},{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":10,"column":2},"end":{"row":22,"column":5},"action":"insert","lines":["private","","  def login(email, password)","    @user = User.find_by(email: email)","    if @user && @user.authenticate(password)","      # ログイン成功","      session[:user_id] = @user.id","      return true","    else","      # ログイン失敗","      return false","    end","  end"],"id":3}],[{"start":{"row":4,"column":12},"end":{"row":5,"column":0},"action":"insert","lines":["",""],"id":4},{"start":{"row":5,"column":0},"end":{"row":5,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":5,"column":4},"end":{"row":13,"column":7},"action":"insert","lines":["email = params[:session][:email].downcase","    password = params[:session][:password]","    if login(email, password)","      flash[:success] = 'ログインに成功しました。'","      redirect_to @user","    else","      flash.now[:danger] = 'ログインに失敗しました。'","      render 'new'","    end"],"id":5}],[{"start":{"row":16,"column":13},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":6},{"start":{"row":17,"column":0},"end":{"row":17,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":17,"column":4},"end":{"row":19,"column":24},"action":"insert","lines":["session[:user_id] = nil","    flash[:success] = 'ログアウトしました。'","    redirect_to root_url"],"id":7}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":19,"column":24},"end":{"row":19,"column":24},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1542862156034,"hash":"19de9f0ed66476a4672c8790c53ed6f07809b8fd"}
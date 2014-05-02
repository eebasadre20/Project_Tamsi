package projects_tamsi

class UserController {

    def index() { }

    def login = {
        if(params.username == "Edsil" && params.password == "12345" ) {
            flash.message = "Successfully Admin"
            session.user = "Edsil"
        } else {
            flash.message = "Incorrect Username/Password"
        }

        redirect(action: 'index')
    }

    def logout = {
        session.user = null
        flash.message = "You're successfully logout!"
        redirect(action: 'index')
    }
}
